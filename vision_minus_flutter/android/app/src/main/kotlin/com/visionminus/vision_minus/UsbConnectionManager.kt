package com.visionminus.vision_minus

import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.hardware.usb.UsbAccessory
import android.hardware.usb.UsbManager
import android.os.Build
import android.os.ParcelFileDescriptor
import android.util.Log
import com.powervision.natives.JniAOAChannelNative
import com.powervision.natives.JniAp03Native
import com.powervision.natives.JniCommonNative
import com.powervision.natives.JniW4Native
import java.io.FileInputStream
import java.io.FileOutputStream
import java.util.concurrent.locks.ReentrantLock

/**
 * Manages USB AOA connection lifecycle to the PowerVision water drone.
 * Handles permission requests, accessory opening, file descriptor setup,
 * SDK initialization, communication threads, and ping keepalive.
 */
object UsbConnectionManager {
    private const val TAG = "UsbConnectionManager"
    private const val ACTION_USB_PERMISSION = "com.android.example.USB_PERMISSION"
    private const val PING_INTERVAL_MS = 400L
    private const val CHANNEL_BODY = 0

    // USB state
    private var usbManager: UsbManager? = null
    private var permissionIntent: PendingIntent? = null
    private var fileDescriptor: ParcelFileDescriptor? = null
    private var inputStream: FileInputStream? = null
    private var outputStream: FileOutputStream? = null

    // Locks matching original app
    private val fdLock = ReentrantLock()
    private val inLock = ReentrantLock()
    private val outLock = ReentrantLock()

    // Threads
    private var readThread: Thread? = null
    private var pingThread: Thread? = null
    private var isConnected = false
    private var deviceType = 0 // 1=W4+W49342, 2=W4 only, 3=DV03

    // Status callback to Flutter
    var onConnectionStateChanged: ((String, Map<String, Any>) -> Unit)? = null

    fun init(context: Context) {
        usbManager = context.getSystemService(Context.USB_SERVICE) as UsbManager

        val flags = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S)
            PendingIntent.FLAG_MUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        else PendingIntent.FLAG_UPDATE_CURRENT

        permissionIntent = PendingIntent.getBroadcast(context, 0, Intent(ACTION_USB_PERMISSION), flags)

        val filter = IntentFilter().apply {
            addAction(ACTION_USB_PERMISSION)
            addAction(UsbManager.ACTION_USB_ACCESSORY_ATTACHED)
            addAction(UsbManager.ACTION_USB_ACCESSORY_DETACHED)
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            context.registerReceiver(usbReceiver, filter, Context.RECEIVER_NOT_EXPORTED)
        } else {
            context.registerReceiver(usbReceiver, filter)
        }

        Log.i(TAG, "USB Connection Manager initialized")
    }

    fun checkAndConnect(context: Context): Boolean {
        val accessories = usbManager?.accessoryList
        if (accessories.isNullOrEmpty()) {
            Log.w(TAG, "No USB accessories found")
            notifyState("no_device", emptyMap())
            return false
        }

        val accessory = accessories[0]
        if (usbManager?.hasPermission(accessory) == true) {
            return openAccessory(accessory)
        } else {
            usbManager?.requestPermission(accessory, permissionIntent)
            notifyState("requesting_permission", emptyMap())
            return false
        }
    }

    private fun openAccessory(accessory: UsbAccessory): Boolean {
        return try {
            fdLock.lock()
            val pfd = usbManager?.openAccessory(accessory) ?: run {
                Log.e(TAG, "Failed to open accessory")
                notifyState("open_failed", emptyMap())
                return false
            }

            fileDescriptor = pfd
            inputStream = FileInputStream(pfd.fileDescriptor)
            outputStream = FileOutputStream(pfd.fileDescriptor)

            // Detect device type from serial
            val serial = accessory.serial ?: ""
            deviceType = when {
                serial.contains("4") -> 2
                serial == "DV03" -> 3
                else -> 1
            }

            Log.i(TAG, "Accessory opened: serial=$serial, deviceType=$deviceType")
            fdLock.unlock()

            initializeSdk()
            true
        } catch (e: Exception) {
            Log.e(TAG, "Error opening accessory", e)
            if (fdLock.isHeldByCurrentThread) fdLock.unlock()
            notifyState("error", mapOf("message" to (e.message ?: "Unknown error")))
            false
        }
    }

    private fun initializeSdk() {
        Thread {
            try {
                // Step 1: Init SDK with AOA mode
                val initResult = JniCommonNative.initSDKAOA()
                Log.i(TAG, "initSDKAOA result: $initResult")

                // Step 2: Register callbacks
                JniW4Native.registerW4Callbacks()
                JniAp03Native.registerAp03Callbacks()

                // Step 3: Notify AOA channel connected with file descriptor
                val fd = fileDescriptor?.fileDescriptor?.let { getFdInt(it) } ?: -1
                if (fd >= 0) {
                    JniAOAChannelNative.onConnect(CHANNEL_BODY, fd)
                }

                // Step 4: Connect device and link
                val connectDeviceResult = JniW4Native.connectDevice()
                Log.i(TAG, "W4 connectDevice result: $connectDeviceResult")

                val connectLinkResult = JniW4Native.connectLink()
                Log.i(TAG, "W4 connectLink result: $connectLinkResult")

                // Step 5: Start read thread
                startReadThread()

                // Step 6: Start ping keepalive
                startPingThread()

                isConnected = true
                notifyState("connected", mapOf("device_type" to deviceType))
            } catch (e: Exception) {
                Log.e(TAG, "SDK initialization failed", e)
                notifyState("error", mapOf("message" to (e.message ?: "SDK init failed")))
            }
        }.start()
    }

    private fun startReadThread() {
        readThread = Thread {
            val buffer = ByteArray(16384)
            try {
                while (!Thread.interrupted()) {
                    inLock.lock()
                    val stream = inputStream
                    inLock.unlock()
                    if (stream == null) break

                    val bytesRead = stream.read(buffer)
                    if (bytesRead > 0) {
                        val data = buffer.copyOf(bytesRead)
                        JniAOAChannelNative.onRead(CHANNEL_BODY, data)
                    } else if (bytesRead < 0) {
                        break
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Read thread error", e)
            }
            Log.i(TAG, "Read thread exiting")
            if (isConnected) {
                isConnected = false
                notifyState("disconnected", mapOf("reason" to "read_error"))
            }
        }.apply {
            name = "PowerSDK-ReadThread"
            isDaemon = true
            start()
        }
    }

    private fun startPingThread() {
        pingThread = Thread {
            try {
                while (!Thread.interrupted()) {
                    Thread.sleep(PING_INTERVAL_MS)
                    // The SDK handles ping internally once initialized
                }
            } catch (_: InterruptedException) {
                // Expected on disconnect
            }
        }.apply {
            name = "PowerSDK-PingThread"
            isDaemon = true
            start()
        }
    }

    fun disconnect() {
        isConnected = false
        readThread?.interrupt()
        pingThread?.interrupt()

        try {
            JniW4Native.disConnectLink()
            JniW4Native.disconnectDevice()
            JniCommonNative.unInitSDK()
        } catch (e: Exception) {
            Log.e(TAG, "Error during SDK disconnect", e)
        }

        fdLock.lock()
        try {
            inputStream?.close()
            outputStream?.close()
            fileDescriptor?.close()
            inputStream = null
            outputStream = null
            fileDescriptor = null
        } catch (e: Exception) {
            Log.e(TAG, "Error closing streams", e)
        } finally {
            fdLock.unlock()
        }

        notifyState("disconnected", mapOf("reason" to "user"))
        Log.i(TAG, "Disconnected")
    }

    // Called by JniAOAChannelNative.sendBuf — writes data to USB output
    fun sendData(channelId: Int, buffer: ByteArray, length: Int): Int {
        return try {
            outLock.lock()
            outputStream?.write(buffer, 0, length)
            outputStream?.flush()
            outLock.unlock()
            length
        } catch (e: Exception) {
            if (outLock.isHeldByCurrentThread) outLock.unlock()
            Log.e(TAG, "sendData error", e)
            -1
        }
    }

    fun onAOAChannelConnected(channelId: Int) {
        Log.i(TAG, "AOA channel $channelId connected")
    }

    fun onAOAChannelDisconnected(channelId: Int) {
        Log.i(TAG, "AOA channel $channelId disconnected")
    }

    fun isDeviceConnected(): Boolean = isConnected

    private fun notifyState(state: String, data: Map<String, Any>) {
        val event = mutableMapOf<String, Any>("state" to state)
        event.putAll(data)
        onConnectionStateChanged?.invoke(state, event)

        // Also push to Flutter EventChannel
        PowerSdkEventHandler.sendEvent(
            PowerSdkEventHandler.connectionSink,
            mapOf("type" to "usb_state", "state" to state) + data
        )
    }

    // Helper to get int fd from java.io.FileDescriptor
    private fun getFdInt(fd: java.io.FileDescriptor): Int {
        return try {
            val field = fd.javaClass.getDeclaredField("descriptor")
            field.isAccessible = true
            field.getInt(fd)
        } catch (e: Exception) {
            Log.e(TAG, "Could not get fd int", e)
            -1
        }
    }

    // USB Broadcast Receiver
    private val usbReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context, intent: Intent) {
            when (intent.action) {
                ACTION_USB_PERMISSION -> {
                    val granted = intent.getBooleanExtra(UsbManager.EXTRA_PERMISSION_GRANTED, false)
                    if (granted) {
                        val accessory = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                            intent.getParcelableExtra(UsbManager.EXTRA_ACCESSORY, UsbAccessory::class.java)
                        } else {
                            @Suppress("DEPRECATION")
                            intent.getParcelableExtra(UsbManager.EXTRA_ACCESSORY)
                        }
                        accessory?.let { openAccessory(it) }
                    } else {
                        notifyState("permission_denied", emptyMap())
                    }
                }
                UsbManager.ACTION_USB_ACCESSORY_ATTACHED -> {
                    checkAndConnect(context)
                }
                UsbManager.ACTION_USB_ACCESSORY_DETACHED -> {
                    disconnect()
                }
            }
        }
    }

    fun cleanup(context: Context) {
        try {
            context.unregisterReceiver(usbReceiver)
        } catch (_: Exception) {}
        disconnect()
    }
}
