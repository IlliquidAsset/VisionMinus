.class public interface abstract Lcom/powervision/aircraft/ui/view/IAircraftView;
.super Ljava/lang/Object;
.source "IAircraftView.java"

# interfaces
.implements Lcom/powervision/base/base/BaseView;


# virtual methods
.method public abstract barrierStatus(I)V
.end method

.method public abstract clearNewerModeOnMap()V
.end method

.method public abstract clearNoFlyZonePolygon()V
.end method

.method public abstract customKeyState(I)V
.end method

.method public abstract drawNativePolygon(Lcom/powervision/base/db/model/GeoData;)V
.end method

.method public abstract drawOnlinePolygon(Lcom/powervision/base/db/model/GeoOnLineData;)V
.end method

.method public abstract followModeFail()V
.end method

.method public abstract getAirDL03Data(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getDL01Date(IILjava/lang/String;)V
.end method

.method public abstract getRemainingRtlTime(I)V
.end method

.method public abstract liveCloseConnectionResult()V
.end method

.method public abstract liveOpenConnectionFailed()V
.end method

.method public abstract liveOpenConnectionSuccess()V
.end method

.method public abstract liveWriteError(I)V
.end method

.method public abstract noflyCheck(I)V
.end method

.method public abstract onCameraSensorHighTemperature(I)V
.end method

.method public abstract onGetFlightGuideStatus(I)V
.end method

.method public abstract onGetRemoteControlerResult(IIII)V
.end method

.method public abstract onGetRemoteMode(I)V
.end method

.method public abstract onRoboticArmStateChangeView(Z)V
.end method

.method public abstract onSetRemoteRecord()V
.end method

.method public abstract onSetRemoteTakePic()V
.end method

.method public abstract onUpdateRecordingTime(I)V
.end method

.method public abstract setAEBMultipleShotsFail()V
.end method

.method public abstract setAEBMultipleShotsSuccess(Ljava/lang/String;I)V
.end method

.method public abstract setGimbalViewPitch(FZ)V
.end method

.method public abstract setGimbalViewYaw(FZ)V
.end method

.method public abstract setHDRMultipleShotsFail()V
.end method

.method public abstract setHDRMultipleShotsSuccess()V
.end method

.method public abstract setMultiShotsFail()V
.end method

.method public abstract setMultipleShotsSuccess(I)V
.end method

.method public abstract showHistogramData([II)V
.end method

.method public abstract showHistogramView(I)V
.end method

.method public abstract showNewerModeOnMap(II)V
.end method

.method public abstract stopDelayCapture()V
.end method

.method public abstract storageFull()V
.end method

.method public abstract upLandProtectResult(I)V
.end method

.method public abstract upLandProtectStatus(I)V
.end method

.method public abstract updateAircraftAttitudeInfo(FFF)V
.end method

.method public abstract updateBarrierInfo([F)V
.end method

.method public abstract updateBattery(FIIIIIIIIII)V
.end method

.method public abstract updateBatteryInfo(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract updateConnect(Ljava/lang/String;)V
.end method

.method public abstract updateDeviceState(Ljava/lang/String;)V
.end method

.method public abstract updateFileSize(II)V
.end method

.method public abstract updateFollowDetect(J[F[F[F[F[F[SI)V
.end method

.method public abstract updateFollowTrack(FFFFFII)V
.end method

.method public abstract updateGimbalAttitudeInfo(FFF)V
.end method

.method public abstract updateHight(F)V
.end method

.method public abstract updateHorizontalSpeed(F)V
.end method

.method public abstract updateLand(Ljava/lang/String;)V
.end method

.method public abstract updateLandProtectStatus()V
.end method

.method public abstract updateMode(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateOnInternalStorageFull()V
.end method

.method public abstract updateOnSDFull()V
.end method

.method public abstract updatePauseFollowInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updatePhotoNum(I)V
.end method

.method public abstract updateRainproofMode(I)V
.end method

.method public abstract updateRemoteElectric(I)V
.end method

.method public abstract updateReturnPoint(III)V
.end method

.method public abstract updateRtl(Ljava/lang/String;)V
.end method

.method public abstract updateSatellite(I)V
.end method

.method public abstract updateSpeedAndDistanceInfo(FF)V
.end method

.method public abstract updateStartFollowInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateSurplusTime(I)V
.end method

.method public abstract updateTakeOff(Ljava/lang/String;)V
.end method

.method public abstract updateTimeLapsePhotoMaxSpeedResult(I)V
.end method

.method public abstract updateVertical(F)V
.end method

.method public abstract updateVps(F)V
.end method

.method public abstract updateWarnInfo(III)V
.end method

.method public abstract updateWaterMode(I)V
.end method
