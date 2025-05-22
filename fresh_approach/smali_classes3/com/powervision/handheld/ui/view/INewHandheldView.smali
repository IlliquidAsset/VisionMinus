.class public interface abstract Lcom/powervision/handheld/ui/view/INewHandheldView;
.super Ljava/lang/Object;
.source "INewHandheldView.java"

# interfaces
.implements Lcom/powervision/base/base/BaseView;


# virtual methods
.method public abstract connectFail()V
.end method

.method public abstract connected()V
.end method

.method public abstract disConnect()V
.end method

.method public abstract gestureStartRecord()V
.end method

.method public abstract gestureStopRecord()V
.end method

.method public abstract gestureTakePhotoStart()V
.end method

.method public abstract liveCloseConnectionResult()V
.end method

.method public abstract liveOpenConnectionFailed()V
.end method

.method public abstract liveOpenConnectionSuccess()V
.end method

.method public abstract liveWriteError(I)V
.end method

.method public abstract multiShotsFail()V
.end method

.method public abstract onCameraSensorHighTemperature(I)V
.end method

.method public abstract onCameraStateChange(I)V
.end method

.method public abstract onCaptureFail(Ljava/lang/String;)V
.end method

.method public abstract onGestureBuriedPoint(I)V
.end method

.method public abstract onGestureFull(Z)V
.end method

.method public abstract onGestureStartFollow()V
.end method

.method public abstract onGestureStopFollow()V
.end method

.method public abstract onGetGestureFirstTimeState(Ljava/lang/String;)V
.end method

.method public abstract onInternalStorageFull()V
.end method

.method public abstract onPhotograph(Ljava/lang/String;)V
.end method

.method public abstract onSDFull()V
.end method

.method public abstract onSDStorageSlowNotify()V
.end method

.method public abstract onSetGestureFirstTimeState(Ljava/lang/String;)V
.end method

.method public abstract onSetGestureOnlyDiscerningResult(Ljava/lang/String;)V
.end method

.method public abstract onStartRecordVideo(Ljava/lang/String;)V
.end method

.method public abstract onStopRecordVideo(Ljava/lang/String;)V
.end method

.method public abstract onSwitchPhotoMode()V
.end method

.method public abstract onSwitchPhotographMode(Ljava/lang/String;)V
.end method

.method public abstract onSwitchRecordMode()V
.end method

.method public abstract onSwitchRecordMode(Ljava/lang/String;)V
.end method

.method public abstract onUpdateRecordingTime(I)V
.end method

.method public abstract setAEBMultipleShotsFail()V
.end method

.method public abstract setAEBMultipleShotsSuccess(Ljava/lang/String;II)V
.end method

.method public abstract setCaptureDelayMode()V
.end method

.method public abstract setDelayCaptureDataSuccess()V
.end method

.method public abstract setDelayCaptureSuccess()V
.end method

.method public abstract setHDRMultipleShotsFail()V
.end method

.method public abstract setHDRMultipleShotsStart()V
.end method

.method public abstract setHDRMultipleShotsSuccess()V
.end method

.method public abstract setMultipleShotsSuccess(Ljava/lang/String;II)V
.end method

.method public abstract setRecordingTime(Ljava/lang/String;)V
.end method

.method public abstract setSlowMotionModeFail()V
.end method

.method public abstract setSlowMotionModeSuccess(I)V
.end method

.method public abstract showHistogramData([II)V
.end method

.method public abstract showHistogramView(I)V
.end method

.method public abstract startDelayCapture()V
.end method

.method public abstract startTimeCapture(I)V
.end method

.method public abstract stopDelayCapture()V
.end method

.method public abstract stopTimeCapture()V
.end method

.method public abstract storageFull(I)V
.end method

.method public abstract timeCaptureFail()V
.end method

.method public abstract timeCaptureSuccess()V
.end method

.method public abstract updateCurrentMode(Ljava/lang/String;)V
.end method

.method public abstract updateDetectData(J[F[F[F[F[F[SI)V
.end method

.method public abstract updateFileSize(II)V
.end method

.method public abstract updateGimbalStatus(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract updateHandleBattery(F)V
.end method

.method public abstract updatePhotoNum(I)V
.end method

.method public abstract updateTrackStatus(FFFFFII)V
.end method

.method public abstract updateWarnInfo(III)V
.end method
