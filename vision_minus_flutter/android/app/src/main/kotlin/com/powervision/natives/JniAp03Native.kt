package com.powervision.natives

import com.visionminus.vision_minus.PowerSdkEventHandler

/**
 * JNI bridge to libPowerSDK.so for AP03 navigation/GPS.
 * Only boat-relevant methods are exposed. Flying drone methods are excluded.
 */
object JniAp03Native {

    // --- Native methods (boat-relevant subset) ---

    @JvmStatic external fun connectDevice(): Int
    @JvmStatic external fun disconnectDevice(): Int
    @JvmStatic external fun connectLink(): Int
    @JvmStatic external fun disConnectLink(): Int
    @JvmStatic external fun registerAp03Callbacks(): Int

    @JvmStatic external fun rtl(): Int
    @JvmStatic external fun setReturnPoint(type: Int, lat: Float, lon: Float, alt: Float): Int
    @JvmStatic external fun setUserLocation(lat: Int, lon: Int): Int
    @JvmStatic external fun getHomePoint(): Int
    @JvmStatic external fun getRemainingRtlTime(): Int

    @JvmStatic external fun getParameter(name: String): Int
    @JvmStatic external fun downloadParameter(name: String): Int
    @JvmStatic external fun uploadIntParameter(name: String, value: Int): Int
    @JvmStatic external fun uploadFloatParameter(name: String, value: Float): Int
    @JvmStatic external fun uploadLongParameter(name: String, value: Long): Int

    @JvmStatic external fun nowLowPowerReturn(): Int
    @JvmStatic external fun refuseLowPowerReturn(): Int
    @JvmStatic external fun confirmDisarm(value: Int): Int

    @JvmStatic external fun getDroneVersion(): Int
    @JvmStatic external fun getHardwareVersionCode(): Int
    @JvmStatic external fun getTakeoffPoint(): Int

    @JvmStatic external fun connectActivationLink(): Int
    @JvmStatic external fun disconnectActivationLink(): Int

    // Flying-drone-only methods that the .so may still reference in callbacks.
    // We declare them but they're unused in our app.
    @JvmStatic external fun takeoff(): Int
    @JvmStatic external fun land(): Int
    @JvmStatic external fun setFlightingMode(mode: Int, subMode: Int): Int
    @JvmStatic external fun startFollow(): Int
    @JvmStatic external fun pauseFollow(): Int
    @JvmStatic external fun setFollowParam(p0: Float, p1: Float, p2: Float, p3: Int, p4: Int, p5: Int, p6: Int): Int
    @JvmStatic external fun setFollowParameter(p0: Float, p1: Float, p2: Float): Int
    @JvmStatic external fun sendTrajectoryData(x: FloatArray, y: FloatArray, z: FloatArray, vx: FloatArray, vy: FloatArray, count: Int, flag: Boolean): Int
    @JvmStatic external fun setVisionTrackFrame(p0: Float, p1: Float, p2: Float, p3: Float, p4: Float, p5: Int, p6: Long): Int
    @JvmStatic external fun setSubModeOneKeyVideoROI(p0: Float, p1: Float, p2: Int): Int
    @JvmStatic external fun setRoiParam(p0: Float, p1: Float, p2: Float, p3: Float, p4: Int, p5: Int, p6: Int, p7: Int, p8: Int): Int
    @JvmStatic external fun noFlyZoneOperate(operation: Int): Int
    @JvmStatic external fun sendNoFlyZoneFile(path: String): Int
    @JvmStatic external fun allowNoFlyZoneArm(value: Int): Int
    @JvmStatic external fun setNoviceModeAltitudeLimit(limit: Long): Int
    @JvmStatic external fun setTimeLapsePhotoMaxSpeed(speed: Float): Int
    @JvmStatic external fun startAccelCalibration(): Int
    @JvmStatic external fun startGyroCalibration(): Int
    @JvmStatic external fun startLevelCalibration(): Int
    @JvmStatic external fun startMagCalibration(): Int
    @JvmStatic external fun cancelCalibration(): Int
    @JvmStatic external fun landProtectUserFeedback(value: Int): Int
    @JvmStatic external fun setWaterproofCaseStatus(status: Int): Int
    @JvmStatic external fun setRainproofMode(mode: Int): Int
    @JvmStatic external fun enableActivation(): Int
    @JvmStatic external fun queryActivationStatus(): Int
    @JvmStatic external fun getActivationCode(): Int
    @JvmStatic external fun getActivationSnCode(): Int
    @JvmStatic external fun batteryUpgrade(): Int
    @JvmStatic external fun queryBatteryUpgradeStatus(): Int
    @JvmStatic external fun integrationUpgrade(path: String): Int
    @JvmStatic external fun intergrationUpgradeGetUpgradeStatus(): Int
    @JvmStatic external fun intergrationUpgradeGetVersion(): Int
    @JvmStatic external fun getDroneVer(): Int

    // --- Callback methods (called by .so -> us) ---
    // These MUST exist for the .so to not crash when it tries to invoke them.

    @JvmStatic
    fun Ap03NotifyConnectDeviceListener(status: Int) {
        PowerSdkEventHandler.onAp03ConnectDevice(status)
    }

    @JvmStatic
    fun Ap03NotifyConnectLinkListener(status: Int) {
        PowerSdkEventHandler.onAp03ConnectLink(status)
    }

    @JvmStatic
    fun Ap03NotifyOnGpsRawIntListener(
        lat: Int, lon: Int, alt: Int, eph: Int, epv: Int,
        vel: Int, cog: Int, fixType: Int, satellitesVisible: Int,
        p9: Int, p10: Int, p11: Int, p12: Int, p13: Int
    ) {
        PowerSdkEventHandler.onGpsRawInt(lat, lon, alt, eph, epv, vel, cog, fixType, satellitesVisible)
    }

    @JvmStatic
    fun Ap03NotifyOnAttitudeListener(roll: Float, pitch: Float, yaw: Float) {
        PowerSdkEventHandler.onAttitude(roll, pitch, yaw)
    }

    @JvmStatic
    fun Ap03NotifyOnBatteryStatusListener(
        id: Int, voltage: Int, currentBattery: Int,
        cellVoltages: IntArray, temperature: Int, remainingPercent: Int,
        remainingCapacity: Int, p7: Int, p8: Int, p9: Int, p10: Int,
        p11: Int, p12: String, p13: String, p14: String, p15: String, p16: String
    ) {
        PowerSdkEventHandler.onBatteryStatus(id, voltage, currentBattery, remainingPercent, temperature)
    }

    @JvmStatic
    fun Ap03NotifyOnBatteryWarningListener(warning: String) {
        PowerSdkEventHandler.onBatteryWarning(warning)
    }

    @JvmStatic
    fun Ap03NotifyOnGetHomePositionResultListener(result: Int, lat: Int, lon: Int, alt: Int) {
        PowerSdkEventHandler.onHomePosition(result, lat, lon, alt)
    }

    @JvmStatic
    fun Ap03NotifyOnRTLListener(status: String) {
        PowerSdkEventHandler.onRtlStatus(status)
    }

    @JvmStatic
    fun Ap03NotifyOnGetRemainingRtlTimeResultListener(result: Int, timeSeconds: Int) {
        PowerSdkEventHandler.onRemainingRtlTime(result, timeSeconds)
    }

    @JvmStatic
    fun Ap03NotifyOnSetReturnPointListener(status: String, result: Int) {
        PowerSdkEventHandler.onSetReturnPointResult(status, result)
    }

    @JvmStatic
    fun Ap03NotifyOnCurrentModeListener(mode: String, subMode: String) {
        PowerSdkEventHandler.onCurrentMode(mode, subMode)
    }

    @JvmStatic
    fun Ap03NotifyOnCurrentSysStatusListener(
        p0: Int, p1: Int, p2: Int, p3: Int, p4: Int, p5: Int
    ) {
        PowerSdkEventHandler.onSysStatus(p0, p1, p2, p3, p4, p5)
    }

    @JvmStatic
    fun Ap03NotifyOnLocalPositionNedListener(
        x: Float, y: Float, z: Float, vx: Float, vy: Float, vz: Float
    ) {
        PowerSdkEventHandler.onLocalPositionNed(x, y, z, vx, vy, vz)
    }

    @JvmStatic
    fun Ap03NotifyOnSetRefuseLowPowerReturnResultListener(result: String) {}

    @JvmStatic
    fun Ap03NotifyOnGetDroneVertionListener(version: String, code: Int) {
        PowerSdkEventHandler.onDroneVersion(version, code)
    }

    @JvmStatic
    fun Ap03NotifyOnGetTakeoffPointResultListener(result: Int, lat: Int, lon: Int) {}

    @JvmStatic
    fun Ap03NotifyOnConfirmDisarmResultListener(result: Int) {}

    @JvmStatic
    fun Ap03NotifyOnStatusReportingListener(report: String) {}

    @JvmStatic
    fun Ap03NotifyOnStatusTextNotifyListener(severity: Int) {}

    @JvmStatic
    fun Ap03NotifyOnFlyWarningListener(warning: String) {}

    @JvmStatic
    fun Ap03NotifyOnHornStatusWarningListener(warning: String) {}

    @JvmStatic
    fun Ap03NotifyOnArmStatusWarningListener(warning: String) {}

    @JvmStatic
    fun Ap03NotifyonParameterResultFloatListener(name: String, p1: String, p2: String, value: Float) {
        PowerSdkEventHandler.onParameterResult(name, value)
    }

    @JvmStatic
    fun Ap03NotifyonParameterResultIntListener(name: String, p1: String, p2: String, value: Int) {
        PowerSdkEventHandler.onParameterResult(name, value.toFloat())
    }

    @JvmStatic
    fun Ap03NotifyonParameterResultLongListener(name: String, p1: String, p2: String, value: Long) {
        PowerSdkEventHandler.onParameterResult(name, value.toFloat())
    }

    @JvmStatic
    fun Ap03NotifyOnConnectActivationResultListener(result: Int) {}

    @JvmStatic
    fun Ap03NotifyOnEnableActivationListener(result: Int) {}

    @JvmStatic
    fun Ap03NotifyOnQueryActivationStatusListener(result: Int) {}

    @JvmStatic
    fun Ap03NotifyOnGetActivationCodeListener(result: Int, code: String) {}

    @JvmStatic
    fun Ap03NotifyOnGetActivationSnCodeListener(result: Int, code: String) {}

    @JvmStatic
    fun Ap03NotifyonGetActivationHwCodeListener(result: Int, code: String) {}

    @JvmStatic
    fun Ap03NotifyOnBatteryUpgradeResultListener(result: Int, progress: Int) {}

    @JvmStatic
    fun Ap03NotifyOnIntegrationUpgradeStatusListener(result: Int, progress: Int) {}

    @JvmStatic
    fun Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener(status: Int) {}

    @JvmStatic
    fun Ap03OnIntegrationUpgradeGetVersionStatusListener(status: Int, version: String) {}

    // Flight-specific callbacks (must exist but are no-ops for water drone)
    @JvmStatic fun Ap03NotifyOnTakeoffListener(status: String) {}
    @JvmStatic fun Ap03NotifyOnLandListener(status: String) {}
    @JvmStatic fun Ap03NotifyOnLandProtectStatusListener(status: Int) {}
    @JvmStatic fun Ap03NotifyOnLandProtectUserFeedbackResultListener(result: Int) {}
    @JvmStatic fun Ap03NotifyOnAccCalibrationStatusListener(status: Int, progress: Int) {}
    @JvmStatic fun Ap03NotifyOnGyroCalibrationStatusListener(status: Int, progress: Int) {}
    @JvmStatic fun Ap03NotifyOnMagCalibrationStatusListener(status: Int, progress: Int) {}
    @JvmStatic fun Ap03NotifyOnCalibrationOffsetListener(offset1: Float, offset2: Float) {}
    @JvmStatic fun Ap03NotifyOnCancelCalibrationResultListener(result: Int) {}
    @JvmStatic fun Ap03NotifyOnDistanceSensorStatusListener(status: Int) {}
    @JvmStatic fun Ap03NotifyOnFrontDistanceListener(distances: FloatArray) {}
    @JvmStatic fun Ap03NotifyOnFollowCurrentListener(p0: Float, p1: Float) {}
    @JvmStatic fun Ap03NotifyOnStartFollowListener(status: String, mode: String) {}
    @JvmStatic fun Ap03NotifyOnPauseFollowListener(status: String, mode: String) {}
    @JvmStatic fun Ap03NotifyOnSetFollowParamListener(status: String, p1: Int, p2: Int) {}
    @JvmStatic fun Ap03NotifyOnSetFollowModeListener(status: String, mode: String) {}
    @JvmStatic fun Ap03NotifyOnStartFollowAndSetFollowModeListener(status: String, mode: String) {}
    @JvmStatic fun Ap03NotifyonPauseFollowAndSetFollowModeListener(status: String, mode: String) {}
    @JvmStatic fun Ap03NotifyOnVisionTrackListener(p0: Float, p1: Float, p2: Float, p3: Float, p4: Float, p5: Int, p6: Int) {}
    @JvmStatic fun Ap03NotifyOnVisionDetectListener(timestamp: Long, p1: FloatArray, p2: FloatArray, p3: FloatArray, p4: FloatArray, p5: FloatArray, p6: ShortArray, count: Int) {}
    @JvmStatic fun Ap03NotifyOnNoFlyZoneOperateResultListener(result: Int, info: String, code: Int) {}
    @JvmStatic fun Ap03NotifyOnSendNoFlyZoneFileStatusListener(status: Int, progress: Int) {}
    @JvmStatic fun Ap03NotifyOnAllowNoFlyZoneArmResultListener(result: Int) {}
    @JvmStatic fun Ap03NotifyOnSetWaterproofCaseStatusResultListener(result: Int) {}
    @JvmStatic fun Ap03NotifyOnSetRainproofModeResultListener(result: Int) {}
    @JvmStatic fun Ap03NotifyOnHighresImuListener(p0: Int, p1: Int, p2: Int, p3: Int, p4: Int, p5: Int, p6: Int, p7: Int, p8: Int, p9: Int, p10: Int, p11: Int, p12: Int) {}
    @JvmStatic fun Ap03NotifyOnROISetParamResultListener(status: String, p1: Int, p2: Int) {}
    @JvmStatic fun Ap03NotifyOnSetSubModeOneKeyVideoResultListener(p0: Int, p1: Int) {}
    @JvmStatic fun Ap03NotifyOnSubModeTrajDataResultListener(result: String) {}
    @JvmStatic fun Ap03NotifyOnSubModeExecuteStatusListener(status: String, mode: String) {}
    @JvmStatic fun Ap03NotifyOnSmartFunctionCurrentListener(p0: Float, p1: Float, p2: Float, p3: Float, p4: Int) {}
    @JvmStatic fun Ap03SmartFunctionStatusListener(status: Int) {}
    @JvmStatic fun Ap03OnSubModeSubAttributesStatusListener(status: Int) {}
    @JvmStatic fun Ap03NotifyOnReceiveTimeLapsePhotoStatusListener(p0: Int, p1: Int) {}
    @JvmStatic fun Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener(result: Int) {}
}
