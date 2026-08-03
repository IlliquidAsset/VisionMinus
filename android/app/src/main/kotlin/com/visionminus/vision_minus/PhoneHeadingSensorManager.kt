package com.visionminus.vision_minus

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.view.Surface
import android.view.WindowManager

class PhoneHeadingSensorManager(context: Context) {
    private val appContext = context.applicationContext
    private val sensorManager: SensorManager? =
        appContext.getSystemService(Context.SENSOR_SERVICE) as? SensorManager
    private val windowManager: WindowManager? =
        appContext.getSystemService(Context.WINDOW_SERVICE) as? WindowManager
    private val headingSensor: Sensor? =
        sensorManager?.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR)
            ?: sensorManager?.getDefaultSensor(Sensor.TYPE_GEOMAGNETIC_ROTATION_VECTOR)
    private val rotationMatrix = FloatArray(9)
    private val remappedRotationMatrix = FloatArray(9)
    private val orientation = FloatArray(3)
    private var registered = false

    private val sensorListener = object : SensorEventListener {
        override fun onSensorChanged(event: SensorEvent) {
            val type = event.sensor.type
            if (type != Sensor.TYPE_ROTATION_VECTOR && type != Sensor.TYPE_GEOMAGNETIC_ROTATION_VECTOR) {
                return
            }
            SensorManager.getRotationMatrixFromVector(rotationMatrix, event.values)
            val displayRotation = currentDisplayRotation()
            val remapped = SensorManager.remapCoordinateSystem(
                rotationMatrix,
                axisXForRotation(displayRotation),
                axisYForRotation(displayRotation),
                remappedRotationMatrix,
            )
            SensorManager.getOrientation(if (remapped) remappedRotationMatrix else rotationMatrix, orientation)
            var headingDeg = Math.toDegrees(orientation[0].toDouble()).toFloat()
            if (headingDeg < 0f) {
                headingDeg += 360f
            }
            PowerSdkEventHandler.onPhoneHeading(headingDeg, event.accuracy)
        }

        override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) {
        }
    }

    fun start() {
        if (registered) {
            return
        }
        val sensor = headingSensor ?: return
        val manager = sensorManager ?: return
        registered = manager.registerListener(sensorListener, sensor, SensorManager.SENSOR_DELAY_UI)
    }

    fun stop() {
        if (!registered) {
            return
        }
        sensorManager?.unregisterListener(sensorListener)
        registered = false
    }

    @Suppress("DEPRECATION")
    private fun currentDisplayRotation(): Int {
        return try {
            windowManager?.defaultDisplay?.rotation ?: Surface.ROTATION_0
        } catch (_: Exception) {
            Surface.ROTATION_0
        }
    }

    private fun axisXForRotation(rotation: Int): Int {
        return when (rotation) {
            Surface.ROTATION_90 -> SensorManager.AXIS_Y
            Surface.ROTATION_180 -> SensorManager.AXIS_MINUS_X
            Surface.ROTATION_270 -> SensorManager.AXIS_MINUS_Y
            else -> SensorManager.AXIS_X
        }
    }

    private fun axisYForRotation(rotation: Int): Int {
        return when (rotation) {
            Surface.ROTATION_90 -> SensorManager.AXIS_MINUS_X
            Surface.ROTATION_180 -> SensorManager.AXIS_MINUS_Y
            Surface.ROTATION_270 -> SensorManager.AXIS_X
            else -> SensorManager.AXIS_Y
        }
    }
}
