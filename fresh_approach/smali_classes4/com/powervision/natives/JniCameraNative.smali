.class public Lcom/powervision/natives/JniCameraNative;
.super Ljava/lang/Object;
.source "JniCameraNative.java"


# static fields
.field public static final JNI_NATIVES_RETURN_VALUE_FAILED:I = -0x1

.field public static final JNI_NATIVES_RETURN_VALUE_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CameraNotifyConnectionListener(I)I
    .locals 2

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionListener==>  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqCam"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getConnectionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getConnectionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;->connection(I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static CameraNotifyEnableHDRListener(Ljava/lang/String;)V
    .locals 1

    .line 556
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyEnableHDRListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableHDRListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyEnableHDRListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableHDRListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableHDRListener;->setEnableHDR(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyEnableHistogram(Ljava/lang/String;)V
    .locals 1

    .line 276
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyEnableHistogramListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableHistogramListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyEnableHistogramListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableHistogramListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableHistogramListener;->enableHistogram(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyEnableResistBlink(Ljava/lang/String;)V
    .locals 1

    .line 283
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyEnableResistBlinkListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableResistBlinkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyEnableResistBlinkListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableResistBlinkListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableResistBlinkListener;->enableResistBlink(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyFormatStorageDevice(Ljava/lang/String;)V
    .locals 1

    .line 318
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyFormatStorageDeviceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyFormatStorageDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyFormatStorageDeviceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyFormatStorageDeviceListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyFormatStorageDeviceListener;->formatStorageDevice(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetAllParameters(Ljava/lang/String;)V
    .locals 1

    .line 383
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetAllParameters()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraAllParametersListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetAllParameters()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraAllParametersListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraAllParametersListener;->getCameraAllParameters(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetCameraVersionListener(Ljava/lang/String;)V
    .locals 1

    .line 425
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetCameraVersionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraVersionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetCameraVersionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraVersionListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraVersionListener;->getVersionCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetCameraWorkStateListener(Ljava/lang/String;)V
    .locals 1

    .line 431
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetCameraWorkStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraWorkStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetCameraWorkStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraWorkStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraWorkStateListener;->getCameraState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetCurrentExposureStatus(Ljava/lang/String;)V
    .locals 1

    .line 254
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetCurrentExposureStatusListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentExposureStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetCurrentExposureStatusListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentExposureStatusListener;

    move-result-object v0

    .line 256
    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentExposureStatusListener;->getCameraCurrentExposureStatus(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetCurrentResolution(Ljava/lang/String;)V
    .locals 1

    .line 398
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetCurrentResolutionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentResolutionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetCurrentResolutionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentResolutionListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentResolutionListener;->getCurrentResolution(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetEmmcStorageSize(Ljava/lang/String;)V
    .locals 1

    .line 346
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetEmmcStorageSizeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetEmmcStorageSizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetEmmcStorageSizeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetEmmcStorageSizeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetEmmcStorageSizeListener;->getEmmcStorageSize(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetPhotoFileFormat(Ljava/lang/String;)V
    .locals 1

    .line 360
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetPhotoFileFormatListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetPhotoFileFormatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetPhotoFileFormatListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetPhotoFileFormatListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetPhotoFileFormatListener;->getPhotoFileFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetPhotoStyle(Ljava/lang/String;)V
    .locals 1

    .line 591
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetPhotoStyleListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetPhotoStyleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetPhotoStyleListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetPhotoStyleListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetPhotoStyleListener;->onGetPhotoStyle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetRecordTime(Ljava/lang/String;)V
    .locals 1

    .line 332
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetRecordTimeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRecordTimeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetRecordTimeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRecordTimeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRecordTimeListener;->getRecordTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetRestPhotoNumber(Ljava/lang/String;)V
    .locals 1

    .line 325
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetRestPhotoNumberListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestPhotoNumberListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetRestPhotoNumberListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestPhotoNumberListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestPhotoNumberListener;->getRestPhotoNumber(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetRestRecordTime(Ljava/lang/String;)V
    .locals 1

    .line 353
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetRestRecordTimeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestRecordTimeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetRestRecordTimeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestRecordTimeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestRecordTimeListener;->getRestRecordTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetSDStateListener(Ljava/lang/String;)V
    .locals 1

    .line 563
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetSDStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetSDStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStateListener;->getSDState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetSDStorageSize(Ljava/lang/String;)V
    .locals 1

    .line 339
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetSDStorageSizeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStorageSizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetSDStorageSizeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStorageSizeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStorageSizeListener;->getSDStorageSize(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetStorageDeviceType(Ljava/lang/String;)V
    .locals 1

    .line 304
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetStorageDeviceTypeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetStorageDeviceTypeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetStorageDeviceTypeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetStorageDeviceTypeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetStorageDeviceTypeListener;->getStorageDeviceType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetVisionVersion(Ljava/lang/String;)V
    .locals 1

    .line 419
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetVisionVersion()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetVisionVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetVisionVersion()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetVisionVersion;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetVisionVersion;->getVisionVersion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyGetWhiteBalanceListener(Ljava/lang/String;)V
    .locals 1

    .line 482
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetWhiteBalanceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetWhiteBalanceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyGetWhiteBalanceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetWhiteBalanceListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetWhiteBalanceListener;->getWhiteBalance(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyHistogramData([II)V
    .locals 1

    .line 392
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyHistogramDataDataListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyHistogramDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyHistogramDataDataListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyHistogramDataListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyHistogramDataListener;->histogramData([II)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnCameraSDCardSpeedDetected(Ljava/lang/String;)V
    .locals 1

    .line 840
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnCameraSDCardSpeedDetectedListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSDCardSpeedDetectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 841
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnCameraSDCardSpeedDetectedListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSDCardSpeedDetectedListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSDCardSpeedDetectedListener;->onCameraSDCardSpeedDetected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnCameraSensorHighTemperature(I)V
    .locals 1

    .line 834
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnCameraSensorHighTemperatureListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSensorHighTemperatureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 835
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnCameraSensorHighTemperatureListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSensorHighTemperatureListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSensorHighTemperatureListener;->onCameraSensorHighTemperature(I)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnCameraSingleEngineArmException(Ljava/lang/String;)V
    .locals 1

    .line 847
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnCameraSingleEngineArmExceptionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSingleEngineArmExceptionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnCameraSingleEngineArmExceptionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSingleEngineArmExceptionListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSingleEngineArmExceptionListener;->onCameraSingleEngineArmException(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnCameraStopRecordState(Ljava/lang/String;)V
    .locals 1

    .line 828
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnCameraStopRecordStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraStopRecordStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnCameraStopRecordStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraStopRecordStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraStopRecordStateListener;->onCameraStopRecordState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnConnectAudio(I)V
    .locals 1

    .line 619
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnConnectAudioListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnConnectAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnConnectAudioListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnConnectAudioListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnConnectAudioListener;->onConnectAudio(I)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnCreateLapseFiile(Ljava/lang/String;)V
    .locals 1

    .line 721
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnCreateLapseFiile()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnCreateLapseFiile()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;->onCreateLapseFiile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnDelayPhoto(Ljava/lang/String;)V
    .locals 1

    .line 691
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnDelayPhoto()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnDelayPhoto()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;->onDelayPhoto(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnEnableAudio(Ljava/lang/String;)V
    .locals 1

    .line 577
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnEnableAudioListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableAudioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnEnableAudioListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableAudioListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableAudioListener;->onEnableAudio(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnEnableGesture(Ljava/lang/String;)V
    .locals 1

    .line 733
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnEnableGesture()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableGesture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 734
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnEnableGesture()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableGesture;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableGesture;->onEnableGesture(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnEnableHeadLight(Ljava/lang/String;)V
    .locals 1

    .line 781
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnEnableHeadLightListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableHeadLightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnEnableHeadLightListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableHeadLightListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableHeadLightListener;->onEnableHeadLight(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnEnableLogo(Ljava/lang/String;)V
    .locals 1

    .line 626
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnEnableLogoListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableLogoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnEnableLogoListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableLogoListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableLogoListener;->onEnableLogo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnForwardLamp()V
    .locals 1

    .line 649
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnForwardLamp()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnForwardLamp()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;->onForwardLamp()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGestureInternalStorageFull()V
    .locals 1

    .line 821
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureInternalStorageFullListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureInternalStorageFullListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 822
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureInternalStorageFullListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureInternalStorageFullListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureInternalStorageFullListener;->onGestureInternalStorageFull()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGestureSDFull()V
    .locals 1

    .line 815
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureSDFullListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSDFullListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureSDFullListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSDFullListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSDFullListener;->onGestureSDFull()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGestureSnap()V
    .locals 1

    .line 655
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureSnap()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 656
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureSnap()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;->onGestureSnap()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGestureSnapGroup()V
    .locals 1

    .line 661
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureSnapGroup()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureSnapGroup()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;->onGestureSnapGroup()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGestureStartRecord()V
    .locals 1

    .line 667
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureStartRecord()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureStartRecord()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;->onGestureStartRecord()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGestureStartTrack()V
    .locals 1

    .line 679
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureStartTrack()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartTrack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureStartTrack()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartTrack;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartTrack;->onGestureStartTrack()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGestureStopRecord()V
    .locals 1

    .line 673
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureStopRecord()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureStopRecord()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;->onGestureStopRecord()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGestureStopTrack()V
    .locals 1

    .line 685
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureStopTrack()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopTrack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGestureStopTrack()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopTrack;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopTrack;->onGestureStopTrack()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetAudioRate(Ljava/lang/String;)V
    .locals 1

    .line 809
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetAudioRateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetAudioRateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetAudioRateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetAudioRateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetAudioRateListener;->onGetAudioRate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetContrast(Ljava/lang/String;)V
    .locals 1

    .line 605
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetContrastListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetContrastListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetContrastListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetContrastListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetContrastListener;->onGetContrast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetGestureFirstTimeTeachingState(Ljava/lang/String;)V
    .locals 1

    .line 879
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetGestureFirstTimeTeachingStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureFirstTimeTeachingStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetGestureFirstTimeTeachingStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureFirstTimeTeachingStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureFirstTimeTeachingStateListener;->onGetGestureFirstTimeTeachingState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetGestureStat(Ljava/lang/String;)V
    .locals 1

    .line 739
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetGestureStat()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 740
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetGestureStat()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;->getGestureStat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetHeadLightState(Ljava/lang/String;)V
    .locals 1

    .line 788
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetHeadLightStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetHeadLightStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 789
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetHeadLightStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetHeadLightStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetHeadLightStateListener;->onGetHeadLightState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetLapseFileDuration(Ljava/lang/String;)V
    .locals 1

    .line 709
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetLapseFileDuration()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseFileDuration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetLapseFileDuration()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseFileDuration;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseFileDuration;->onGetLapseFileDuration(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetLapseSnap(Ljava/lang/String;)V
    .locals 1

    .line 715
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetLapseSnap()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseSnap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetLapseSnap()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseSnap;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseSnap;->onGetLapseSnap(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetLuminance(Ljava/lang/String;)V
    .locals 1

    .line 612
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetLuminanceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLuminanceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetLuminanceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLuminanceListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLuminanceListener;->onGetLuminance(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetMuxerFormat(Ljava/lang/String;)V
    .locals 1

    .line 897
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetMuxerFormatListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetMuxerFormatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetMuxerFormatListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetMuxerFormatListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetMuxerFormatListener;->onGetMuxerFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetRtspBitrate(Ljava/lang/String;)V
    .locals 1

    .line 633
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetRtspBitrateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetRtspBitrateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 634
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetRtspBitrateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetRtspBitrateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetRtspBitrateListener;->onGetRtspBitrate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetSaturation(Ljava/lang/String;)V
    .locals 1

    .line 598
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetSaturationListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetSaturationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetSaturationListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetSaturationListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetSaturationListener;->onGetSaturation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnGetTypeCMode(Ljava/lang/String;)V
    .locals 1

    .line 860
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetTypeCModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetTypeCModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnGetTypeCModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetTypeCModeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetTypeCModeListener;->onCameraNotifyOnGetTypeCMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnInternalStorageFull()V
    .locals 1

    .line 413
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnInternalStorageFullListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnInternalStorageFullListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnInternalStorageFullListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnInternalStorageFullListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnInternalStorageFullListener;->onInternalStorageFull()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnIsSaveLapsePhoto(Ljava/lang/String;)V
    .locals 1

    .line 768
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnIsSaveLapsePhotoListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnIsSaveLapsePhotoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 769
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnIsSaveLapsePhotoListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnIsSaveLapsePhotoListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnIsSaveLapsePhotoListener;->onIsSaveLapsePhoto(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnLapseFileDuration(II)V
    .locals 1

    .line 697
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnLapseFileDuration()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnLapseFileDuration()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;->onLapseFileDuration(II)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnLapsePhotoNumber(I)V
    .locals 1

    .line 703
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnLapsePhotoNumber()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnLapsePhotoNumber()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;->onLapsePhotoNumber(I)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnMultiplePhoto(I)V
    .locals 1

    .line 746
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnMultiplePhotoListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnMultiplePhotoListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;->onMultiplePhoto(I)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnOnAEBMultiplePhotoState(I)V
    .locals 1

    .line 753
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnOnAEBMultiplePhotoStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnAEBMultiplePhotoStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 754
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnOnAEBMultiplePhotoStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnAEBMultiplePhotoStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnAEBMultiplePhotoStateListener;->onAEBMultiplePhotoState(I)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnOnHDRMultiplePhotoState(Ljava/lang/String;)V
    .locals 1

    .line 761
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnOnHDRMultiplePhotoStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnHDRMultiplePhotoStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 762
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnOnHDRMultiplePhotoStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnHDRMultiplePhotoStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnHDRMultiplePhotoStateListener;->onHDRMultiplePhotoState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnPhotoState(I)V
    .locals 1

    .line 795
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnPhotoStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnPhotoStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnPhotoStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnPhotoStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnPhotoStateListener;->onPhotoState(I)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnRecordDuration(I)V
    .locals 1

    .line 775
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnRecordDurationListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnRecordDurationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 776
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnRecordDurationListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnRecordDurationListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnRecordDurationListener;->onRecordDuration(I)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnSDFull()V
    .locals 1

    .line 407
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSDFullListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDFullListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSDFullListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDFullListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDFullListener;->onSDFull()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnSDStorageSlow()V
    .locals 1

    .line 866
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSDStorageSlowListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDStorageSlowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSDStorageSlowListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDStorageSlowListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDStorageSlowListener;->onSDStorageSlow()V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnSetAudioRate(Ljava/lang/String;)V
    .locals 1

    .line 802
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetAudioRateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetAudioRateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetAudioRateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetAudioRateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetAudioRateListener;->onSetAudioRate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnSetGestureFirstTimeTeachingState(Ljava/lang/String;)V
    .locals 1

    .line 873
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetGestureFirstTimeTeachingStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureFirstTimeTeachingStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 874
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetGestureFirstTimeTeachingStateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureFirstTimeTeachingStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureFirstTimeTeachingStateListener;->onSetGestureFirstTimeTeachingState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnSetGestureOnlyDiscerningType(Ljava/lang/String;)V
    .locals 1

    .line 885
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetGestureOnlyDiscerningTypeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureOnlyDiscerningTypeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 886
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetGestureOnlyDiscerningTypeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureOnlyDiscerningTypeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureOnlyDiscerningTypeListener;->onSetGestureOnlyDiscerningType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnSetMuxerFormat(Ljava/lang/String;)V
    .locals 1

    .line 891
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetMuxerFormatListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetMuxerFormatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetMuxerFormatListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetMuxerFormatListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetMuxerFormatListener;->onSetMuxerFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnSetRtspBitrate(Ljava/lang/String;)V
    .locals 1

    .line 640
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetRtspBitrateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetRtspBitrateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetRtspBitrateListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetRtspBitrateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetRtspBitrateListener;->onSetRtspBitrate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnSetTypeCMode(Ljava/lang/String;)V
    .locals 1

    .line 853
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetTypeCModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetTypeCModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 854
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetTypeCModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetTypeCModeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetTypeCModeListener;->onCameraNotifyOnSetTypeCMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyOnStopLapsePhoto(Ljava/lang/String;)V
    .locals 1

    .line 727
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnStopLapsePhoto()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnStopLapsePhoto()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;->onStopLapsePhoto(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyResetCameraParam(Ljava/lang/String;)V
    .locals 1

    .line 290
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyResetCameraParamListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyResetCameraParamListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyResetCameraParamListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyResetCameraParamListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyResetCameraParamListener;->resetCameraParam(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetCaptureMode(Ljava/lang/String;)V
    .locals 1

    .line 297
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetCaptureModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCaptureModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetCaptureModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCaptureModeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCaptureModeListener;->setCaptureMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetContrast(Ljava/lang/String;)V
    .locals 1

    .line 500
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyContrastListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetContrastListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyContrastListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetContrastListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetContrastListener;->setContrast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetCurrentStorageDevice(Ljava/lang/String;)V
    .locals 1

    .line 311
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetCurrentStorageDeviceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCurrentStorageDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetCurrentStorageDeviceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCurrentStorageDeviceListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCurrentStorageDeviceListener;->setCurrentStorageDevice(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetEV(Ljava/lang/String;)V
    .locals 1

    .line 462
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetEVListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetEVListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetEVListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetEVListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetEVListener;->setEV(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetExposureMode(Ljava/lang/String;)V
    .locals 1

    .line 262
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetExposureModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetExposureModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureModeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureModeListener;->setExposureMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetExposureTime(Ljava/lang/String;)V
    .locals 1

    .line 269
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetExposureTimeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureTimeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetExposureTimeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureTimeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureTimeListener;->setExposureTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetISOListener(Ljava/lang/String;)V
    .locals 1

    .line 449
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetISOListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetISOListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetISOListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetISOListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetISOListener;->setISO(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetLongTimeExposureListener(Ljava/lang/String;)V
    .locals 1

    .line 513
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetLongTimeExposureListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetLongTimeExposureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetLongTimeExposureListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetLongTimeExposureListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetLongTimeExposureListener;->setLongTimeExposure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetLuminance(Ljava/lang/String;)V
    .locals 1

    .line 494
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetLuminanceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetLuminanceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetLuminanceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetLuminanceListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetLuminanceListener;->setLuminance(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetMeteringMode(Ljava/lang/String;)V
    .locals 1

    .line 455
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifysetMeteringModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetMeteringModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifysetMeteringModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetMeteringModeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetMeteringModeListener;->setMeteringMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetPhotoFileFormat(Ljava/lang/String;)V
    .locals 1

    .line 367
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetPhotoFileFormatListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoFileFormatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetPhotoFileFormatListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoFileFormatListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoFileFormatListener;->setPhotoFileFormat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetPhotoResolutionListener(Ljava/lang/String;)V
    .locals 1

    .line 527
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetPhotoResolutionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoResolutionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetPhotoResolutionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoResolutionListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoResolutionListener;->setPhotoResolution(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetPhotoStyle(Ljava/lang/String;)V
    .locals 1

    .line 488
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetPhotoStyleListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoStyleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetPhotoStyleListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoStyleListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoStyleListener;->setPhotoStyle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetSaturation(Ljava/lang/String;)V
    .locals 1

    .line 506
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetSaturationListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetSaturationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetSaturationListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetSaturationListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetSaturationListener;->setSaturation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetShutterSpeedListener(Ljava/lang/String;)V
    .locals 1

    .line 469
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetShutterSpeedListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetShutterSpeedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetShutterSpeedListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetShutterSpeedListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetShutterSpeedListener;->setShutterSpeed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetSysTime(Ljava/lang/String;)V
    .locals 1

    .line 584
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetSysTimeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetSysTimeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyOnSetSysTimeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetSysTimeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetSysTimeListener;->onSetSysTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetVideoResolutionListener(Ljava/lang/String;)V
    .locals 1

    .line 520
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetVideoResolutionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetVideoResolutionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetVideoResolutionListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetVideoResolutionListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetVideoResolutionListener;->setVideoResolution(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySetWhiteBalance(Ljava/lang/String;)V
    .locals 1

    .line 476
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetWhiteBalanceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetWhiteBalanceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySetWhiteBalanceListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetWhiteBalanceListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetWhiteBalanceListener;->setWB(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyStartPhotoListener(Ljava/lang/String;)V
    .locals 1

    .line 534
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyStartPhotoListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartPhotoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyStartPhotoListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartPhotoListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartPhotoListener;->startPhoto(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyStartRecordListener(Ljava/lang/String;)V
    .locals 1

    .line 541
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyStartRecordListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyStartRecordListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartRecordListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartRecordListener;->startRecord(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyStatusConnection(I)V
    .locals 1

    .line 570
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyStatusConnection()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyStatusConnection()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;->getStatusConnect(I)V

    :cond_0
    return-void
.end method

.method static CameraNotifyStopDelayTimePhoto(Ljava/lang/String;)V
    .locals 1

    .line 374
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyStopDelayTimeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopDelayTimePhotoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyStopDelayTimeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopDelayTimePhotoListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopDelayTimePhotoListener;->stopDelayTimePhoto(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifyStopRecordListener(Ljava/lang/String;)V
    .locals 1

    .line 548
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyStopRecordListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifyStopRecordListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopRecordListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopRecordListener;->stopRecord(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySwitchToRecordModeListener(Ljava/lang/String;)V
    .locals 1

    .line 437
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySwitchToRecordModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToRecordModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySwitchToRecordModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToRecordModeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToRecordModeListener;->getRecordMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static CameraNotifySwitchToSnapModeListener(Ljava/lang/String;)V
    .locals 1

    .line 443
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySwitchToSnapModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToSnapModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraNotifySwitchToSnapModeListener()Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToSnapModeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToSnapModeListener;->getSnapMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static native commandConnect()I
.end method

.method public static native commandDisConnect()I
.end method

.method public static native connectAudio()I
.end method

.method public static native createLapseFiile()I
.end method

.method public static native disConnectAudio()I
.end method

.method public static native enableGesture(I)I
.end method

.method public static native enableHeadLight(I)I
.end method

.method public static native enableHistogram(I)I
.end method

.method public static native enableLogo(I)I
.end method

.method public static native enableResistBlink(I)I
.end method

.method public static native enbaleAudio(I)I
.end method

.method public static native formatStorageDevice(I)I
.end method

.method public static native getAllParameters()I
.end method

.method public static native getAudioRate()I
.end method

.method public static native getCameraVersion()I
.end method

.method public static native getCameraWorkState()I
.end method

.method public static native getContrast()I
.end method

.method public static native getCurrentExposureStatus()I
.end method

.method public static native getCurrentResolution()I
.end method

.method public static native getEmmcStorageSize()I
.end method

.method public static native getGestureFirstTimeTeachingState()I
.end method

.method public static native getGestureStat()I
.end method

.method public static native getHeadLightState()I
.end method

.method public static native getLapseFileDuration()I
.end method

.method public static native getLapseSnap()I
.end method

.method public static native getLuminance()I
.end method

.method public static native getMuxerFormat()I
.end method

.method public static native getPhotoFileFormat()I
.end method

.method public static native getPhotoStyle()I
.end method

.method public static native getRecordTime()I
.end method

.method public static native getRestPhotoNumber()I
.end method

.method public static native getRestRecordTime()I
.end method

.method public static native getRtspBitrate()I
.end method

.method public static native getSDStorageSize()I
.end method

.method public static native getSaturation()I
.end method

.method public static native getStorageDeviceType()I
.end method

.method public static native getTypeCMode()I
.end method

.method public static native getVisionVersion()I
.end method

.method public static native getWhiteBalance()I
.end method

.method public static native isSaveLapsePhoto(I)I
.end method

.method public static native registerCallbacks()I
.end method

.method public static native resetCameraParam()I
.end method

.method public static native sendAudio([BIII)I
.end method

.method public static native setAudioRate(I)I
.end method

.method public static native setCaptureMode(III)I
.end method

.method public static native setContrast(I)I
.end method

.method public static native setCurrentStorageDevice(I)I
.end method

.method public static native setEV(I)I
.end method

.method public static native setExposureMode(I)I
.end method

.method public static native setExposureTime(I)I
.end method

.method public static native setGestureFirstTimeTeachingState()I
.end method

.method public static native setGestureOnlyDiscerningType(I)I
.end method

.method public static native setISO(I)I
.end method

.method public static native setLuminance(I)I
.end method

.method public static native setMeteringMode(I)I
.end method

.method public static native setMuxerFormat(I)I
.end method

.method public static native setPhotoFileFormat(I)I
.end method

.method public static native setPhotoResolution(I)I
.end method

.method public static native setPhotoStyle(I)I
.end method

.method public static native setRtspBitrate(F)I
.end method

.method public static native setSaturation(I)I
.end method

.method public static native setSysTime(Ljava/lang/String;)I
.end method

.method public static native setTypeCMode(I)I
.end method

.method public static native setVideoResolution(I)I
.end method

.method public static native setWhiteBalance(I)I
.end method

.method public static native startPhoto()I
.end method

.method public static native startRecord()I
.end method

.method public static native statusConnect()I
.end method

.method public static native statusDisConnect()I
.end method

.method public static native stopDelayTimePhoto()I
.end method

.method public static native stopLapsePhoto()I
.end method

.method public static native stopRecord()I
.end method

.method public static native switchToRecordMode()I
.end method

.method public static native switchToSnapMode()I
.end method
