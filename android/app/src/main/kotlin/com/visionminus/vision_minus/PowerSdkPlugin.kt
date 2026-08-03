package com.visionminus.vision_minus

import android.content.Context
import android.hardware.usb.UsbAccessory
import android.hardware.usb.UsbManager
import android.os.Handler
import android.os.Looper
import android.os.ParcelFileDescriptor
import android.util.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import com.powervision.natives.JniAp03Native
import com.powervision.natives.JniCameraNative
import com.powervision.natives.JniW4Native
import com.powervision.natives.model.WayPointParameter
import com.visionminus.vision_minus.connection.ConnectionRuntime
import com.visionminus.vision_minus.connection.ConnectionRuntimeImpl
import com.visionminus.vision_minus.connection.SdkInitializer
import com.visionminus.vision_minus.connection.SdkLifecycleController
import com.visionminus.vision_minus.connection.WifiConfidence
import com.visionminus.vision_minus.connection.WifiTransportController
import java.util.concurrent.Executors

class PowerSdkPlugin(
    private val lifecycleController: SdkInitializer = SdkLifecycleController,
    private var wifiController: WifiTransportController? = null,
    private val runtime: ConnectionRuntime = ConnectionRuntimeImpl,
) : FlutterPlugin, MethodChannel.MethodCallHandler {
    companion object {
        private const val TAG = "PowerSdkPlugin"
    }

    private lateinit var methodChannel: MethodChannel
    private lateinit var gpsChannel: EventChannel
    private lateinit var batteryChannel: EventChannel
    private lateinit var connectionChannel: EventChannel
    private lateinit var connectionStateChannel: EventChannel
    private lateinit var navigationChannel: EventChannel
    private lateinit var attitudeChannel: EventChannel
    private lateinit var phoneHeadingChannel: EventChannel
    private var context: Context? = null
    private var phoneHeadingSensorManager: PhoneHeadingSensorManager? = null
    private val connectionExecutor = Executors.newSingleThreadExecutor()
    private val mainHandler = Handler(Looper.getMainLooper())

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        context = binding.applicationContext

        if (wifiController == null) {
            wifiController = WifiTransportController(binding.applicationContext) { snapshot ->
                ConnectionRuntimeImpl.setCurrentTransport(snapshot.currentTransport)
                ConnectionRuntimeImpl.setCurrentPhase(snapshot.currentPhase)
            }
        }
        phoneHeadingSensorManager = PhoneHeadingSensorManager(binding.applicationContext)
        wifiController?.startMonitoring()

        methodChannel = MethodChannel(binding.binaryMessenger, "com.visionminus/sdk")
        methodChannel.setMethodCallHandler(this)

        gpsChannel = EventChannel(binding.binaryMessenger, "com.visionminus/gps")
        gpsChannel.setStreamHandler(object : EventChannel.StreamHandler {
            override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                PowerSdkEventHandler.gpsSink = events
            }
            override fun onCancel(arguments: Any?) {
                PowerSdkEventHandler.gpsSink = null
            }
        })

        batteryChannel = EventChannel(binding.binaryMessenger, "com.visionminus/battery")
        batteryChannel.setStreamHandler(object : EventChannel.StreamHandler {
            override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                PowerSdkEventHandler.batterySink = events
            }
            override fun onCancel(arguments: Any?) {
                PowerSdkEventHandler.batterySink = null
            }
        })

        connectionChannel = EventChannel(binding.binaryMessenger, "com.visionminus/connection")
        connectionChannel.setStreamHandler(object : EventChannel.StreamHandler {
            override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                PowerSdkEventHandler.connectionSink = events
            }
            override fun onCancel(arguments: Any?) {
                PowerSdkEventHandler.connectionSink = null
            }
        })

        connectionStateChannel = EventChannel(binding.binaryMessenger, ConnectionRuntimeImpl.CHANNEL_NAME)
        connectionStateChannel.setStreamHandler(ConnectionRuntimeImpl)

        navigationChannel = EventChannel(binding.binaryMessenger, "com.visionminus/navigation")
        navigationChannel.setStreamHandler(object : EventChannel.StreamHandler {
            override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                PowerSdkEventHandler.navigationSink = events
            }
            override fun onCancel(arguments: Any?) {
                PowerSdkEventHandler.navigationSink = null
            }
        })

        attitudeChannel = EventChannel(binding.binaryMessenger, "com.visionminus/attitude")
        attitudeChannel.setStreamHandler(object : EventChannel.StreamHandler {
            override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                PowerSdkEventHandler.attitudeSink = events
            }
            override fun onCancel(arguments: Any?) {
                PowerSdkEventHandler.attitudeSink = null
            }
        })

        phoneHeadingChannel = EventChannel(binding.binaryMessenger, "com.visionminus/phone_heading")
        phoneHeadingChannel.setStreamHandler(object : EventChannel.StreamHandler {
            override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                PowerSdkEventHandler.phoneHeadingSink = events
                phoneHeadingSensorManager?.start()
            }

            override fun onCancel(arguments: Any?) {
                phoneHeadingSensorManager?.stop()
                PowerSdkEventHandler.phoneHeadingSink = null
            }
        })

        // Initialize USB connection manager
        UsbConnectionManager.init(binding.applicationContext)
        DeviceLogRecorder.init(binding.applicationContext)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        methodChannel.setMethodCallHandler(null)
        wifiController?.stopMonitoring()
        phoneHeadingSensorManager?.stop()
        phoneHeadingSensorManager = null
        PowerSdkEventHandler.gpsSink = null
        PowerSdkEventHandler.batterySink = null
        PowerSdkEventHandler.connectionSink = null
        PowerSdkEventHandler.navigationSink = null
        PowerSdkEventHandler.attitudeSink = null
        PowerSdkEventHandler.phoneHeadingSink = null
        context?.let { UsbConnectionManager.cleanup(it) }
        context = null
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            // --- Connection ---
            "connectWifi" -> {
                connectionExecutor.execute {
                    val returnCode = lifecycleController.initWifi()
                    val response = mapOf(
                        "success" to (returnCode == 0),
                        "returnCode" to returnCode,
                        "sdkType" to lifecycleController.getCurrentType(),
                    )
                    mainHandler.post { result.success(response) }
                }
            }
            "connectUsb" -> {
                connectionExecutor.execute {
                    val returnCode = initUsbViaLifecycle()
                    val response = mapOf(
                        "success" to (returnCode == 0),
                        "returnCode" to returnCode,
                        "sdkType" to lifecycleController.getCurrentType(),
                    )
                    mainHandler.post { result.success(response) }
                }
            }
            "disconnect" -> {
                connectionExecutor.execute {
                    val returnCode = lifecycleController.uninit()
                    val response = mapOf(
                        "success" to (returnCode == 0),
                        "returnCode" to returnCode,
                        "sdkType" to lifecycleController.getCurrentType(),
                    )
                    mainHandler.post { result.success(response) }
                }
            }
            "getConnectionStatus" -> {
                result.success(
                    mapOf(
                        "transport" to runtime.currentTransport.name,
                        "phase" to runtime.currentPhase.name,
                        "sessionGeneration" to runtime.sessionGeneration,
                        "isTransitionInProgress" to runtime.isTransitionInProgress,
                    ),
                )
            }
            "getAvailableTransports" -> {
                connectionExecutor.execute {
                    val transports = mutableListOf<String>()
                    if (wifiController?.getConfidence() != WifiConfidence.NONE) {
                        transports.add("WIFI")
                    }

                    val usbManager = context?.getSystemService(Context.USB_SERVICE) as? UsbManager
                    val accessory = usbManager?.accessoryList?.firstOrNull()
                    if (accessory != null && usbManager.hasPermission(accessory)) {
                        transports.add("USB")
                    }
                    mainHandler.post { result.success(transports) }
                }
            }
            "getWifiConfidence" -> {
                connectionExecutor.execute {
                    val confidence = (wifiController?.getConfidence() ?: WifiConfidence.NONE).name
                    mainHandler.post { result.success(confidence) }
                }
            }

            // --- Arm/Disarm ---
            "setArmStatus" -> {
                val status = call.argument<Int>("status") ?: 0
                val registerResult = JniW4Native.registerW4Callbacks()
                Log.i(
                    TAG,
                    "setArmStatus status=$status registerW4Callbacks=$registerResult",
                )
                result.success(JniW4Native.setArmStatus(status))
            }
            "resyncRuntimeState" -> {
                val reason = call.argument<String>("reason") ?: "unknown"
                val registerResult = JniW4Native.registerW4Callbacks()
                val replayed = PowerSdkEventHandler.replayLastRuntimeState(reason)
                Log.i(
                    TAG,
                    "resyncRuntimeState reason=$reason registerW4Callbacks=$registerResult replayed=$replayed",
                )
                result.success(
                    mapOf(
                        "registerResult" to registerResult,
                        "replayed" to replayed,
                    ),
                )
            }
            "resyncMissionState" -> {
                val reason = call.argument<String>("reason") ?: "unknown"
                val registerResult = JniW4Native.registerW4Callbacks()
                val replayed = PowerSdkEventHandler.replayLastMissionState(reason)
                Log.i(
                    TAG,
                    "resyncMissionState reason=$reason registerW4Callbacks=$registerResult replayed=$replayed",
                )
                result.success(
                    mapOf(
                        "registerResult" to registerResult,
                        "replayed" to replayed,
                    ),
                )
            }

            "cameraConnect" -> result.success(JniCameraNative.commandConnect())
            "cameraDisconnect" -> result.success(JniCameraNative.commandDisConnect())
            "takePhoto" -> result.success(JniCameraNative.startPhoto())
            "startRecord" -> result.success(JniCameraNative.startRecord())
            "stopRecord" -> result.success(JniCameraNative.stopRecord())
            "switchToPhotoMode" -> result.success(JniCameraNative.switchToSnapMode())
            "switchToVideoMode" -> result.success(JniCameraNative.switchToRecordMode())

            "getStorageInfo" -> {
                result.success(
                    mapOf(
                        "sdSize" to JniCameraNative.getSDStorageSize(),
                        "emmcSize" to JniCameraNative.getEmmcStorageSize(),
                        "storageType" to JniCameraNative.getStorageDeviceType(),
                        "restPhotos" to JniCameraNative.getRestPhotoNumber(),
                        "restRecordTime" to JniCameraNative.getRestRecordTime(),
                        "recordTime" to JniCameraNative.getRecordTime(),
                    ),
                )
            }
            "setStorageDevice" -> {
                val type = call.argument<Int>("type") ?: 0
                result.success(JniCameraNative.setCurrentStorageDevice(type))
            }

            "getCameraSettings" -> {
                result.success(
                    mapOf(
                        "photoFormat" to JniCameraNative.getPhotoFileFormat(),
                        "photoStyle" to JniCameraNative.getPhotoStyle(),
                        "lapseFileDuration" to JniCameraNative.getLapseFileDuration(),
                        "lapseSnap" to JniCameraNative.getLapseSnap(),
                    ),
                )
            }
            "setPhotoResolution" -> {
                val resolution = call.argument<Int>("resolution") ?: 0
                result.success(JniCameraNative.setPhotoResolution(resolution))
            }
            "setPhotoFormat" -> {
                val format = call.argument<Int>("format") ?: 0
                result.success(JniCameraNative.setPhotoFileFormat(format))
            }

            // --- Sail Mode ---
            "setSailMode" -> {
                val mode = call.argument<Int>("mode") ?: 0
                result.success(JniW4Native.setSailMode(mode))
            }

            // --- Speed Mode ---
            "setSpeedMode" -> {
                val mode = call.argument<Int>("mode") ?: 0
                result.success(JniW4Native.setSpeedMode(mode))
            }

            // --- Joystick ---
            "controlRocker" -> {
                val inputX = call.argument<Int>("x") ?: 0
                val inputR = call.argument<Int>("r") ?: 0
                val rocker = JniW4Native.buildParityRocker(inputX, inputR)
                if (rocker.x != 0 || rocker.r != 0) {
                    DeviceLogRecorder.log("ROCKER", "x=${rocker.x} r=${rocker.r}")
                }
                result.success(JniW4Native.controlRocker(rocker))
            }

            // --- Waypoint Mission ---
            "uploadWaypoints" -> {
                val waypointsList = call.argument<List<Map<String, Any>>>("waypoints") ?: emptyList()
                val waypoints = waypointsList.mapIndexed { index, wp ->
                    WayPointParameter().apply {
                        x = (wp["lat"] as? Double)?.toFloat() ?: 0f
                        y = (wp["lon"] as? Double)?.toFloat() ?: 0f
                        z = 0f
                        speed = (wp["thrust"] as? Double)?.toFloat() ?: 10f
                        stayTime = (wp["stayTime"] as? Double)?.toFloat() ?: 0f
                        recvRadius = (wp["recvRadius"] as? Double)?.toFloat() ?: 5f
                        direction = (wp["direction"] as? Double)?.toFloat() ?: 0f
                        seq = index
                    }
                }.toTypedArray()
                result.success(JniW4Native.uploadWaypoint(waypoints))
            }
            "downloadWaypoints" -> {
                result.success(JniW4Native.downloadWaypoint())
            }

            // --- Return to Home ---
            "rtl" -> {
                result.success(JniAp03Native.rtl())
            }
            "setReturnPoint" -> {
                val type = call.argument<Int>("type") ?: 1
                val lat = (call.argument<Double>("lat") ?: 0.0).toFloat()
                val lon = (call.argument<Double>("lon") ?: 0.0).toFloat()
                val alt = (call.argument<Double>("alt") ?: 0.0).toFloat()
                result.success(JniAp03Native.setReturnPoint(type, lat, lon, alt))
            }
            "setUserLocation" -> {
                val lat = call.argument<Int>("lat") ?: 0
                val lon = call.argument<Int>("lon") ?: 0
                result.success(JniAp03Native.setUserLocation(lat, lon))
            }
            "getHomePoint" -> {
                result.success(JniAp03Native.getHomePoint())
            }
            "getRemainingRtlTime" -> {
                result.success(JniAp03Native.getRemainingRtlTime())
            }

            // --- Light Control ---
            "controlLight" -> {
                val mode = call.argument<Int>("mode") ?: 0
                result.success(JniW4Native.controlLight(mode))
            }

            // --- Gimbal ---
            "setGimbalPitch" -> {
                val pitch = (call.argument<Int>("pitch") ?: 0).toShort()
                JniW4Native.setGimbalPitch(pitch)
                result.success(true)
            }

            // --- Calibration ---
            "startMagCalibration" -> {
                result.success(JniW4Native.startMagCalibration())
            }
            "cancelMagCalibration" -> {
                result.success(JniW4Native.cancelMagCalibration())
            }

            // --- Parameters ---
            "uploadParameter" -> {
                val name = call.argument<String>("name") ?: ""
                val value = (call.argument<Double>("value") ?: 0.0).toFloat()
                result.success(JniW4Native.uploadParameter(name, value))
            }
            "downloadParameter" -> {
                val name = call.argument<String>("name") ?: ""
                result.success(JniW4Native.downloadParameter(name))
            }

            // --- Low Power ---
            "nowLowPowerReturn" -> {
                result.success(JniAp03Native.nowLowPowerReturn())
            }
            "refuseLowPowerReturn" -> {
                result.success(JniAp03Native.refuseLowPowerReturn())
            }

            // --- Nest Opener ---
            "setNestOpenerStatus" -> {
                val status = call.argument<Int>("status") ?: 0
                result.success(JniW4Native.setNestOpenerStatus(status))
            }

            // --- Device Log Recorder ---
            "startLogRecording" -> result.success(DeviceLogRecorder.start())
            "stopLogRecording" -> result.success(DeviceLogRecorder.stop())
            "isLogRecording" -> result.success(DeviceLogRecorder.isRecording())
            "getLogPath" -> result.success(DeviceLogRecorder.getLogPath())
            "listLogFiles" -> result.success(DeviceLogRecorder.listLogs())
            "readLogFile" -> {
                val path = call.argument<String>("path") ?: ""
                result.success(DeviceLogRecorder.readLog(path))
            }

            else -> result.notImplemented()
        }
    }

    private fun initUsbViaLifecycle(): Int {
        val managerFd = getFdFromUsbConnectionManager()
        if (managerFd >= 0) {
            return lifecycleController.initAoa(managerFd)
        }

        val appContext = context ?: return -1
        val usbManager = appContext.getSystemService(Context.USB_SERVICE) as? UsbManager ?: return -1
        val accessory: UsbAccessory = usbManager.accessoryList?.firstOrNull() ?: return -1
        if (!usbManager.hasPermission(accessory)) return -1

        var pfd: ParcelFileDescriptor? = null
        return try {
            pfd = usbManager.openAccessory(accessory) ?: return -1
            val fd = extractFdInt(pfd.fileDescriptor)
            if (fd < 0) {
                -1
            } else {
                lifecycleController.initAoa(fd)
            }
        } catch (_: Throwable) {
            -1
        } finally {
            runCatching { pfd?.close() }
        }
    }

    private fun getFdFromUsbConnectionManager(): Int {
        return try {
            val field = UsbConnectionManager::class.java.getDeclaredField("fileDescriptor")
            field.isAccessible = true
            val pfd = field.get(UsbConnectionManager) as? ParcelFileDescriptor ?: return -1
            extractFdInt(pfd.fileDescriptor)
        } catch (_: Throwable) {
            -1
        }
    }

    private fun extractFdInt(fd: java.io.FileDescriptor): Int {
        return try {
            val field = fd.javaClass.getDeclaredField("descriptor")
            field.isAccessible = true
            field.getInt(fd)
        } catch (_: Throwable) {
            -1
        }
    }
}
