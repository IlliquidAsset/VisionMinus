package com.visionminus.vision_minus

import android.content.Context
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import com.powervision.natives.JniAp03Native
import com.powervision.natives.JniW4Native
import com.powervision.natives.model.Rocker
import com.powervision.natives.model.WayPointParameter

class PowerSdkPlugin : FlutterPlugin, MethodChannel.MethodCallHandler {
    private lateinit var methodChannel: MethodChannel
    private lateinit var gpsChannel: EventChannel
    private lateinit var batteryChannel: EventChannel
    private lateinit var connectionChannel: EventChannel
    private lateinit var navigationChannel: EventChannel
    private lateinit var attitudeChannel: EventChannel
    private var context: Context? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        context = binding.applicationContext

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

        // Initialize USB connection manager
        UsbConnectionManager.init(binding.applicationContext)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        methodChannel.setMethodCallHandler(null)
        context?.let { UsbConnectionManager.cleanup(it) }
        context = null
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            // --- Connection ---
            "connect" -> {
                val connected = context?.let { UsbConnectionManager.checkAndConnect(it) } ?: false
                result.success(connected)
            }
            "disconnect" -> {
                UsbConnectionManager.disconnect()
                result.success(true)
            }
            "isConnected" -> {
                result.success(UsbConnectionManager.isDeviceConnected())
            }

            // --- Arm/Disarm ---
            "setArmStatus" -> {
                val status = call.argument<Int>("status") ?: 0
                result.success(JniW4Native.setArmStatus(status))
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
                val rocker = Rocker().apply {
                    x = call.argument<Int>("x") ?: 0
                    y = call.argument<Int>("y") ?: 0
                    r = call.argument<Int>("r") ?: 0
                    z = call.argument<Int>("z") ?: 0
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

            else -> result.notImplemented()
        }
    }
}
