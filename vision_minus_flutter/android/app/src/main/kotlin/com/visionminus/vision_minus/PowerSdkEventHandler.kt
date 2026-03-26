package com.visionminus.vision_minus

import android.os.Handler
import android.os.Looper
import io.flutter.plugin.common.EventChannel

/**
 * Dispatches native SDK callbacks to Flutter via EventChannels.
 * All events are sent on the main thread to satisfy Flutter's threading requirements.
 */
object PowerSdkEventHandler {
    private val mainHandler = Handler(Looper.getMainLooper())

    // EventChannel sinks
    var gpsSink: EventChannel.EventSink? = null
    var batterySink: EventChannel.EventSink? = null
    var connectionSink: EventChannel.EventSink? = null
    var navigationSink: EventChannel.EventSink? = null
    var attitudeSink: EventChannel.EventSink? = null

    fun sendEvent(sink: EventChannel.EventSink?, event: Map<String, Any?>) {
        mainHandler.post { sink?.success(event) }
    }

    // --- GPS events ---

    fun onGpsRawInt(lat: Int, lon: Int, alt: Int, eph: Int, epv: Int, vel: Int, cog: Int, fixType: Int, satellites: Int) {
        sendEvent(gpsSink, mapOf(
            "type" to "gps_raw_int",
            "lat" to lat,           // degE7
            "lon" to lon,           // degE7
            "alt" to alt,           // mm
            "eph" to eph,           // GPS HDOP
            "epv" to epv,           // GPS VDOP
            "vel" to vel,           // cm/s
            "cog" to cog,           // course over ground (cdeg)
            "fix_type" to fixType,  // 0=no fix, 2=2D, 3=3D
            "satellites" to satellites
        ))
    }

    fun onW4GpsRawInt(lat: Int, lon: Int, alt: Int, satellites: Int, fixType: Byte) {
        sendEvent(gpsSink, mapOf(
            "type" to "w4_gps",
            "lat" to lat,
            "lon" to lon,
            "alt" to alt,
            "satellites" to satellites.toInt(),
            "fix_type" to fixType.toInt()
        ))
    }

    fun onHomePosition(result: Int, lat: Int, lon: Int, alt: Int) {
        sendEvent(gpsSink, mapOf(
            "type" to "home_position",
            "result" to result,
            "lat" to lat,
            "lon" to lon,
            "alt" to alt
        ))
    }

    fun onHome(lat: Int, lon: Int) {
        sendEvent(gpsSink, mapOf(
            "type" to "home",
            "lat" to lat,
            "lon" to lon
        ))
    }

    fun onLocalPositionNed(x: Float, y: Float, z: Float, vx: Float, vy: Float, vz: Float) {
        sendEvent(gpsSink, mapOf(
            "type" to "local_position_ned",
            "x" to x, "y" to y, "z" to z,
            "vx" to vx, "vy" to vy, "vz" to vz
        ))
    }

    // --- Battery events ---

    fun onBatteryStatus(id: Int, voltage: Int, current: Int, remainingPercent: Int, temperature: Int) {
        sendEvent(batterySink, mapOf(
            "type" to "battery_status",
            "id" to id,
            "voltage" to voltage,       // mV
            "current" to current,       // cA (10*mA)
            "percent" to remainingPercent,
            "temperature" to temperature // cdegC
        ))
    }

    fun onBatteryWarning(warning: String) {
        sendEvent(batterySink, mapOf(
            "type" to "battery_warning",
            "warning" to warning
        ))
    }

    fun onW4Battery(voltage: Int, percent: Int, status: Byte) {
        sendEvent(batterySink, mapOf(
            "type" to "w4_battery",
            "voltage" to voltage,
            "percent" to percent,
            "status" to status.toInt()
        ))
    }

    fun onBatteryDetail(voltage: Short, percent: Byte, cellVoltages: IntArray) {
        sendEvent(batterySink, mapOf(
            "type" to "battery_detail",
            "voltage" to voltage.toInt(),
            "percent" to percent.toInt(),
            "cell_voltages" to cellVoltages.toList()
        ))
    }

    // --- Connection events ---

    fun onW4ConnectDevice(status: Int) {
        sendEvent(connectionSink, mapOf("type" to "w4_connect_device", "status" to status))
    }

    fun onW4ConnectLink(status: Int) {
        sendEvent(connectionSink, mapOf("type" to "w4_connect_link", "status" to status))
    }

    fun onAp03ConnectDevice(status: Int) {
        sendEvent(connectionSink, mapOf("type" to "ap03_connect_device", "status" to status))
    }

    fun onAp03ConnectLink(status: Int) {
        sendEvent(connectionSink, mapOf("type" to "ap03_connect_link", "status" to status))
    }

    fun onArmStatus(status: Int) {
        sendEvent(connectionSink, mapOf("type" to "arm_status", "status" to status))
    }

    fun onSetArmResult(result: Int) {
        sendEvent(connectionSink, mapOf("type" to "set_arm_result", "result" to result))
    }

    fun onCurrentMode(mode: String, subMode: String) {
        sendEvent(connectionSink, mapOf("type" to "current_mode", "mode" to mode, "sub_mode" to subMode))
    }

    fun onSysStatus(p0: Int, p1: Int, p2: Int, p3: Int, p4: Int, p5: Int) {
        sendEvent(connectionSink, mapOf(
            "type" to "sys_status",
            "sensors_present" to p0, "sensors_enabled" to p1, "sensors_health" to p2,
            "load" to p3, "voltage" to p4, "current" to p5
        ))
    }

    fun onDroneVersion(version: String, code: Int) {
        sendEvent(connectionSink, mapOf("type" to "drone_version", "version" to version, "code" to code))
    }

    fun onError(source: String, error: String) {
        sendEvent(connectionSink, mapOf("type" to "error", "source" to source, "error" to error))
    }

    // --- Navigation events ---

    fun onRtlStatus(status: String) {
        sendEvent(navigationSink, mapOf("type" to "rtl_status", "status" to status))
    }

    fun onRemainingRtlTime(result: Int, timeSeconds: Int) {
        sendEvent(navigationSink, mapOf("type" to "remaining_rtl_time", "result" to result, "time_seconds" to timeSeconds))
    }

    fun onSetReturnPointResult(status: String, result: Int) {
        sendEvent(navigationSink, mapOf("type" to "set_return_point_result", "status" to status, "result" to result))
    }

    fun onUploadWaypointResult(result: Int) {
        sendEvent(navigationSink, mapOf("type" to "upload_waypoint_result", "result" to result))
    }

    fun onDownloadWaypointResult(result: Any?, count: Short) {
        sendEvent(navigationSink, mapOf("type" to "download_waypoint_result", "count" to count.toInt()))
    }

    fun onMissionRunStatus(status: Int, seq: Short) {
        sendEvent(navigationSink, mapOf("type" to "mission_run_status", "status" to status, "seq" to seq.toInt()))
    }

    fun onExecuteReturnOver() {
        sendEvent(navigationSink, mapOf("type" to "execute_return_over"))
    }

    fun onModeError(error: String) {
        sendEvent(navigationSink, mapOf("type" to "mode_error", "error" to error))
    }

    fun onW4SailMode(mode: Int) {
        sendEvent(navigationSink, mapOf("type" to "sail_mode", "mode" to mode))
    }

    fun onW4SpeedMode(mode: Int) {
        sendEvent(navigationSink, mapOf("type" to "speed_mode", "mode" to mode))
    }

    fun onSetSailModeResult(result: Int) {
        sendEvent(navigationSink, mapOf("type" to "set_sail_mode_result", "result" to result))
    }

    fun onSetSpeedModeResult(result: Int) {
        sendEvent(navigationSink, mapOf("type" to "set_speed_mode_result", "result" to result))
    }

    fun onFixedSpeed(speed: Int) {
        sendEvent(navigationSink, mapOf("type" to "fixed_speed", "speed" to speed))
    }

    fun onW4LightInfo(status: Int) {
        sendEvent(navigationSink, mapOf("type" to "light_info", "status" to status))
    }

    fun onW4SetLight(result: Int) {
        sendEvent(navigationSink, mapOf("type" to "set_light_result", "result" to result))
    }

    fun onMagCalibrationStatus(status: Int) {
        sendEvent(navigationSink, mapOf("type" to "mag_calibration_status", "status" to status))
    }

    fun onParameterResult(name: String, value: Float) {
        sendEvent(navigationSink, mapOf("type" to "parameter_result", "name" to name, "value" to value))
    }

    // --- Attitude events ---

    fun onAttitude(roll: Float, pitch: Float, yaw: Float) {
        sendEvent(attitudeSink, mapOf(
            "type" to "attitude",
            "roll" to roll,
            "pitch" to pitch,
            "yaw" to yaw
        ))
    }
}
