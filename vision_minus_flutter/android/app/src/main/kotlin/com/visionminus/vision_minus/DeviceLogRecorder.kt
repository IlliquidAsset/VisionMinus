package com.visionminus.vision_minus

import android.content.Context
import android.util.Log
import java.io.File
import java.io.FileWriter
import java.io.PrintWriter
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.concurrent.ConcurrentLinkedQueue
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicBoolean

object DeviceLogRecorder {
    private const val TAG = "DeviceLogRecorder"
    private const val MAX_BUFFER = 50_000

    private val recording = AtomicBoolean(false)
    private val buffer = ConcurrentLinkedQueue<String>()
    private val executor = Executors.newSingleThreadExecutor { Thread(it, "LogRecorder").apply { isDaemon = true } }
    private val tsFormat = ThreadLocal.withInitial {
        SimpleDateFormat("HH:mm:ss.SSS", Locale.US)
    }

    private var logDir: File? = null
    private var currentFile: File? = null

    fun init(context: Context) {
        logDir = File(context.getExternalFilesDir(null), "runtime_logs")
        logDir?.mkdirs()
    }

    fun start(): String {
        val dir = logDir ?: return "error: not initialized"
        val filename = "session_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())}.log"
        currentFile = File(dir, filename)
        buffer.clear()
        recording.set(true)
        log("SESSION", "Recording started")
        Log.i(TAG, "Recording to ${currentFile?.absolutePath}")
        return currentFile?.absolutePath ?: "error"
    }

    fun stop(): String {
        log("SESSION", "Recording stopped")
        recording.set(false)
        flush(blocking = true)
        val path = currentFile?.absolutePath ?: "no file"
        Log.i(TAG, "Recording stopped: $path (${buffer.size} buffered)")
        return path
    }

    fun isRecording(): Boolean = recording.get()

    fun log(domain: String, message: String) {
        if (!recording.get()) return
        val ts = tsFormat.get().format(Date())
        val entry = "$ts [$domain] $message"
        buffer.add(entry)
        if (buffer.size > MAX_BUFFER) buffer.poll()
        if (buffer.size % 200 == 0) flush()
    }

    fun flush(blocking: Boolean = false) {
        val file = currentFile ?: return
        val task = executor.submit {
            try {
                PrintWriter(FileWriter(file, true)).use { writer ->
                    var line = buffer.poll()
                    while (line != null) {
                        writer.println(line)
                        line = buffer.poll()
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Flush failed", e)
            }
        }
        if (blocking) {
            try {
                task.get()
            } catch (e: Exception) {
                Log.e(TAG, "Blocking flush failed", e)
            }
        }
    }

    fun getLogPath(): String = currentFile?.absolutePath ?: ""

    fun listLogs(): List<String> {
        val dir = logDir ?: return emptyList()
        return dir.listFiles()?.map { it.absolutePath }?.sorted()?.reversed() ?: emptyList()
    }

    fun readLog(path: String): String {
        val dir = logDir ?: return "error: not initialized"
        return try {
            val requested = File(path).canonicalFile
            val root = dir.canonicalFile
            val insideRoot = requested.path == root.path ||
                requested.path.startsWith(root.path + File.separator)
            if (!insideRoot) {
                return "error: log path outside runtime_logs"
            }
            if (!requested.exists() || !requested.isFile) {
                return "error: log file not found"
            }
            val content = requested.readText()
            if (content.length <= 200_000) {
                content
            } else {
                "[truncated to last 200000 chars]\n" + content.takeLast(200_000)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Read log failed", e)
            "error: ${e.message ?: "unknown"}"
        }
    }
}
