package com.powervision.natives

import com.powervision.natives.model.Rocker
import com.powervision.natives.model.WayPointParameter
import com.powervision.natives.param.MapWayPoint
import com.visionminus.vision_minus.PowerSdkEventHandler

/**
 * JNI bridge to libPowerSDK.so for W4 (water drone) commands.
 * Method signatures must exactly match the native symbols.
 */
object JniW4Native {

    private const val ROCKER_MIN = -1000
    private const val ROCKER_MAX = 1000

    // --- Native methods (called by us -> .so) ---

    @JvmStatic external fun connectDevice(): Int
    @JvmStatic external fun connectLink(): Int
    @JvmStatic external fun disconnectDevice()
    @JvmStatic external fun disConnectLink(): Int
    @JvmStatic external fun registerW4Callbacks(): Int

    @JvmStatic external fun controlRocker(rocker: Rocker): Int
    @JvmStatic external fun uploadWaypoint(wayPoints: Array<WayPointParameter>): Int
    @JvmStatic external fun downloadWaypoint(): Int
    @JvmStatic external fun mappingWayPoint(wayPoint: MapWayPoint): Any?

    @JvmStatic external fun setArmStatus(status: Int): Int
    @JvmStatic external fun setSailMode(mode: Int): Int
    @JvmStatic external fun setSpeedMode(mode: Int): Int
    @JvmStatic external fun setGimbalPitch(pitch: Short)
    @JvmStatic external fun controlLight(mode: Int): Int
    @JvmStatic external fun setNestOpenerStatus(status: Int): Int

    @JvmStatic external fun startMagCalibration(): Int
    @JvmStatic external fun cancelMagCalibration(): Int

    @JvmStatic external fun uploadParameter(name: String, value: Float): Int
    @JvmStatic external fun uploadParameter(name: String, value: Long): Int
    @JvmStatic external fun downloadParameter(name: String): Int

    @JvmStatic external fun alterBodyIp(ip: String, port: Int)
    @JvmStatic external fun bodyUpgrade(path1: String, path2: String): Int
    @JvmStatic external fun reSet()
    @JvmStatic external fun test()

    @JvmStatic
    fun buildParityRocker(rawX: Int, rawR: Int): Rocker {
        return Rocker().apply {
            x = rawX.coerceIn(ROCKER_MIN, ROCKER_MAX)
            r = rawR.coerceIn(ROCKER_MIN, ROCKER_MAX)
            y = 0
            z = 0
        }
    }

    // --- Callback methods (called by .so -> us) ---

    @JvmStatic
    fun W4ConnectDeviceCallBackFromJni(status: Int) {
        PowerSdkEventHandler.onW4ConnectDevice(status)
    }

    @JvmStatic
    fun W4ConnectLinkCallBackFromJni(status: Int) {
        PowerSdkEventHandler.onW4ConnectLink(status)
    }

    @JvmStatic
    fun W4OnGpsRawIntCallBackFromJni(fixType: Int, lat: Int, lon: Int, eph: Int, satellites: Byte) {
        PowerSdkEventHandler.onW4GpsRawInt(lat, lon, 0, satellites.toInt() and 0xFF, fixType, eph)
    }

    @JvmStatic
    fun W4onElectricQuantityDisplayCallBackFromJni(voltageBattery: Int, currentBattery: Int, batteryRemaining: Byte) {
        val remainingPercent = batteryRemaining.toInt() and 0xFF
        PowerSdkEventHandler.onW4Battery(voltageBattery, remainingPercent, batteryRemaining)
    }

    @JvmStatic
    fun W4onSailModeCallBackFromJni(mode: Int) {
        PowerSdkEventHandler.onW4SailMode(mode)
    }

    @JvmStatic
    fun W4onSpeedModeCallBackFromJni(mode: Int) {
        PowerSdkEventHandler.onW4SpeedMode(mode)
    }

    @JvmStatic
    fun W4LightInfoCallBackFromJni(status: Int) {
        PowerSdkEventHandler.onW4LightInfo(status)
    }

    @JvmStatic
    fun W4SetLightCallBackFromJni(result: Int) {
        PowerSdkEventHandler.onW4SetLight(result)
    }

    @JvmStatic
    fun onArmStatusCallBackFromJni(status: Int) {
        android.util.Log.i("JniW4Native", "onArmStatusCallBackFromJni status=$status")
        val listener = PVSDK_W4_API.get().getArmStatusListener()
        if (listener != null) {
            if (status == 0) listener.rayArm() else listener.rayDisarm()
        }
        PowerSdkEventHandler.onArmStatus(status)
    }

    @JvmStatic
    fun onSetArmResultCallBackFromJni(result: Int) {
        android.util.Log.i("JniW4Native", "onSetArmResultCallBackFromJni result=$result")
        PowerSdkEventHandler.onSetArmResult(result)
    }

    @JvmStatic
    fun onAttitudeCallBack(roll: Float, pitch: Float, yaw: Float) {
        PowerSdkEventHandler.onAttitude(roll, pitch, yaw)
    }

    @JvmStatic
    fun onBattaryDetailCallBackFromJni(voltage: Short, percent: Byte, cellVoltages: IntArray) {
        PowerSdkEventHandler.onBatteryDetail(voltage, percent, cellVoltages)
    }

    @JvmStatic
    fun onBodyUpgradeCallBack(state: Int, info: Int, filename: String) {
        // Firmware upgrade callback — not critical for Phase 1
    }

    @JvmStatic
    fun onDownloadWaypointResultCallBackFromJni(result: Any?, count: Short) {
        PowerSdkEventHandler.onDownloadWaypointResult(result, count)
    }

    @JvmStatic
    fun onExecuteReturnOverCallBackFromJni() {
        PowerSdkEventHandler.onExecuteReturnOver()
    }

    @JvmStatic
    fun onFixedSpeedCallBack(speed: Int) {
        PowerSdkEventHandler.onFixedSpeed(speed)
    }

    @JvmStatic
    fun onHomeCallBack(lat: Int, lon: Int) {
        PowerSdkEventHandler.onHome(lat, lon)
    }

    @JvmStatic
    fun onMagCalibrationStatusCallBackFromJni(status: Int) {
        PowerSdkEventHandler.onMagCalibrationStatus(status)
    }

    @JvmStatic
    fun onMissionRunStatusCallBackFromJni(status: Int, seq: Short) {
        PowerSdkEventHandler.onMissionRunStatus(status, seq)
    }

    @JvmStatic
    fun onModeErrorCallBackFromJni(error: String) {
        PowerSdkEventHandler.onModeError(error)
    }

    @JvmStatic
    fun onNestOpenerStatusCallBackFromJni(status: Int) {
        // Nest opener callback
    }

    @JvmStatic
    fun onParameterResultCallBackFromJni(name: String, index: Short, total: Short, value: Float) {
        PowerSdkEventHandler.onParameterResult(name, value)
    }

    @JvmStatic
    fun onParameterResultCallBackFromJni(name: String, index: Short, total: Short, value: Int) {
        PowerSdkEventHandler.onParameterResult(name, value.toFloat())
    }

    @JvmStatic
    fun onParameterResultCallBackFromJni(name: String, index: Short, total: Short, value: Long) {
        PowerSdkEventHandler.onParameterResult(name, value.toFloat())
    }

    @JvmStatic
    fun onSelfErrorResultCallBackFromJni(error: String) {
        PowerSdkEventHandler.onError("self", error)
    }

    @JvmStatic
    fun onSetNestOpenerResultCallBackFromJni(result: Int) {
        // Nest opener result
    }

    @JvmStatic
    fun onSetSailModeResultCallBackFromJni(result: Int) {
        PowerSdkEventHandler.onSetSailModeResult(result)
    }

    @JvmStatic
    fun onSetSpeedModeResultCallBackFromJni(result: Int) {
        PowerSdkEventHandler.onSetSpeedModeResult(result)
    }

    @JvmStatic
    fun onStatusErrorResultCallBackFromJni(error: String) {
        PowerSdkEventHandler.onError("status", error)
    }

    @JvmStatic
    fun onSysErrorResultCallBackFromJni(error: String) {
        PowerSdkEventHandler.onError("system", error)
    }

    @JvmStatic
    fun onUploadWaypointResultCallBackFromJni(result: Int) {
        PowerSdkEventHandler.onUploadWaypointResult(result)
    }

    @JvmStatic
    fun getString(resId: Int): String {
        return ""
    }
}
