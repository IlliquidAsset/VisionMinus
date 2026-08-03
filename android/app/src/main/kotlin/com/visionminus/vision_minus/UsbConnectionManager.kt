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
import java.io.FileInputStream
import java.io.FileOutputStream
import java.util.concurrent.locks.ReentrantLock

object UsbConnectionManager {
    private const val TAG = "UsbConnectionManager"
    private const val ACTION_USB_PERMISSION = "com.android.example.USB_PERMISSION"
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
    private var isConnected = false

    fun init(context: Context) {
        usbManager = context.getSystemService(Context.USB_SERVICE) as UsbManager

        val usbPermissionIntent = Intent(ACTION_USB_PERMISSION).apply {
            setPackage(context.packageName)
        }
        val flags = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S)
            PendingIntent.FLAG_MUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        else PendingIntent.FLAG_UPDATE_CURRENT

        permissionIntent = PendingIntent.getBroadcast(context, 0, usbPermissionIntent, flags)

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
            return false
        }

        val accessory = accessories[0]
        if (usbManager?.hasPermission(accessory) == true) {
            return openAccessory(accessory)
        } else {
            usbManager?.requestPermission(accessory, permissionIntent)
            return false
        }
    }

    private fun openAccessory(accessory: UsbAccessory): Boolean {
        fdLock.lock()
        return try {
            val pfd = usbManager?.openAccessory(accessory) ?: run {
                Log.e(TAG, "Failed to open accessory")
                return false
            }

            fileDescriptor = pfd
            inputStream = FileInputStream(pfd.fileDescriptor)
            outputStream = FileOutputStream(pfd.fileDescriptor)

            Log.i(TAG, "Accessory opened: serial=${accessory.serial ?: ""}")
            startReadThread()
            isConnected = true
            true
        } catch (e: Exception) {
            Log.e(TAG, "Error opening accessory", e)
            closeUsbResourcesLocked()
            isConnected = false
            false
        } finally {
            fdLock.unlock()
        }
    }

    private fun startReadThread() {
        readThread = Thread {
            val buffer = ByteArray(16384)
            try {
                while (!Thread.interrupted()) {
                    val stream = withInLock { inputStream }
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
            isConnected = false
        }.apply {
            name = "PowerSDK-ReadThread"
            isDaemon = true
            start()
        }
    }

    fun disconnect() {
        isConnected = false
        readThread?.interrupt()

        fdLock.lock()
        try {
            closeUsbResourcesLocked()
        } catch (e: Exception) {
            Log.e(TAG, "Error closing streams", e)
        } finally {
            fdLock.unlock()
        }

        Log.i(TAG, "Disconnected")
    }

    // Called by JniAOAChannelNative.sendBuf — writes data to USB output
    fun sendData(channelId: Int, buffer: ByteArray, length: Int): Int {
        @Suppress("UNUSED_VARIABLE")
        val ignoredChannelId = channelId
        if (length <= 0) return 0
        val payload = if (length == buffer.size) buffer else buffer.copyOf(length)
        return if (sendData(payload)) length else -1
    }

    fun sendData(data: ByteArray): Boolean {
        outLock.lock()
        return try {
            val stream = outputStream
            if (stream == null) {
                Log.w(TAG, "sendData: outputStream is null")
                false
            } else {
                stream.write(data)
                stream.flush()
                true
            }
        } catch (e: Exception) {
            Log.e(TAG, "sendData failed", e)
            false
        } finally {
            outLock.unlock()
        }
    }

    fun onAOAChannelConnected(channelId: Int) {
        Log.i(TAG, "AOA channel $channelId connected")
    }

    fun onAOAChannelDisconnected(channelId: Int) {
        Log.i(TAG, "AOA channel $channelId disconnected")
    }

    fun isDeviceConnected(): Boolean = isConnected

    private inline fun <T> withInLock(block: () -> T): T {
        inLock.lock()
        return try {
            block()
        } finally {
            inLock.unlock()
        }
    }

    private fun closeUsbResourcesLocked() {
        runCatching { inputStream?.close() }
        runCatching { outputStream?.close() }
        runCatching { fileDescriptor?.close() }
        inputStream = null
        outputStream = null
        fileDescriptor = null
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
                        Log.w(TAG, "USB permission denied")
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
