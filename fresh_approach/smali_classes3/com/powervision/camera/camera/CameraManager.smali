.class public Lcom/powervision/camera/camera/CameraManager;
.super Lcom/powervision/camera/camera/BaseCameraManager;
.source "CameraManager.java"


# static fields
.field private static instanceCamManager:Lcom/powervision/camera/camera/CameraManager;


# instance fields
.field private Tag:Ljava/lang/String;

.field private currentRecordTime:I

.field private evOnly:Z

.field private isInNormalFollow:Z

.field localAudioRate:I

.field private localFormatType:I

.field private localHScreenHeight:I

.field private localHScreenWidth:I

.field private localRemoteTag:I

.field localSurfaceHeight:I

.field localSurfaceWidth:I

.field private localVScreenHeight:I

.field private localVScreenWidth:I

.field localVSurfaceHeight:I

.field localVSurfaceWidth:I

.field private videoSurfaceHeight:I

.field private videoSurfaceWidth:I

.field private waterModeTag:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/powervision/camera/camera/BaseCameraManager;-><init>()V

    const-string v0, "Camera_Manager"

    .line 16
    iput-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->evOnly:Z

    .line 46
    iput-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->isInNormalFollow:Z

    .line 2093
    iput v0, p0, Lcom/powervision/camera/camera/CameraManager;->localRemoteTag:I

    .line 2097
    iput v0, p0, Lcom/powervision/camera/camera/CameraManager;->localFormatType:I

    .line 2150
    iput v0, p0, Lcom/powervision/camera/camera/CameraManager;->localSurfaceHeight:I

    .line 2151
    iput v0, p0, Lcom/powervision/camera/camera/CameraManager;->localSurfaceWidth:I

    .line 2173
    iput v0, p0, Lcom/powervision/camera/camera/CameraManager;->localVSurfaceHeight:I

    .line 2174
    iput v0, p0, Lcom/powervision/camera/camera/CameraManager;->localVSurfaceWidth:I

    .line 2196
    iput v0, p0, Lcom/powervision/camera/camera/CameraManager;->waterModeTag:I

    return-void
.end method

.method public static getInstance()Lcom/powervision/camera/camera/CameraManager;
    .locals 2

    .line 35
    sget-object v0, Lcom/powervision/camera/camera/CameraManager;->instanceCamManager:Lcom/powervision/camera/camera/CameraManager;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/powervision/camera/camera/CameraManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/powervision/camera/camera/CameraManager;->instanceCamManager:Lcom/powervision/camera/camera/CameraManager;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/powervision/camera/camera/CameraManager;

    invoke-direct {v1}, Lcom/powervision/camera/camera/CameraManager;-><init>()V

    sput-object v1, Lcom/powervision/camera/camera/CameraManager;->instanceCamManager:Lcom/powervision/camera/camera/CameraManager;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/camera/camera/CameraManager;->instanceCamManager:Lcom/powervision/camera/camera/CameraManager;

    return-object v0
.end method


# virtual methods
.method public addCameraAEBMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;)V
    .locals 1

    .line 1724
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraAEBMultiplePhotoStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraAEBMultiplePhotoStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraAudioConnectStateListener(Lcom/powervision/camera/camera/CameraListener$CameraAudioConnectStateListener;)V
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraAudioListenerConnectStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraAudioListenerConnectStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraConnectStateListener(Lcom/powervision/camera/camera/CameraListener$CameraConnectStateListener;)V
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraListenerConnectStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraListenerConnectStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraControllListener(Lcom/powervision/camera/camera/CameraListener$CameraControllListener;)V
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraEnableHistogramListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;)V
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyEnableHistogramListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyEnableHistogramListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraEnableResistBlinkListener(Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;)V
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraEnableResistBlinkListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraEnableResistBlinkListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraFormatStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;)V
    .locals 1

    .line 1371
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyFormatStorageDeviceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyFormatStorageDeviceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraGetCameraAllParametersListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;)V
    .locals 1

    .line 1484
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyGetCameraAllParametersListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyGetCameraAllParametersListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraGetCurrentExposureStatusListener(Lcom/powervision/camera/camera/CameraListener$CameraGetCurrentExposureStatusListener;)V
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetCurrentExposureStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetCurrentExposureStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraGetResolutionListener(Lcom/powervision/camera/camera/CameraListener$CameraGetResolutionListener;)V
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetResolutionListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetResolutionListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraGetStorageDeviceTypeListener(Lcom/powervision/camera/camera/CameraListener$CameraGetStorageDeviceTypeListener;)V
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetStorageDeviceTypeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetStorageDeviceTypeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraGetWhiteBalanceListener(Lcom/powervision/camera/camera/CameraListener$CameraGetWhiteBalanceListener;)V
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraHDRMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;)V
    .locals 1

    .line 1739
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraHDRMultiplePhotoStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraHDRMultiplePhotoStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraHistogramDataListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;)V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyHistogramDataListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyHistogramDataListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraIsSaveLapsePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraIsSaveLapsePhotoListener;)V
    .locals 1

    .line 1755
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraIsSaveLapsePhotoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraIsSaveLapsePhotoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraListener(Lcom/powervision/camera/camera/CameraListener;)V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraConnectListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraConnectListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyEnableAudioListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;)V
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyEnableAudioListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyEnableAudioListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyGetEmmcStorageSizeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetEmmcStorageSizeListener;)V
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetEmmcStorageSizeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetEmmcStorageSizeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyGetPhotoFileFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetPhotoFileFormatListener;)V
    .locals 1

    .line 1446
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyGetRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;)V
    .locals 1

    .line 1397
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRecordTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRecordTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyGetRestPhotoNumberListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;)V
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRestPhotoNumberListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRestPhotoNumberListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyGetRestRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;)V
    .locals 1

    .line 1433
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRestRecordTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRestRecordTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyGetSDStorageSizeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetSDStorageSizeListener;)V
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetSDStorageSizeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetSDStorageSizeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnCreateLapseFiile(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;)V
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnCreateLapseFiileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnCreateLapseFiileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnDelayPhoto(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;)V
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnDelayPhotoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnDelayPhotoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnEnableLogoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;)V
    .locals 1

    .line 1526
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnEnableLogoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnEnableLogoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnForwardLampListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;)V
    .locals 1

    .line 1565
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnForwardLampList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnForwardLampList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnGestureSnapGroupListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;)V
    .locals 1

    .line 1601
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureSnapGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureSnapGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnGestureSnapListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;)V
    .locals 1

    .line 1583
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureSnapList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureSnapList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnGestureStartRecordListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;)V
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureStartRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1620
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureStartRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnGestureStopRecordListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;)V
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureStopRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureStopRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnGetGestureStatListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;)V
    .locals 1

    .line 1692
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetGestureStatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetGestureStatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnGetMuxerFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;)V
    .locals 1

    .line 2055
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetMuxerFormatList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetMuxerFormatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetMuxerFormatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnGetTypeCModeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetTypeCModeListener;)V
    .locals 1

    .line 1939
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetTypeCModeListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnLapseFileDuration(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;)V
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnLapseFileDurationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnLapseFileDurationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnLapsePhotoNumber(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;)V
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnLapsePhotoNumberList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnLapsePhotoNumberList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnMultiplePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;)V
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnMultiplePhotoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnMultiplePhotoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnSetMuxerFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetMuxerFormatListener;)V
    .locals 1

    .line 2040
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetMuxerFormatList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetMuxerFormatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2041
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetMuxerFormatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnSetSysTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetSysTimeListener;)V
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetSysTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetSysTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnSetTypeCModeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetTypeCModeListener;)V
    .locals 1

    .line 1924
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetTypeCModeListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyOnStopLapsePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnStopLapsePhotoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnStopLapsePhotoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifySetPhotoFileFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifySetPhotoFileFormatListener;)V
    .locals 1

    .line 1458
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifySetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifySetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraNotifyStopDelayTimePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;)V
    .locals 1

    .line 1471
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyStopDelayTimePhotoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyStopDelayTimePhotoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnCameraSDCardSpeedDetectedListenerListener(Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSDCardSpeedDetectedListener;)V
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSDCardSpeedDetectedListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSDCardSpeedDetectedListenerList:Ljava/util/List;

    .line 1907
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSDCardSpeedDetectedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnCameraSensorHighTemperatureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;)V
    .locals 1

    .line 1887
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSensorHighTemperatureListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSensorHighTemperatureListenerList:Ljava/util/List;

    .line 1888
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSensorHighTemperatureListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnCameraStopRecordStateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnCameraStopRecordStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraStopRecordStateListenerList:Ljava/util/List;

    .line 1866
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraStopRecordStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnEnableGestureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;)V
    .locals 1

    .line 1708
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnEnableGestureListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnEnableGestureListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnEnableHeadLightListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;)V
    .locals 1

    .line 1786
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnEnableHeadLightListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnEnableHeadLightListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnGestureInternalStorageFullListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureInternalStorageFullListener;)V
    .locals 1

    .line 1819
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureInternalStorageFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureInternalStorageFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnGestureSDFullListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureSDFullListener;)V
    .locals 1

    .line 1802
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureSDFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureSDFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnGestureStartTrackListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStartTrackListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureStartTrackListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureStartTrackListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnGestureStopTrackListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStopTrackListener;)V
    .locals 1

    .line 1674
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureStopTrackListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureStopTrackListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnGetAudioRateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGetAudioRateListener;)V
    .locals 1

    .line 1847
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGetAudioRateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGetAudioRateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnGetGestureFirstTimeTeachingStateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGetGestureFirstTimeTeachingStateListener;)V
    .locals 1

    .line 2006
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGetGestureFirstTimeTeachingStateList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGetGestureFirstTimeTeachingStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2007
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGetGestureFirstTimeTeachingStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnGetPhotoStyleListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetPhotoStyleListener;)V
    .locals 1

    .line 1955
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetPhotoStyleListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnInternalStorageFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;)V
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnInternalStorageFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnInternalStorageFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnRecordDurationListener(Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;)V
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnRecordDurationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnRecordDurationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnSDFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;)V
    .locals 1

    .line 1538
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnSDFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnSDFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnSDStorageSlowListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;)V
    .locals 1

    .line 1972
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSDStorageSlowListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSDStorageSlowListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSDStorageSlowListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnSetAudioRateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnSetAudioRateListener;)V
    .locals 1

    .line 1834
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetAudioRateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetAudioRateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnSetGestureFirstTimeTeachingStateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureFirstTimeTeachingStateListener;)V
    .locals 1

    .line 1989
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetGestureFirstTimeTeachingStateList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetGestureFirstTimeTeachingStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetGestureFirstTimeTeachingStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraOnSetGestureOnlyDiscerningTypeListener(Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureOnlyDiscerningTypeListener;)V
    .locals 1

    .line 2024
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetGestureOnlyDiscerningTypeList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetGestureOnlyDiscerningTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2025
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetGestureOnlyDiscerningTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraResetCameraParamListener(Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;)V
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraResetCameraParamListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraResetCameraParamListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraResolutionChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraResolutionChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetCaptureModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;)V
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetCaptureModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetCaptureModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetContrastListener(Lcom/powervision/camera/camera/CameraListener$CameraSetContrastListener;)V
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetContrastListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetContrastListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetCurrentStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;)V
    .locals 1

    .line 1358
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetCurrentStorageDeviceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetCurrentStorageDeviceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetEVListener(Lcom/powervision/camera/camera/CameraListener$CameraSetEVListener;)V
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetEVListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetEVListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetExposureModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetExposureModeListener;)V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->nCameraSetExposureModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->nCameraSetExposureModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetExposureTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetExposureTimeListener;)V
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifySetExposureTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifySetExposureTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetIsoListener(Lcom/powervision/camera/camera/CameraListener$CameraSetIsoListener;)V
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetIsoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetIsoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetLuminanceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetLuminanceListener;)V
    .locals 1

    .line 1140
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetLuminanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetLuminanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetMeteringModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetMeteringModeListener;)V
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifySetMeteringModeListenermList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifySetMeteringModeListenermList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetPhotoStyleListener(Lcom/powervision/camera/camera/CameraListener$CameraSetPhotoStyleListener;)V
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetSaturationListener(Lcom/powervision/camera/camera/CameraListener$CameraSetSaturationListener;)V
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetSaturationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetSaturationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCameraSetWhiteBalanceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetWhiteBalanceListener;)V
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public createLapseFile()V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->createLapseFiile()I

    return-void
.end method

.method public doStartPhoto()V
    .locals 2

    const-string v0, "Base_Camera_Manager"

    const-string v1, " \u53d1\u9001\u62cd\u7167\u6307\u4ee4\u3002\u3002\u3002doStartPhoto"

    .line 461
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->isTakingPhoto:Z

    .line 463
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->startPhoto(I)I

    return-void
.end method

.method public doStartPhoto(I)V
    .locals 2

    const-string v0, "Base_Camera_Manager"

    const-string v1, " \u53d1\u9001\u62cd\u7167\u6307\u4ee4\u3002\u3002\u3002doStartPhoto"

    .line 470
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->startPhoto(I)I

    return-void
.end method

.method public enableAudio(I)V
    .locals 1

    .line 446
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localAudioState:I

    .line 447
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->enableAudio(I)I

    return-void
.end method

.method public enableGesture(I)V
    .locals 1

    .line 745
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localGestureState:I

    .line 746
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->enableGesture(I)I

    return-void
.end method

.method public enableHistogram(I)V
    .locals 1

    .line 555
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localEnableHistogramStatus:I

    .line 556
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->enableHistogram(I)I

    return-void
.end method

.method public formatStorageDevice(I)V
    .locals 1

    .line 726
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localFormatType:I

    .line 727
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->formatStorageDevice(I)I

    return-void
.end method

.method public getAebValue()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->aebValue:I

    return v0
.end method

.method public getAllParameters()V
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getAllParameters()I

    :cond_0
    return-void
.end method

.method public getAntiFlickerMode()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->mAntiFlickerMode:I

    return v0
.end method

.method public getAudioRate()V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getAudioRate()I

    return-void
.end method

.method public getCameraAudioState()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraAudioState:I

    return v0
.end method

.method public declared-synchronized getCameraConnect()Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->isCameraConnect:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraCurrentResolution()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraCurrentResolution:I

    return v0
.end method

.method public declared-synchronized getCameraCurrentStatus()I
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraCurrentStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraMuxerFormatType()I
    .locals 1

    .line 353
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->mMuxerFormatType:I

    return v0
.end method

.method public getCameraPhotoSize()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraPhotoSize:I

    return v0
.end method

.method public getCameraWorkState()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCameraWorkState()I

    return-void
.end method

.method public getContrast()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->contrast:I

    return v0
.end method

.method public getCurrentRecordTime()I
    .locals 1

    .line 2216
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->currentRecordTime:I

    return v0
.end method

.method public getCurrentResolution()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCurrentResolution()I

    return-void
.end method

.method public getDelayTime()F
    .locals 1

    .line 319
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->delayTime:F

    return v0
.end method

.method public getDeviceCurrentStorageTypeSD()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->storageTypeSDCard:Z

    return v0
.end method

.method public getEmmcAllCapacity()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->emmcAllCapacity:I

    return v0
.end method

.method public getEmmcRemainCapacity()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->emmcRemainCapacity:I

    return v0
.end method

.method public getEmmcStorageSize()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getEmmcStorageSize()I

    return-void
.end method

.method public getEvIntValue()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->evIntValue:I

    return v0
.end method

.method public getExposureMode()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->exposureMode:I

    return v0
.end method

.method public getExptimeValue()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->exptimeValue:I

    return v0
.end method

.method public getGestureDiscerningType()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->mGestureDiscerningType:I

    return v0
.end method

.method public getGestureFirstTimeTeachingState()I
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getGestureFirstTimeTeachingState()I

    move-result v0

    return v0
.end method

.method public getGestureState()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->gestureState:I

    return v0
.end method

.method public getHeadlightState()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->headlightState:I

    return v0
.end method

.method public getIsSavePhoto()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->isSavePhoto:I

    return v0
.end method

.method public getIsoType()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->isoType:I

    return v0
.end method

.method public getLapseFileDuration()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->lapseFileDuration:I

    return v0
.end method

.method public getLinesMode()I
    .locals 1

    .line 2087
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->linesMode:I

    return v0
.end method

.method public getLocaContrast()I
    .locals 1

    .line 2131
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localContrast:I

    return v0
.end method

.method public getLocalAudioRate()I
    .locals 1

    .line 2139
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localAudioRate:I

    return v0
.end method

.method public getLocalFormatType()I
    .locals 1

    .line 2107
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localFormatType:I

    return v0
.end method

.method public getLocalHScreenHeight()I
    .locals 1

    .line 2252
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localHScreenHeight:I

    return v0
.end method

.method public getLocalHScreenWidth()I
    .locals 1

    .line 2260
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localHScreenWidth:I

    return v0
.end method

.method public getLocalHeadLightState()I
    .locals 1

    .line 2143
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localHeadLightState:I

    return v0
.end method

.method public getLocalIsoValue()I
    .locals 1

    .line 2074
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localIsoValue:I

    return v0
.end method

.method public getLocalLuminance()I
    .locals 1

    .line 2127
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localLuminance:I

    return v0
.end method

.method public getLocalRemoteTag()I
    .locals 1

    .line 2111
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localRemoteTag:I

    return v0
.end method

.method public getLocalResetType()I
    .locals 1

    .line 2119
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localResetParamType:I

    return v0
.end method

.method public getLocalSaturation()I
    .locals 1

    .line 2135
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localSaturation:I

    return v0
.end method

.method public getLocalSurfaceHeight()I
    .locals 1

    .line 2154
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localSurfaceHeight:I

    return v0
.end method

.method public getLocalSurfaceWidth()I
    .locals 1

    .line 2162
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localSurfaceWidth:I

    return v0
.end method

.method public getLocalVScreenHeight()I
    .locals 1

    .line 2276
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localVScreenHeight:I

    return v0
.end method

.method public getLocalVScreenWidth()I
    .locals 1

    .line 2268
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localVScreenWidth:I

    return v0
.end method

.method public getLocalVSurfaceHeight()I
    .locals 1

    .line 2177
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localVSurfaceHeight:I

    return v0
.end method

.method public getLocalVSurfaceWidth()I
    .locals 1

    .line 2185
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localVSurfaceWidth:I

    return v0
.end method

.method public getLocalWhiteBalance()I
    .locals 1

    .line 2123
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->localWhiteBalance:I

    return v0
.end method

.method public getLuminance()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->luminance:I

    return v0
.end method

.method public getMeteringMode()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->meteringMode:I

    return v0
.end method

.method public getMultipleShotsNum()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->multipleShotsNum:I

    return v0
.end method

.method public getMuxerFormatType()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getMuxerFormat()I

    return-void
.end method

.method public getPhotoCurrentExposureState()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getCurrentExposureStatus()I

    return-void
.end method

.method public getPhotoFileFormat()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getPhotoFileFormat()I

    return-void
.end method

.method public getPhotoFormatType()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->photoFormatType:I

    return v0
.end method

.method public declared-synchronized getPhotoGraphType()I
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->photoGraphType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhotoStyle()V
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getPhotoStyle()I

    return-void
.end method

.method public getRecordTime()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getRecordTime()I

    return-void
.end method

.method public getRestPhotoNumber()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getRestPhotoNumber()I

    return-void
.end method

.method public getRestRecordTime()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getRestRecordTime()I

    return-void
.end method

.method public getSDAllCapacity()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->sdAllCapacity:I

    return v0
.end method

.method public getSDRemainingCapacity()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->sdRemainingCapacity:I

    return v0
.end method

.method public getSDStorageSize()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getSDStorageSize()I

    return-void
.end method

.method public getSaturation()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->saturation:I

    return v0
.end method

.method public getStorageDeviceType()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getStorageDeviceType()I

    return-void
.end method

.method public getStyleMode()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->styleMode:I

    return v0
.end method

.method public getTimingTime()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->timingTime:I

    return v0
.end method

.method public getTypeCMode()V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getTypeCMode()I

    return-void
.end method

.method public getVideoSurfaceHeight()I
    .locals 1

    .line 2292
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->videoSurfaceHeight:I

    return v0
.end method

.method public getVideoSurfaceWidth()I
    .locals 1

    .line 2284
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->videoSurfaceWidth:I

    return v0
.end method

.method public getWaterMarkType()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->waterMarkType:I

    return v0
.end method

.method public getWaterModeTag()I
    .locals 1

    .line 2203
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->waterModeTag:I

    return v0
.end method

.method public getWbType()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/powervision/camera/camera/CameraManager;->wbType:I

    return v0
.end method

.method public getWhiteBalance()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->getWhiteBalance()I

    return-void
.end method

.method public initCameraSdk(Z)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->initCameraSdk() ...isBuildModule= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_get_all"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    .line 64
    invoke-virtual {p0}, Lcom/powervision/camera/camera/CameraManager;->setCameraCallBackListeners()V

    :cond_0
    return-void
.end method

.method public isEmmcFull()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->isEmmcFull:Z

    return v0
.end method

.method public isEvOnly()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->evOnly:Z

    return v0
.end method

.method public isGestureRecordToPhoto()Z
    .locals 1

    .line 2207
    iget-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->isGestureRecordToPhoto:Z

    return v0
.end method

.method public isInNormalFollow()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->isInNormalFollow:Z

    return v0
.end method

.method public isLocalStorageType()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->localStorageType:Z

    return v0
.end method

.method public isSDFull()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->isSDFull:Z

    return v0
.end method

.method public isSlowSpeedCard()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->isSlowSpeedCard:Z

    return v0
.end method

.method public ismCameraEnableHistogram()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraEnableHistogram:Z

    return v0
.end method

.method public openOrCloseHeadLight(I)V
    .locals 1

    .line 801
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localHeadLightState:I

    .line 802
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->enableHeadLight(I)I

    return-void
.end method

.method public removeCameraAEBMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;)V
    .locals 1

    .line 1730
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraAEBMultiplePhotoStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraAEBMultiplePhotoStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraAudioConnectStateListener(Lcom/powervision/camera/camera/CameraListener$CameraAudioConnectStateListener;)V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraAudioListenerConnectStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraAudioListenerConnectStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraAudioListenerConnectStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraConnectStateListener(Lcom/powervision/camera/camera/CameraListener$CameraConnectStateListener;)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraListenerConnectStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraListenerConnectStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraListenerConnectStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraControllListener(Lcom/powervision/camera/camera/CameraListener$CameraControllListener;)V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraEnableHistogramListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;)V
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyEnableHistogramListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyEnableHistogramListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyEnableHistogramListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraEnableResistBlinkListener(Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;)V
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraEnableResistBlinkListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraEnableResistBlinkListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraEnableResistBlinkListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraFormatStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;)V
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyFormatStorageDeviceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyFormatStorageDeviceListenerList:Ljava/util/List;

    .line 1378
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyFormatStorageDeviceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraGetCameraAllParametersListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;)V
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyGetCameraAllParametersListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyGetCameraAllParametersListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyGetCameraAllParametersListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraGetCurrentExposureStatusListener(Lcom/powervision/camera/camera/CameraListener$CameraGetCurrentExposureStatusListener;)V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetCurrentExposureStatusListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetCurrentExposureStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetCurrentExposureStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraGetResolutionListener(Lcom/powervision/camera/camera/CameraListener$CameraGetResolutionListener;)V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetResolutionListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetResolutionListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetResolutionListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraGetStorageDeviceTypeListener(Lcom/powervision/camera/camera/CameraListener$CameraGetStorageDeviceTypeListener;)V
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetStorageDeviceTypeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetStorageDeviceTypeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetStorageDeviceTypeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraGetWhiteBalanceListener(Lcom/powervision/camera/camera/CameraListener$CameraGetWhiteBalanceListener;)V
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraGetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraHDRMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;)V
    .locals 1

    .line 1745
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraHDRMultiplePhotoStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraHDRMultiplePhotoStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraHDRMultiplePhotoStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraHistogramDataListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;)V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyHistogramDataListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyHistogramDataListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyHistogramDataListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraIsSaveLapsePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraIsSaveLapsePhotoListener;)V
    .locals 1

    .line 1761
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraIsSaveLapsePhotoListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraIsSaveLapsePhotoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraIsSaveLapsePhotoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraListener(Lcom/powervision/camera/camera/CameraListener;)V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraConnectListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraConnectListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraConnectListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyEnableAudioListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;)V
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyEnableAudioListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyEnableAudioListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyEnableAudioListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyGetEmmcStorageSizeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetEmmcStorageSizeListener;)V
    .locals 1

    .line 1427
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetEmmcStorageSizeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetEmmcStorageSizeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetEmmcStorageSizeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyGetPhotoFileFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetPhotoFileFormatListener;)V
    .locals 1

    .line 1452
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyGetRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;)V
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRecordTimeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRecordTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRecordTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyGetRestPhotoNumberListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;)V
    .locals 1

    .line 1390
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRestPhotoNumberListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRestPhotoNumberListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRestPhotoNumberListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyGetRestRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;)V
    .locals 1

    .line 1439
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRestRecordTimeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRestRecordTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetRestRecordTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyGetSDStorageSizeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetSDStorageSizeListener;)V
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetSDStorageSizeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetSDStorageSizeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyGetSDStorageSizeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnCreateLapseFiile(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;)V
    .locals 1

    .line 1281
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnCreateLapseFiileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnCreateLapseFiileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnCreateLapseFiileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnDelayPhoto(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;)V
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnDelayPhotoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnDelayPhotoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnEnableLogoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;)V
    .locals 1

    .line 1532
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnEnableLogoListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnEnableLogoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnEnableLogoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnForwardLampListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;)V
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnForwardLampList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnForwardLampList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnForwardLampList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnGestureSnapGroupListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;)V
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureSnapGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureSnapGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureSnapGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnGestureSnapListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;)V
    .locals 1

    .line 1592
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureSnapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureSnapList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureSnapList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnGestureStartRecordListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;)V
    .locals 1

    .line 1628
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureStartRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureStartRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureStartRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnGestureStopRecordListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;)V
    .locals 1

    .line 1646
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureStopRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureStopRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGestureStopRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnGetGestureStatListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;)V
    .locals 1

    .line 1698
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetGestureStatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetGestureStatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetGestureStatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnGetMuxerFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;)V
    .locals 1

    .line 2061
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetMuxerFormatList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetMuxerFormatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetMuxerFormatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnGetTypeCModeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetTypeCModeListener;)V
    .locals 1

    .line 1945
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnLapseFileDuration(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;)V
    .locals 1

    .line 1299
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnLapseFileDurationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnLapseFileDurationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnLapseFileDurationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnLapsePhotoNumber(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;)V
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnLapsePhotoNumberList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnLapsePhotoNumberList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnLapsePhotoNumberList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnMultiplePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;)V
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnMultiplePhotoListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnMultiplePhotoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnSetMuxerFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetMuxerFormatListener;)V
    .locals 1

    .line 2046
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetMuxerFormatList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetMuxerFormatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetMuxerFormatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnSetSysTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetSysTimeListener;)V
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetSysTimeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetSysTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetSysTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnSetTypeCModeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetTypeCModeListener;)V
    .locals 1

    .line 1930
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyOnStopLapsePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;)V
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnStopLapsePhotoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnStopLapsePhotoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnStopLapsePhotoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifySetPhotoFileFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifySetPhotoFileFormatListener;)V
    .locals 1

    .line 1465
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifySetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifySetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifySetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraNotifyStopDelayTimePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;)V
    .locals 1

    .line 1477
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyStopDelayTimePhotoListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyStopDelayTimePhotoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyStopDelayTimePhotoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnCameraSDCardSpeedDetectedListenerListener(Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSDCardSpeedDetectedListener;)V
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSDCardSpeedDetectedListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSDCardSpeedDetectedListenerList:Ljava/util/List;

    .line 1915
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSDCardSpeedDetectedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnCameraSensorHighTemperatureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;)V
    .locals 1

    .line 1895
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSensorHighTemperatureListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSensorHighTemperatureListenerList:Ljava/util/List;

    .line 1896
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraSensorHighTemperatureListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnCameraStopRecordStateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnCameraStopRecordStateListener;)V
    .locals 1

    .line 1873
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraStopRecordStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraStopRecordStateListenerList:Ljava/util/List;

    .line 1874
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnCameraStopRecordStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnEnableGestureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;)V
    .locals 1

    .line 1714
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnEnableGestureListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnEnableGestureListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnEnableGestureListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnEnableHeadLightListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;)V
    .locals 1

    .line 1792
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnEnableHeadLightListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnEnableHeadLightListenerList:Ljava/util/List;

    .line 1793
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnEnableHeadLightListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnGestureInternalStorageFullListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureInternalStorageFullListener;)V
    .locals 1

    .line 1826
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureInternalStorageFullListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureInternalStorageFullListenerList:Ljava/util/List;

    .line 1827
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureInternalStorageFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnGestureSDFullListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureSDFullListener;)V
    .locals 1

    .line 1808
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureSDFullListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureSDFullListenerList:Ljava/util/List;

    .line 1809
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureSDFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnGestureStartTrackListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStartTrackListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureStartTrackListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureStartTrackListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureStartTrackListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnGestureStopTrackListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStopTrackListener;)V
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureStopTrackListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureStopTrackListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGestureStopTrackListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnGetAudioRateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGetAudioRateListener;)V
    .locals 1

    .line 1853
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGetAudioRateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGetAudioRateListenerList:Ljava/util/List;

    .line 1854
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGetAudioRateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnGetGestureFirstTimeTeachingStateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGetGestureFirstTimeTeachingStateListener;)V
    .locals 1

    .line 2013
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGetGestureFirstTimeTeachingStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGetGestureFirstTimeTeachingStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnGetGestureFirstTimeTeachingStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnGetPhotoStyleListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetPhotoStyleListener;)V
    .locals 1

    .line 1962
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnGetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnInternalStorageFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;)V
    .locals 1

    .line 1556
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnInternalStorageFullListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnInternalStorageFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnInternalStorageFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnRecordDurationListener(Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;)V
    .locals 1

    .line 1776
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnRecordDurationListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnRecordDurationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnRecordDurationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnSDFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;)V
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnSDFullListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnSDFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->cameraNotifyOnSDFullListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnSDStorageSlowListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;)V
    .locals 1

    .line 1978
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSDStorageSlowListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSDStorageSlowListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSDStorageSlowListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnSetAudioRateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnSetAudioRateListener;)V
    .locals 1

    .line 1840
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetAudioRateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetAudioRateListenerList:Ljava/util/List;

    .line 1841
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetAudioRateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnSetGestureFirstTimeTeachingStateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureFirstTimeTeachingStateListener;)V
    .locals 1

    .line 1996
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetGestureFirstTimeTeachingStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetGestureFirstTimeTeachingStateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifyOnSDStorageSlowListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraOnSetGestureOnlyDiscerningTypeListener(Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureOnlyDiscerningTypeListener;)V
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetGestureOnlyDiscerningTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetGestureOnlyDiscerningTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2032
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraOnSetGestureOnlyDiscerningTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraResetCameraParamListener(Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;)V
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraResetCameraParamListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraResetCameraParamListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraResetCameraParamListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraResolutionChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraResolutionChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraResolutionChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetCaptureModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;)V
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetCaptureModeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetCaptureModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetCaptureModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetContrastListener(Lcom/powervision/camera/camera/CameraListener$CameraSetContrastListener;)V
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetContrastListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetContrastListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetContrastListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetCurrentStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;)V
    .locals 1

    .line 1364
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetCurrentStorageDeviceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetCurrentStorageDeviceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetCurrentStorageDeviceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetEVListener(Lcom/powervision/camera/camera/CameraListener$CameraSetEVListener;)V
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetEVListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetEVListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetEVListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetExposureModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetExposureModeListener;)V
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->nCameraSetExposureModeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->nCameraSetExposureModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->nCameraSetExposureModeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetExposureTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetExposureTimeListener;)V
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifySetExposureTimeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifySetExposureTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifySetExposureTimeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetIsoListener(Lcom/powervision/camera/camera/CameraListener$CameraSetIsoListener;)V
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetIsoListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetIsoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetIsoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetLuminanceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetLuminanceListener;)V
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetLuminanceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetLuminanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetLuminanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetMeteringModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetMeteringModeListener;)V
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifySetMeteringModeListenermList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifySetMeteringModeListenermList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraNotifySetMeteringModeListenermList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetPhotoStyleListener(Lcom/powervision/camera/camera/CameraListener$CameraSetPhotoStyleListener;)V
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetSaturationListener(Lcom/powervision/camera/camera/CameraListener$CameraSetSaturationListener;)V
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetSaturationListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetSaturationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetSaturationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCameraSetWhiteBalanceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetWhiteBalanceListener;)V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraSetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resetCameraParam(I)V
    .locals 0

    .line 685
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localResetParamType:I

    .line 686
    iget-object p1, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/PowerCamSDK;->resetCameraParam()I

    return-void
.end method

.method public sendAntiFlickerMode(I)V
    .locals 1

    .line 677
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localAntiFlickerMode:I

    .line 678
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->enableResistBlink(I)I

    return-void
.end method

.method public sendAudio([BIII)I
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powervision/natives/PowerCamSDK;->sendAudio([BIII)I

    move-result p1

    return p1
.end method

.method public setAudioRate(I)V
    .locals 2

    .line 811
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localAudioRate:I

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  setAudioRate = value ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setAudioRate"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setAudioRate(I)I

    return-void
.end method

.method public setCameraAudioState(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraAudioState:I

    .line 142
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localAudioState:I

    return-void
.end method

.method public declared-synchronized setCameraCurrentStatus(I)V
    .locals 0

    monitor-enter p0

    .line 127
    :try_start_0
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->mCameraCurrentStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCameraSysTime(Ljava/lang/String;)V
    .locals 1

    .line 761
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setSysTime(Ljava/lang/String;)I

    goto :goto_0

    .line 764
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/camera/CameraManager;->Tag:Ljava/lang/String;

    const-string v0, " setCameraSysTime ()... params format error..."

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCaptureMode(II)V
    .locals 2

    .line 693
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localPhotoType:I

    .line 694
    iput p2, p0, Lcom/powervision/camera/camera/CameraManager;->localPhotoValue:I

    .line 695
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/powervision/natives/PowerCamSDK;->setCaptureMode(III)I

    return-void
.end method

.method public setCaptureMode(III)V
    .locals 1

    .line 702
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localPhotoType:I

    .line 703
    iput p2, p0, Lcom/powervision/camera/camera/CameraManager;->localPhotoValue:I

    .line 704
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/natives/PowerCamSDK;->setCaptureMode(III)I

    return-void
.end method

.method public setContrast(I)V
    .locals 2

    const/4 v0, -0x3

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    const/4 p1, -0x3

    .line 655
    :cond_1
    :goto_0
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localContrast:I

    .line 656
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setContrast(I)I

    return-void
.end method

.method public setContrastValue(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->contrast:I

    return-void
.end method

.method public setCurrentRecordTime(I)V
    .locals 0

    .line 2220
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->currentRecordTime:I

    return-void
.end method

.method public setCurrentStorageDevice(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 718
    :goto_0
    iput-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->localStorageType:Z

    .line 719
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setCurrentStorageDevice(I)I

    return-void
.end method

.method public setEV(I)V
    .locals 1

    .line 592
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localEvIntValue:I

    .line 593
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setEV(I)I

    return-void
.end method

.method public setEnableLogo(I)V
    .locals 1

    .line 775
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localWaterMarkType:I

    .line 776
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->enableLogo(I)I

    return-void
.end method

.method public setEvOnly(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/powervision/camera/camera/CameraManager;->evOnly:Z

    return-void
.end method

.method public setExposureMode(I)V
    .locals 1

    .line 576
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localExposureMode:I

    .line 577
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setExposureMode(I)I

    return-void
.end method

.method public setExposureTime(I)V
    .locals 1

    .line 584
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localShutterValue:I

    .line 585
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setExposureTime(I)I

    return-void
.end method

.method public setGestureFirstTimeTeachingState()I
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->setGestureFirstTimeTeachingState()I

    move-result v0

    return v0
.end method

.method public setGestureOnlyDiscerningType(I)I
    .locals 1

    .line 859
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localGestureDiscerningType:I

    .line 860
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setGestureOnlyDiscerningType(I)I

    move-result p1

    return p1
.end method

.method public setInNormalFollow(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/powervision/camera/camera/CameraManager;->isInNormalFollow:Z

    return-void
.end method

.method public setIsSaveLapsePhoto(I)V
    .locals 1

    .line 735
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localIsSavePhoto:I

    .line 736
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->isSaveLapsePhoto(I)I

    return-void
.end method

.method public setIso(I)V
    .locals 1

    const/4 v0, 0x6

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/4 p1, 0x6

    .line 568
    :cond_1
    :goto_0
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localIsoValue:I

    .line 569
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setISO(I)I

    return-void
.end method

.method public setLinesMode(I)V
    .locals 0

    .line 2083
    iput p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->linesMode:I

    return-void
.end method

.method public setLocalHScreenHeight(I)V
    .locals 0

    .line 2256
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localHScreenHeight:I

    return-void
.end method

.method public setLocalHScreenWidth(I)V
    .locals 0

    .line 2264
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localHScreenWidth:I

    return-void
.end method

.method public setLocalRemoteTag(I)V
    .locals 0

    .line 2115
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localRemoteTag:I

    return-void
.end method

.method public setLocalSurfaceHeight(I)V
    .locals 0

    .line 2158
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localSurfaceHeight:I

    return-void
.end method

.method public setLocalSurfaceWidth(I)V
    .locals 0

    .line 2166
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localSurfaceWidth:I

    return-void
.end method

.method public setLocalVScreenHeight(I)V
    .locals 0

    .line 2280
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localVScreenHeight:I

    return-void
.end method

.method public setLocalVScreenWidth(I)V
    .locals 0

    .line 2272
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localVScreenWidth:I

    return-void
.end method

.method public setLocalVSurfaceHeight(I)V
    .locals 0

    .line 2181
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localVSurfaceHeight:I

    return-void
.end method

.method public setLocalVSurfaceWidth(I)V
    .locals 0

    .line 2189
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localVSurfaceWidth:I

    return-void
.end method

.method public setLuminance(I)V
    .locals 2

    const/4 v0, -0x3

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    const/4 p1, -0x3

    .line 642
    :cond_1
    :goto_0
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localLuminance:I

    .line 643
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setLuminance(I)I

    return-void
.end method

.method public setLuminanceValue(I)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->luminance:I

    return-void
.end method

.method public setMeteringMode(I)V
    .locals 1

    const/4 v0, 0x2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/4 p1, 0x2

    .line 605
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setMeteringMode(I)I

    return-void
.end method

.method public setMuxerFormat(I)I
    .locals 1

    .line 835
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localMuxerFormatType:I

    .line 836
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setMuxerFormat(I)I

    move-result p1

    return p1
.end method

.method public setMuxerFormatType(I)I
    .locals 1

    .line 867
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localMuxerFormatType:I

    .line 868
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setMuxerFormat(I)I

    move-result p1

    return p1
.end method

.method public setPhotoFileFormat(I)V
    .locals 1

    .line 753
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localPhotoFileFormat:I

    .line 754
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setPhotoFileFormat(I)I

    return-void
.end method

.method public setPhotoGraphType(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->photoGraphType:I

    return-void
.end method

.method public setPhotoResolution(I)V
    .locals 1

    .line 544
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localPhotoResolution:I

    .line 545
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setPhotoResolution(I)I

    return-void
.end method

.method public setPhotoStyle(I)V
    .locals 1

    .line 629
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localStyleMode:I

    .line 630
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setPhotoStyle(I)I

    return-void
.end method

.method public setSaturation(I)V
    .locals 2

    const/4 v0, -0x3

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    const/4 p1, -0x3

    .line 668
    :cond_1
    :goto_0
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localSaturation:I

    .line 669
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setSaturation(I)I

    return-void
.end method

.method public setSaturationValue(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->saturation:I

    return-void
.end method

.method public setTypeCMode(I)V
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setTypeCMode(I)I

    return-void
.end method

.method public setVedioResolution(I)V
    .locals 2

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  set...\u5206\u8fa8\u7387...    resolution ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_fps"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localVideResolution:I

    .line 535
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setVedioResolution(I)I

    return-void
.end method

.method public setVideoSurfaceHeight(I)V
    .locals 0

    .line 2296
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->videoSurfaceHeight:I

    return-void
.end method

.method public setVideoSurfaceWidth(I)V
    .locals 0

    .line 2288
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->videoSurfaceWidth:I

    return-void
.end method

.method public setWaterModeTag(I)V
    .locals 0

    .line 2199
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->waterModeTag:I

    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/powervision/camera/camera/CameraManager;->getWbType()I

    move-result p1

    if-ge p1, v0, :cond_0

    const/16 p1, 0x7d0

    .line 620
    :cond_0
    iput p1, p0, Lcom/powervision/camera/camera/CameraManager;->localWhiteBalance:I

    .line 621
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PowerCamSDK;->setWhiteBalance(I)I

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set camera ... wb ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "custom_wb"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startRecordVideo()V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->startRecord()I

    return-void
.end method

.method public stopDelayTimePhoto()V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->stopDelayTimePhoto()I

    return-void
.end method

.method public stopLapsePhoto()V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->stopLapsePhoto()I

    return-void
.end method

.method public stopRecordVideo()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->stopRecord()I

    return-void
.end method

.method public switchToRecordMode()V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->switchToRecordMode()I

    return-void
.end method

.method public switchToSnapMode()V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/powervision/camera/camera/CameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->switchToSnapMode()I

    return-void
.end method

.method public takingPhoto()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/powervision/camera/camera/CameraManager;->isTakingPhoto:Z

    return v0
.end method
