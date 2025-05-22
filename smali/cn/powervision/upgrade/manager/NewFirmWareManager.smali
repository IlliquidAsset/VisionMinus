.class public Lcn/powervision/upgrade/manager/NewFirmWareManager;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;
.implements Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteGetBootLoaderStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;,
        Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;,
        Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;,
        Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;
    }
.end annotation


# static fields
.field public static AP03RC_INSTALL_PATH:Ljava/lang/String; = null

.field public static AP03RC_LOCAL_PATH:Ljava/lang/String; = null

.field public static AP03_BODY_INSTALL_PATH:Ljava/lang/String; = null

.field public static AP03_BODY_LOCAL_PATH:Ljava/lang/String; = null

.field public static CONNECT_TYPE:I = 0x0

.field public static DETAIL_TYPE:Ljava/lang/String; = null

.field public static DOWNLOADRESULT:I = 0x0

.field public static DOWNLOAD_DEVICE:Ljava/lang/String; = null

.field public static ERROR_CODE:Ljava/lang/String; = "ERROR_CODE"

.field public static final NEWEST_PATH:Ljava/lang/String;

.field public static RELEASE_NOTE:Ljava/lang/String; = null

.field public static final SER_PATH:Ljava/lang/String;

.field public static SIZE:Ljava/lang/String; = null

.field public static STATUS:I = 0x0

.field public static UPDATE_DEVICE:Ljava/lang/String; = null

.field public static UPGRADE_RES:Ljava/lang/String; = "UPGRADE_RES"

.field public static baseFirmWareFilePath:Ljava/lang/String;

.field public static basePath:Ljava/lang/String;

.field public static volatile needDownload:Z

.field private static newFirmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

.field public static updat_packet:[B

.field public static updatingDl01:Z


# instance fields
.field public NotUpgrading:Z

.field VERSION:I

.field private ap03_dev_firmwares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation
.end field

.field private ap03_firmwares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation
.end field

.field private ap03rc_dev_firmwares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation
.end field

.field private ap03rc_firmwares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation
.end field

.field askNetListener:Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;

.field volatile canCheck:Z

.field volatile canZip:Z

.field commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

.field dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

.field dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

.field failedCount:I

.field handlerThread:Landroid/os/HandlerThread;

.field private historyMapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public lastArmStatus:I

.field logTag:Ljava/lang/String;

.field private mBodyDownloadUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBootloaderStatus:I

.field mHandler:Landroid/os/Handler;

.field private mHasConf:Z

.field private mModelDownloadInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteDownloadUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpgradeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;",
            ">;"
        }
    .end annotation
.end field

.field matchThread:Ljava/lang/Thread;

.field onArmStatusWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;

.field public onBodyConnectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

.field onGetAp03VersionListener:Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;

.field re_lock:Ljava/lang/Object;

.field remoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

.field volatile requestCount:I

.field tryCount:I

.field private zipFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/powervision/base/base/BaseApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->basePath:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "firmware"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->baseFirmWareFilePath:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/MATCH/NEWEST/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NEWEST_PATH:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/MATCH/SERVER/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->SER_PATH:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->baseFirmWareFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EGGX"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03_BODY_LOCAL_PATH:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->baseFirmWareFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EGGX_INSTALL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03_BODY_INSTALL_PATH:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->baseFirmWareFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EGGXRC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03RC_LOCAL_PATH:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->baseFirmWareFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EGGXRC_INSTALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03RC_INSTALL_PATH:Ljava/lang/String;

    const/4 v0, 0x1

    .line 140
    sput v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->DOWNLOADRESULT:I

    const-string v0, "RELEASE_NOTE"

    .line 142
    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->RELEASE_NOTE:Ljava/lang/String;

    const-string v0, "DETAIL_TYPE"

    .line 144
    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->DETAIL_TYPE:Ljava/lang/String;

    const/4 v0, -0x1

    .line 146
    sput v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->CONNECT_TYPE:I

    const-string v1, "DOWNLOAD_DEVICE"

    .line 148
    sput-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->DOWNLOAD_DEVICE:Ljava/lang/String;

    const-string v1, "UPLOAD_DEVICE"

    .line 151
    sput-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPDATE_DEVICE:Ljava/lang/String;

    const-string v1, "SIZE"

    .line 153
    sput-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->SIZE:Ljava/lang/String;

    const/4 v1, 0x0

    .line 159
    sput-boolean v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updatingDl01:Z

    .line 167
    sput v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->STATUS:I

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 187
    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    .line 188
    sput-boolean v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->needDownload:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBodyDownloadUrls:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mRemoteDownloadUrls:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mModelDownloadInfos:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mHasConf:Z

    .line 165
    iput-boolean v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NotUpgrading:Z

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->historyMapList:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    const-string v0, "lzqFirm"

    .line 180
    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->logTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 427
    iput v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->lastArmStatus:I

    .line 428
    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$1;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$1;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    iput-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onArmStatusWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;

    .line 461
    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$2;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$2;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    iput-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->remoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    .line 548
    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$3;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$3;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    iput-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    .line 576
    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$4;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$4;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    iput-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    .line 610
    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    iput-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onBodyConnectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    const/4 v1, 0x2

    .line 743
    iput v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBootloaderStatus:I

    .line 1415
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->re_lock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1906
    iput v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    const/4 v2, 0x5

    .line 2256
    iput v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->tryCount:I

    .line 2257
    iput v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->VERSION:I

    .line 2945
    iput-boolean v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->canCheck:Z

    const/4 v2, 0x0

    .line 2946
    iput-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->matchThread:Ljava/lang/Thread;

    .line 3030
    iput-boolean v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->canZip:Z

    .line 3134
    iput-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    const-string v1, "\u521d\u59cb\u5316 NewFirmWareManager"

    .line 414
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    .line 416
    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03OnIntegrationUpgradeGetVersionStatusListener(Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;)V

    .line 418
    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setRemoteGetBootLoaderStatusListener(Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteGetBootLoaderStatusListener;)V

    .line 419
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->addAp03RemoteModeResultListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    .line 420
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onBodyConnectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;)V

    .line 421
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 422
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    .line 423
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->remoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addMcuConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;)V

    .line 424
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onArmStatusWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03NotifyOnArmStatusWarningListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;)V

    return-void
.end method

.method static synthetic access$002(Lcn/powervision/upgrade/manager/NewFirmWareManager;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBootloaderStatus:I

    return p1
.end method

.method static synthetic access$100(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_notBootLoader()V

    return-void
.end method

.method static synthetic access$200(Lcn/powervision/upgrade/manager/NewFirmWareManager;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onGetDl01Version(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onDl01Connected()V

    return-void
.end method

.method static synthetic access$400(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->checkRequestCount()V

    return-void
.end method

.method static synthetic access$500(Lcn/powervision/upgrade/manager/NewFirmWareManager;)Ljava/util/ArrayList;
    .locals 0

    .line 95
    iget-object p0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBodyDownloadUrls:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcn/powervision/upgrade/manager/NewFirmWareManager;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mHasConf:Z

    return p0
.end method

.method static synthetic access$602(Lcn/powervision/upgrade/manager/NewFirmWareManager;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mHasConf:Z

    return p1
.end method

.method static synthetic access$700(Lcn/powervision/upgrade/manager/NewFirmWareManager;)Ljava/util/ArrayList;
    .locals 0

    .line 95
    iget-object p0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mModelDownloadInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcn/powervision/upgrade/manager/NewFirmWareManager;)Ljava/util/ArrayList;
    .locals 0

    .line 95
    iget-object p0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mRemoteDownloadUrls:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkRequestCount()V
    .locals 4

    .line 1909
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->re_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1910
    :try_start_0
    iget v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestCount:I

    .line 1911
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "lzqFirm"

    .line 1912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRequestCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 1917
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideloading()V

    .line 1919
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBodyDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mModelDownloadInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mRemoteDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "lzqFirm"

    .line 1925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0d\u4e0b\u8f7d failedCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    iget v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 1929
    sput-boolean v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->needDownload:Z

    .line 1930
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->askNetListener:Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;

    if-eqz v0, :cond_2

    .line 1931
    invoke-interface {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;->net_error()V

    goto :goto_1

    .line 1920
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showDownLoad()V

    .line 1921
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->askNetListener:Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;

    if-eqz v0, :cond_2

    .line 1922
    invoke-interface {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;->commplete()V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 1911
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private compareLocalBodyWithServer(Ljava/lang/String;)V
    .locals 2

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u8bf7\u6c42Body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1535
    iput-boolean v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mHasConf:Z

    .line 1537
    invoke-static {}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getInstance()Lcn/powervision/upgrade/api/UpgradeAPIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getFirmwareApi()Lcn/powervision/upgrade/api/FirmwareApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/powervision/upgrade/api/FirmwareApi;->firmwareDownload(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1538
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1539
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$9;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    .line 1540
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private compareModeWithServer(Ljava/lang/String;)V
    .locals 3

    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u8bf7\u6c42 Model localModelVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    invoke-static {}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getInstance()Lcn/powervision/upgrade/api/UpgradeAPIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getFirmwareApi()Lcn/powervision/upgrade/api/FirmwareApi;

    move-result-object v0

    const-string v1, "AP03"

    const-string v2, "MODEL"

    invoke-interface {v0, p1, v1, v2, v2}, Lcn/powervision/upgrade/api/FirmwareApi;->modelRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1724
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1725
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    .line 1726
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private compareRemoteDl01WitchServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " \u8bf7\u6c42 dl01 "

    .line 1778
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    invoke-static {}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getInstance()Lcn/powervision/upgrade/api/UpgradeAPIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getFirmwareApi()Lcn/powervision/upgrade/api/FirmwareApi;

    move-result-object v0

    const-string v1, "AP03RC"

    .line 1780
    invoke-interface {v0, p1, v1, p2, p2}, Lcn/powervision/upgrade/api/FirmwareApi;->remoteFirmware(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1779
    invoke-static {v0}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1781
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1782
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;

    invoke-direct {v1, p0, p2, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private compareRemoteMCUWitchServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " \u8bf7\u6c42 MCU  "

    .line 1846
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    invoke-static {}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getInstance()Lcn/powervision/upgrade/api/UpgradeAPIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getFirmwareApi()Lcn/powervision/upgrade/api/FirmwareApi;

    move-result-object v0

    const-string v1, "AP03RC"

    .line 1848
    invoke-interface {v0, p1, v1, p2, p2}, Lcn/powervision/upgrade/api/FirmwareApi;->remoteFirmware(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1847
    invoke-static {v0}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1849
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1850
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$13;

    invoke-direct {v1, p0, p2, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$13;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private findBinFile(Ljava/lang/String;[Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 2375
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 2376
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2377
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;
    .locals 7

    .line 2839
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 2841
    array-length v0, p1

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 2843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2845
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 2846
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    .line 2847
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2848
    array-length v5, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 2851
    :cond_0
    new-instance v5, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {v5}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    .line 2852
    aget-object v6, v4, v2

    iput-object v6, v5, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 2853
    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Lcn/powervision/upgrade/model/entity/Firmware;->isForce:I

    .line 2854
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    .line 2855
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    .line 2859
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 2860
    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->sortFirmVersion(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2861
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/model/entity/Firmware;

    return-object p1

    .line 2864
    :cond_3
    new-instance p1, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {p1}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    const-string v0, "0.0.0"

    .line 2865
    iput-object v0, p1, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    return-object p1
.end method

.method private findModeNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;
    .locals 7

    .line 2804
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 2806
    array-length v0, p1

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 2808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2810
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 2811
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    .line 2812
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2813
    array-length v5, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 2816
    :cond_0
    new-instance v5, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {v5}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    .line 2817
    aget-object v6, v4, v2

    iput-object v6, v5, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 2818
    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Lcn/powervision/upgrade/model/entity/Firmware;->isForce:I

    .line 2819
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    .line 2820
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    .line 2824
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 2825
    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->sortFirmVersion(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2826
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/model/entity/Firmware;

    return-object p1

    .line 2829
    :cond_3
    new-instance p1, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {p1}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    const-string v0, "2.0.0"

    .line 2830
    iput-object v0, p1, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    return-object p1
.end method

.method private findModelNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;
    .locals 7

    .line 2614
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 2616
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 2618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 2620
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 2621
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    .line 2622
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2623
    array-length v5, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 2626
    :cond_0
    new-instance v5, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {v5}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    .line 2627
    aget-object v6, v4, v1

    iput-object v6, v5, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 2628
    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Lcn/powervision/upgrade/model/entity/Firmware;->isForce:I

    .line 2629
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    .line 2630
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_4

    .line 2634
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 2635
    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->sortFirmVersion(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2637
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 2638
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v0, v0, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    const-string v3, ".0.0"

    .line 2639
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2648
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/model/entity/Firmware;

    return-object p1

    .line 2651
    :cond_4
    new-instance p1, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {p1}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    const-string v0, "0.0.0"

    .line 2652
    iput-object v0, p1, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    return-object p1
.end method

.method public static get()Lcn/powervision/upgrade/manager/NewFirmWareManager;
    .locals 1

    .line 723
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->newFirmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;-><init>()V

    sput-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->newFirmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    .line 726
    :cond_0
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->newFirmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    return-object v0
.end method

.method private getLocalBodyConfigVersion()V
    .locals 7

    const-string v0, "lzqFix"

    const-string v1, "1.body_step  \u8bfb\u914d\u7f6e\u597d\u7684\u6587\u4ef6\u5939\u540d\u79f0"

    .line 2658
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2667
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2668
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03_BODY_LOCAL_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2670
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const-string v2, "lzqFirm"

    .line 2671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bfbAP03\u7684files:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .line 2673
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_f

    .line 2674
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2675
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2676
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "AC"

    .line 2677
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v4, "lzqFirm"

    .line 2678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eAC\u7248\u672c\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setAcVersion(Ljava/lang/String;)V

    .line 2680
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2682
    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2683
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "lzqFirm"

    .line 2684
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eSN\u7248\u672c\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SN"

    .line 2685
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2687
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setSnVersion(Ljava/lang/String;)V

    .line 2688
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2689
    :cond_2
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2690
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "lzqFirm"

    .line 2691
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eFS\u7248\u672c\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "FS"

    .line 2692
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2693
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setFsVersion(Ljava/lang/String;)V

    .line 2694
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2695
    :cond_3
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2696
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "MC"

    .line 2697
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v4, "lzqFirm"

    .line 2698
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eMC\u7248\u672c\u53f7 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setMcVersion(Ljava/lang/String;)V

    .line 2700
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2701
    :cond_4
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MODEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2702
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findModeNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "lzqFirm"

    .line 2703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eMODEL\u7248\u672c\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MODEL"

    .line 2704
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2705
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setModelVersion(Ljava/lang/String;)V

    .line 2706
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2707
    :cond_5
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2708
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "lzqFirm"

    .line 2709
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eFC\u7248\u672c\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "FC"

    .line 2710
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2711
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setFcVersion(Ljava/lang/String;)V

    .line 2712
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2713
    :cond_6
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2714
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "lzqFirm"

    .line 2715
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eFV\u7248\u672c\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setFvVersion(Ljava/lang/String;)V

    const-string v4, "FV"

    .line 2717
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2718
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2719
    :cond_7
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OTA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2720
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "lzqFirm"

    .line 2721
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eOTA\u7248\u672c\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setOtaVersion(Ljava/lang/String;)V

    const-string v4, "OTA"

    .line 2723
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2724
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2725
    :cond_8
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2726
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "lzqFirm"

    .line 2727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eGM\u7248\u672c\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "GM"

    .line 2728
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2729
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setGmVersion(Ljava/lang/String;)V

    .line 2730
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2731
    :cond_9
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2732
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "lzqFirm"

    .line 2733
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eDV\u7248\u672c\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDvVersion(Ljava/lang/String;)V

    const-string v4, "DV"

    .line 2735
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2737
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2738
    :cond_a
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2739
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "lzqFirm"

    .line 2740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eDL\u7248\u672c\u53f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDlVersion(Ljava/lang/String;)V

    const-string v4, "DL"

    .line 2742
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2744
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2745
    :cond_b
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "USB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2746
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "lzqFirm"

    .line 2747
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eUSB\u7248\u672c\u53f7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setUsbVersion(Ljava/lang/String;)V

    const-string v4, "USB"

    .line 2749
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2751
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2752
    :cond_c
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NFZ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2753
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "lzqFirm"

    .line 2754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.body_step  \u8bbe\u7f6eNFZ\u7248\u672c\u53f7:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setNfzVersion(Ljava/lang/String;)V

    const-string v4, "NFZ"

    .line 2756
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2758
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2759
    :cond_d
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2760
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    .line 2761
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setConfigVersion(Ljava/lang/String;)V

    const-string v4, "config"

    .line 2762
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2763
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2769
    :cond_f
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getLocalRemoteConfigVersion()V
    .locals 7

    .line 2776
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2777
    :try_start_0
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2778
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03RC_LOCAL_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2779
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2780
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 2781
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 2782
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2783
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2784
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "DL"

    .line 2785
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2786
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2787
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDL01VERSION(Ljava/lang/String;)V

    const-string v4, "lzqFirm"

    .line 2788
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " local  \u9065\u63a7\u5668DL01 \uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2789
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2790
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->findItemNewestVersion(Ljava/io/File;)Lcn/powervision/upgrade/model/entity/Firmware;

    move-result-object v3

    const-string v4, "RC"

    .line 2791
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 2792
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2793
    iget-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v4}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setMCUVERSION(Ljava/lang/String;)V

    const-string v4, "lzqFirm"

    .line 2794
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " local  \u9065\u63a7\u5668MCU \uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2799
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1692
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 1696
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 1697
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1699
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 1705
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1707
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1712
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1714
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    .line 1701
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_2

    .line 1705
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 1707
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1712
    :cond_2
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 1714
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    const/4 p0, 0x0

    return-object p0

    :goto_5
    if-eqz p0, :cond_3

    .line 1705
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p0

    .line 1707
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1712
    :cond_3
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    .line 1714
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1715
    :goto_7
    throw v1
.end method

.method private notify_bodyUpdate()V
    .locals 4

    const-string v0, "lzqFirm"

    const-string v1, "notify_bodyUpdate"

    .line 2146
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2148
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 2149
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 2150
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->showBodyUpdate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_downloadFailed()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 374
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 375
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->downloadFailed()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_hideloading()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 338
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 339
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->hideLoading()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_isBootLoader()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 287
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    const/4 v1, 0x0

    .line 288
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->isBootLoader()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_notBootLoader()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 295
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 296
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 297
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->isNotBootLoader()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_openTheInternet()V
    .locals 3

    .line 389
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 390
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 391
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->openTheInterNet()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_reset()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 365
    sput-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v1, 0x0

    .line 366
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 367
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_showBodyForceUpdate()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 329
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 330
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 331
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->showBodyForceUpdate()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_showDl01ForceUpdate()V
    .locals 3

    .line 239
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v1, 0x2

    aput-byte v1, v0, v1

    .line 240
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 241
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->showDl01ForceUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_showDl01Update()V
    .locals 3

    .line 231
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 232
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 233
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->showDl01Update()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_showDownLoad()V
    .locals 3

    const-string v0, "lzqFirm"

    const-string v1, "  notify_showDownLoad \u663e\u793a \u4e0b\u8f7d"

    .line 345
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 347
    sput-boolean v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->needDownload:Z

    const/4 v1, 0x0

    .line 348
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->showFirmwareDownLoad()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_showDownLoadApp()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 322
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 323
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->showDownloadApp()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_showForceApp()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 225
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 226
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->showForceApp()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_showForceDownLoad()V
    .locals 3

    const-string v0, "lzqFirm"

    const-string v1, "  notify_showForceDownLoad \u663e\u793a \u5f3a\u5236\u4e0b\u8f7d"

    .line 354
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 356
    sput-boolean v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->needDownload:Z

    const/4 v1, 0x0

    .line 357
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 358
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->showFirmwareForceDownLoad()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_showMcuForceUpdate()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 277
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v1, 0x0

    .line 278
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 279
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->showMcuForceUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_showMcuUpdate()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 269
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v2, 0x1

    aput-byte v2, v1, v2

    const/4 v1, 0x0

    .line 270
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 271
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->showMcuUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_showloading()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 218
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->showLoading()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notify_state()V
    .locals 3

    const-string v0, "lzqFirm"

    const-string v1, "notify_state \u5565\u4e5f\u4e0d\u5e72 \u8d70\u5230\u8fd9\u6b65"

    .line 2138
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2140
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->notify_state()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDl01Connected()V
    .locals 2

    .line 3015
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$18;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$18;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3026
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onGetDl01Version(Ljava/lang/String;)V
    .locals 6

    const-string v0, "lzqFirm"

    .line 3137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDl01:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lzqFirm"

    .line 3138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldDevVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_DL01VERSION()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3139
    sget-boolean v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updatingDl01:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "0.0.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3140
    sput-boolean v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updatingDl01:Z

    .line 3141
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_DL01VERSION()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_DL01VERSION()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lzqFirm"

    const-string v2, "\u63d0\u793aDl01\u5347\u7ea7\u6210\u529f"

    .line 3142
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    if-eqz v0, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    .line 3144
    invoke-interface {v0, v2}, Lcn/powervision/upgrade/manager/CommonCallBack;->success([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "lzqFirm"

    const-string v2, "\u63d0\u793aDl01\u5347\u7ea7\u5931\u8d25"

    .line 3147
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    if-eqz v0, :cond_1

    .line 3149
    invoke-interface {v0}, Lcn/powervision/upgrade/manager/CommonCallBack;->failed()V

    .line 3154
    :cond_1
    :goto_0
    invoke-static {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_DL01VERSION(Ljava/lang/String;)V

    .line 3155
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v2, 0x0

    .line 3157
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    .line 3158
    iget-object v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v3, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v5, "DL01_R"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3161
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 3165
    new-instance v1, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {v1}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    const-string v2, "DL01_R"

    .line 3166
    iput-object v2, v1, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 3167
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 3168
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3171
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3174
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareDl01_LocalWithDevice()Z

    .line 3175
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->findNewestMatch()Z

    move-result v0

    const-string v1, "lzqFirm"

    .line 3176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetDl01 findNewestMatch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    .line 3178
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->getNewestPath()Ljava/lang/String;

    move-result-object v0

    .line 3179
    invoke-static {v0}, Lcn/powervision/upgrade/manager/MatchUtil;->readMathFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "DL01_R"

    .line 3180
    invoke-static {v1, p1, v0}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 3185
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showDl01ForceUpdate()V

    return-void

    :cond_5
    if-ne p1, v4, :cond_6

    .line 3191
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showDl01Update()V

    return-void

    :cond_6
    const-string v0, "lzqFirm"

    .line 3194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDl01 res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_state()V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 3171
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private requestDl01Version()V
    .locals 3

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDl01Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u6c42Dl01\u7248\u672c\u53f7"

    .line 2306
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    const-string v2, "20"

    .line 2307
    invoke-static {v0, v2, v1}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    :cond_0
    return-void
.end method


# virtual methods
.method public addUpgradeListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "||| addUpgradeListener out"

    .line 195
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "||| addUpgradeListener in"

    .line 197
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkAllWithNetWork(Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;I)V
    .locals 2

    .line 1435
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->askNetListener:Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;

    .line 1437
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showloading()V

    const-string p1, "lzqFirm"

    const-string v0, "\u8fdb\u5165\u6d41\u7a0b"

    .line 1440
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBodyDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1442
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mModelDownloadInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1443
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mRemoteDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1445
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getDevConfig()V

    .line 1449
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get_local_body_merge_version()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setLocal_body_merge_version(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1453
    iput v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestCount:I

    .line 1454
    iput v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u5f00\u59cb\u6240\u6709\u7f51\u7edc\u8bf7\u6c42 :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requesetReleaseNote()V

    .line 1457
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getLocal_body_merge_version()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareLocalBodyWithServer(Ljava/lang/String;)V

    .line 1458
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getModelVersion()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareModeWithServer(Ljava/lang/String;)V

    .line 1459
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getMCUVERSION()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RC"

    invoke-direct {p0, p1, p2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareRemoteMCUWitchServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDL01VERSION()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DL"

    invoke-direct {p0, p1, p2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareRemoteDl01WitchServer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearDevInfo()V
    .locals 2

    .line 925
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    .line 926
    :try_start_0
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 927
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearRemoteInfo()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "clearRemoteInfo"

    .line 933
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0000"

    .line 934
    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_MCUVERSION(Ljava/lang/String;)V

    const-string v0, "0.0.0"

    .line 935
    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_DL01VERSION(Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    .line 937
    :try_start_0
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 938
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "lzqFirm"

    const-string v1, "clearRemoteInfo hideUpdate"

    .line 939
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideMcuUpdate()V

    .line 941
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideDl01Update()V

    return-void

    :catchall_0
    move-exception v1

    .line 938
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public compareBody_LocalWithDevice()Z
    .locals 6

    const-string v0, "lzqFirm"

    const-string v1, "\u6e05\u9664zipfiles"

    .line 2084
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2087
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_acVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getAcVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AC"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 2091
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_dlVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDlVersion()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DL"

    invoke-virtual {p0, v1, v2, v4, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2094
    :cond_0
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_dvVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDvVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DV"

    invoke-virtual {p0, v1, v4, v5, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2097
    :cond_1
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_fcVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getFcVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FC"

    invoke-virtual {p0, v1, v4, v5, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 2101
    :cond_2
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_fvVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getFvVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FV"

    invoke-virtual {p0, v1, v4, v5, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 2104
    :cond_3
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_gmVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getGmVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GM"

    invoke-virtual {p0, v1, v4, v5, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 2108
    :cond_4
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_mcVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getMcVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MC"

    invoke-virtual {p0, v1, v4, v5, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .line 2113
    :cond_5
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_snVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getSnVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SN"

    invoke-virtual {p0, v1, v4, v5, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 2118
    :cond_6
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_usbVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getUsbVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "USB"

    invoke-virtual {p0, v1, v4, v5, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    .line 2122
    :cond_7
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_fsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getFsVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FS"

    invoke-virtual {p0, v1, v4, v5, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    .line 2126
    :cond_8
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_otaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getOtaVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OTA"

    invoke-virtual {p0, v1, v4, v5, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    .line 2130
    :cond_9
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_nfzVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getNfzVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NFZ"

    invoke-virtual {p0, v1, v4, v5, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    move v2, v0

    :goto_0
    return v2
.end method

.method public compareDl01_LocalWithDevice()Z
    .locals 4

    .line 1943
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 1947
    :cond_0
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_DL01VERSION()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0.0.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_DL01VERSION()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDL01VERSION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1949
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDL01VERSION()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_DL01VERSION()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDL01VERSION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const-string v0, "lzqFirm"

    .line 2006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hardware_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " localVersion\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deviceVersion\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lzqFirm"

    .line 2007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zipFiles size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0.0.0"

    .line 2008
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "0.0.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2011
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "lzqFirm"

    .line 2012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e24\u4e2a\u7248\u672c\u4e0d\u4e00\u6837"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   deviceVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " locaversion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    invoke-static {p2, p1}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lzqFirm"

    const-string v3, "local > dev"

    .line 2014
    invoke-static {v0, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "lzqFirm"

    .line 2027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u672c\u5730\u4e0e\u673a\u5668\u6bd4\u8f83 \u90fd\u662f\u9ed8\u8ba4\u7248\u672c\u53f7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   deviceVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " locaversion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    if-nez p4, :cond_5

    .line 2033
    iget-object v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2034
    :goto_1
    :try_start_0
    iget-object p4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v1, -0x1

    if-ge v2, p4, :cond_3

    .line 2035
    iget-object p4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object p4, p4, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, "lzqFirm"

    .line 2037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u52a0\u5165\u5230zipFile   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "   deviceVersion : "

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " locaversion: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_2
    if-eq v2, v1, :cond_4

    const-string p1, "lzqFirm"

    .line 2044
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u52a0\u5165\u5230zip"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    iget-object p4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    iget-object p2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2047
    :cond_4
    monitor-exit v3

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    if-ne p4, v1, :cond_8

    .line 2053
    iget-object p4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    monitor-enter p4

    .line 2054
    :goto_3
    :try_start_1
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 2055
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v1, v1, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "lzqFirm"

    .line 2057
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u52a0\u5165\u5230zipFile   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "   deviceVersion : "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " locaversion: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2066
    :cond_7
    :goto_4
    monitor-exit p4

    goto :goto_5

    :catchall_1
    move-exception p1

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_8
    :goto_5
    const-string p1, "lzqFirm"

    .line 2075
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "res:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public compareLocalAndDevWithMatch([IZ)I
    .locals 12

    .line 3465
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->findNewestMatch()Z

    move-result v0

    .line 3466
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getLocalBodyConfigVersion()V

    .line 3467
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3468
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareBody_LocalWithDevice()Z

    .line 3469
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareMode_LocalWitchDevice()V

    .line 3471
    :cond_0
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getLocalRemoteConfigVersion()V

    .line 3472
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 3473
    :cond_1
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareDl01_LocalWithDevice()Z

    .line 3474
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareMcu_LocalWitchDevice()Z

    :cond_2
    const-string v1, "lzqFirm"

    .line 3479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " findNewestMatch exits "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_21

    .line 3481
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->getNewestPath()Ljava/lang/String;

    move-result-object v0

    .line 3482
    invoke-static {v0}, Lcn/powervision/upgrade/manager/MatchUtil;->readMathFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3485
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-static {v0, v4, v3}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchDev(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "lzqFirm"

    .line 3487
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " findNewestMatch res_body == null "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3490
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_4

    .line 3492
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3497
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 3498
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    .line 3499
    iget v8, v7, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->isForce:I

    if-ne v8, v1, :cond_5

    const/4 v6, 0x2

    goto :goto_2

    .line 3501
    :cond_5
    iget v7, v7, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->isForce:I

    if-ne v7, v3, :cond_6

    if-eq v6, v1, :cond_6

    const/4 v6, 0x1

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3507
    :cond_7
    aput v6, p1, v2

    const-string v4, "lzqFirm"

    .line 3508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " 2.1 ap03_dev_res: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  r[0]: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p1, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lzqFirm"

    .line 3511
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " 2.1 ap03rc_dev_firmwares: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    iget-object v8, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v5, 0x0

    move-object v8, v5

    const/4 v7, 0x0

    .line 3514
    :goto_3
    :try_start_0
    iget-object v9, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_9

    .line 3516
    iget-object v9, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v9, v9, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v10, "DL01_R"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3517
    iget-object v8, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/powervision/upgrade/model/entity/Firmware;

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3520
    :cond_9
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v8, :cond_a

    .line 3523
    iget-object v4, v8, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v4, v5

    :goto_4
    const-string v7, "DL01_R"

    .line 3526
    invoke-static {v7, v4, v0}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v7

    if-nez p2, :cond_b

    const-string v7, "lzqFirm"

    const-string v8, " 2.1 \u4e0d\u80fd\u5347\u7ea7DL01 res_dev_dl01 = 0 "

    .line 3528
    invoke-static {v7, v8}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 3532
    :cond_b
    aput v7, p1, v1

    const-string v8, "lzqFirm"

    .line 3534
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " 2.1 dl01_Devversion: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lzqFirm"

    .line 3535
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " 2.1 res_dev_dl01: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " r[2]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, p1, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
    iget-object v8, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    monitor-enter v8

    move-object v9, v5

    const/4 v4, 0x0

    .line 3539
    :goto_5
    :try_start_1
    iget-object v10, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_d

    .line 3540
    iget-object v10, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v10, v10, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v11, "MCU"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 3541
    iget-object v9, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/powervision/upgrade/model/entity/Firmware;

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3544
    :cond_d
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v9, :cond_e

    .line 3547
    iget-object v4, v9, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    goto :goto_6

    :cond_e
    move-object v4, v5

    :goto_6
    const-string v8, "MCU"

    .line 3550
    invoke-static {v8, v4, v0}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v8

    if-nez p2, :cond_f

    const-string p2, "lzqFirm"

    const-string v8, " 2.1 \u4e0d\u80fd\u5347\u7ea7MCU res_dev_mcu = 0"

    .line 3553
    invoke-static {p2, v8}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 3556
    :cond_f
    aput v8, p1, v3

    const-string p2, "lzqFirm"

    .line 3557
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " 2.1 mcu_DevVersion: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "lzqFirm"

    .line 3558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " 2.1 res_dev_mcu: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  r[1]: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v3

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v7, v8, :cond_10

    goto :goto_7

    :cond_10
    move v7, v8

    .line 3563
    :goto_7
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->isBootloader()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 v6, 0x2

    goto :goto_8

    :cond_11
    if-lt v6, v7, :cond_12

    goto :goto_8

    :cond_12
    move v6, v7

    :goto_8
    const-string p1, "lzqFirm"

    .line 3570
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " findNewestMatch dev_res = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    monitor-enter p1

    .line 3577
    :try_start_2
    iget-object p2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-static {v0, p2, v3}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchLocal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)I

    move-result p2

    .line 3578
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3580
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    monitor-enter v4

    move-object v7, v5

    const/4 p1, 0x0

    .line 3583
    :goto_9
    :try_start_3
    iget-object v8, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p1, v8, :cond_14

    .line 3585
    iget-object v8, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v8, v8, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v9, "DL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 3586
    iget-object v7, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/powervision/upgrade/model/entity/Firmware;

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 3589
    :cond_14
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v7, :cond_15

    const-string p1, "0.0.0"

    goto :goto_a

    .line 3594
    :cond_15
    iget-object p1, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    :goto_a
    const-string v4, "lzqFirm"

    .line 3596
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " 2.1 dl01_version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "DL01_R"

    .line 3597
    invoke-static {v4, p1, v0}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    const-string v4, "lzqFirm"

    .line 3598
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " 2.1 res_local_dl01: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3602
    iget-object v7, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    monitor-enter v7

    const/4 v4, 0x0

    .line 3603
    :goto_b
    :try_start_4
    iget-object v8, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_17

    .line 3604
    iget-object v8, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v8, v8, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v9, "RC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 3605
    iget-object v5, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/powervision/upgrade/model/entity/Firmware;

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 3608
    :cond_17
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_18

    const-string v4, "000000"

    goto :goto_c

    .line 3613
    :cond_18
    iget-object v4, v5, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    :goto_c
    const-string v5, "lzqFirm"

    .line 3616
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " 2.1 mcuVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MCU"

    .line 3617
    invoke-static {v5, v4, v0}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    const-string v4, "lzqFirm"

    .line 3618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " 2.1 res_local_mcu: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lzqFirm"

    .line 3621
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3.1 body res_local_body:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-lt p1, v0, :cond_19

    goto :goto_d

    :cond_19
    move p1, v0

    :goto_d
    if-ne p1, v1, :cond_1a

    const/4 p1, 0x2

    goto :goto_e

    :cond_1a
    if-ne p1, v3, :cond_1b

    const/4 p1, 0x1

    goto :goto_e

    :cond_1b
    const/4 p1, 0x0

    :goto_e
    const-string v0, "lzqFirm"

    .line 3634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3.1 remote local_remote_res:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-lt p2, p1, :cond_1c

    goto :goto_f

    :cond_1c
    move p2, p1

    :goto_f
    const-string p1, "lzqFirm"

    .line 3639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3.1  local_res:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v6, v1, :cond_1e

    if-lez p2, :cond_1d

    const-string p1, "lzqFirm"

    const-string p2, "3.1 \u9700\u8981\u5f3a\u5236\u4e0b\u8f7d"

    .line 3643
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showForceDownLoad()V

    const/4 v1, 0x0

    goto :goto_10

    :cond_1d
    const-string p1, "lzqFirm"

    const-string p2, "3.1 \u4e0d\u9700\u8981\u4e0b\u8f7d\u5f3a\u5236\u5347\u7ea7 "

    .line 3648
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_10

    :cond_1e
    if-ne v6, v3, :cond_20

    if-lez p2, :cond_1f

    const-string p1, "lzqFirm"

    const-string p2, "3.1 \u666e\u901a\u4e0b\u8f7d "

    .line 3655
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3656
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showDownLoad()V

    goto :goto_10

    :cond_1f
    const-string p1, "lzqFirm"

    const-string p2, "3.1 \u666e\u901a\u5347\u7ea7 "

    .line 3660
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    goto :goto_10

    :cond_20
    if-lez p2, :cond_21

    const-string p1, "lzqFirm"

    const-string p2, "3.1 \u666e\u901a\u4e0b\u8f7d "

    .line 3667
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catchall_0
    move-exception p1

    .line 3608
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 3589
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :catchall_2
    move-exception p2

    .line 3578
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p2

    :catchall_3
    move-exception p1

    .line 3544
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    .line 3520
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p1

    :cond_21
    const/4 v1, -0x1

    :goto_10
    return v1
.end method

.method public compareMcu_LocalWitchDevice()Z
    .locals 5

    .line 1973
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 1976
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u5907Mcu:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_MCUVERSION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "lzqFirm"

    invoke-static {v3, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u672c\u5730Mcu:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getMCUVERSION()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->isBootloader()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " isBootLoader needUpdate"

    .line 1979
    invoke-static {v3, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1982
    :cond_1
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_MCUVERSION()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_MCUVERSION()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getMCUVERSION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1983
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getMCUVERSION()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_MCUVERSION()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getMCUVERSION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public compareMode_LocalWitchDevice()V
    .locals 4

    .line 1967
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_modelVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getModelVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MODEL"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareItemBodyWithDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public downloadMatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "1.2 downloadMatch"

    .line 3305
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3310
    :cond_0
    new-instance v0, Lcn/powervision/upgrade/manager/MatchUtil;

    invoke-direct {v0}, Lcn/powervision/upgrade/manager/MatchUtil;-><init>()V

    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$20;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$20;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    invoke-virtual {v0, v1, p1, p2}, Lcn/powervision/upgrade/manager/MatchUtil;->downloadMatch(Lcn/powervision/upgrade/manager/CommonCallBack;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public findZipFile([Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 2444
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2445
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AP03_AC"

    .line 2446
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAp03Version()Ljava/lang/String;
    .locals 1

    .line 1019
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->ap03Version:Ljava/lang/String;

    return-object v0
.end method

.method public getDevConfig()V
    .locals 0

    .line 1425
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getLocalBodyConfigVersion()V

    .line 1426
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getLocalRemoteConfigVersion()V

    return-void
.end method

.method public getDownLoadType()I
    .locals 1

    .line 2421
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mRemoteDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2422
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBodyDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mModelDownloadInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 2428
    :cond_2
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBodyDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mModelDownloadInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public getFirmwareTotalSize()J
    .locals 9

    const-string v0, "lzqFirm"

    const-string v1, "\u8df3\u8f6c\u4e2d  commplete  2222  AAAAAAAAA"

    .line 2389
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBodyDownloadUrls:Ljava/util/ArrayList;

    monitor-enter v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 2392
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBodyDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 2393
    iget-object v7, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBodyDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {v7}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_size()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2396
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2397
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mModelDownloadInfos:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v0, 0x0

    .line 2398
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mModelDownloadInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 2399
    iget-object v7, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mModelDownloadInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {v7}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_size()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2403
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2404
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mRemoteDownloadUrls:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2405
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mRemoteDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2407
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mRemoteDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {v4}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_size()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-wide v7, v1

    goto :goto_3

    .line 2410
    :cond_2
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mRemoteDownloadUrls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {v4}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_size()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_3
    add-long/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2414
    :cond_3
    monitor-exit v0

    return-wide v5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 2403
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 2396
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public getHistoryMapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->historyMapList:Ljava/util/List;

    return-object v0
.end method

.method public getLocalFirmWares()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation

    .line 1492
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMatchMd5()V
    .locals 4

    const-string v0, "lzqFirm"

    const-string v1, "  \u8bf7\u6c42md5: "

    .line 1645
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    invoke-static {}, Lcom/powervision/base/config/Ap03GlobalConfig;->getMatchMd5Url()Ljava/lang/String;

    move-result-object v1

    .line 1648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  \u8bf7\u6c42md5url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 1651
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 1652
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 1653
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 1654
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$10;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$10;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public getNormalLocalItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2481
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2482
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 2484
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2486
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 2487
    aget-object v2, p1, v1

    .line 2488
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    const-string v4, "lzqFirm"

    if-eqz v3, :cond_0

    const-string v3, "\u4e0d\u662f\u6587\u4ef6\u5939\u5220\u9664:abs:"

    .line 2489
    invoke-static {v4, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/powervision/upgrade/FileUtil;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 2493
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u67e5\u627egetNormalLocalItem:abs:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2495
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, " \u6ca1\u6709# \u5220\u9664"

    .line 2497
    invoke-static {v4, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    invoke-static {v2}, Lcn/powervision/upgrade/FileUtil;->deleteDir(Ljava/io/File;)Z

    goto :goto_1

    .line 2502
    :cond_1
    new-instance v3, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {v3}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    .line 2504
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2505
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2512
    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->fileName:Ljava/lang/String;

    .line 2513
    aget-object v4, v5, v0

    iput-object v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    const/4 v4, 0x1

    .line 2514
    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcn/powervision/upgrade/model/entity/Firmware;->isForce:I

    .line 2515
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 2517
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2519
    :cond_2
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p2
.end method

.method public getOnGetAp03VersionListener()Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;
    .locals 1

    .line 3033
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onGetAp03VersionListener:Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;

    return-object v0
.end method

.method public getRemoteDL01File()Ljava/io/File;
    .locals 8

    .line 2352
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2353
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2354
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v4, v4, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v5, "DL"

    if-ne v4, v5, :cond_0

    .line 2355
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v5, v5, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "lzqFirm"

    .line 2356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "lzqFirm"

    const-string v6, "file:isDir"

    .line 2358
    invoke-static {v5, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2360
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2366
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRemoteMT03File()Ljava/io/File;
    .locals 7

    .line 2326
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2327
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2328
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v4, v4, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v5, "RC"

    if-ne v4, v5, :cond_0

    .line 2329
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v5, v5, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2330
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2331
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2332
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2337
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStaticZipFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation

    .line 2932
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getZipFiles()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation

    .line 2887
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "lzqFirm"

    const-string v2, " getZipFiles \u4f46\u662f\u96c6\u5408\u662f\u7a7a\u7684"

    .line 2888
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onAp03Connected()V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    const-wide/16 v2, 0x1f4

    .line 2892
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 2894
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2897
    :goto_1
    iget-boolean v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->canZip:Z

    if-eqz v2, :cond_0

    const-string v0, "lzqFirm"

    const-string v2, " canZip "

    .line 2898
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 2906
    :goto_3
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2907
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v2, v2, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v3, "config"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_4
    const-string v2, "lzqFirm"

    .line 2914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getZipFiles: ap03_firmwares:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_6

    .line 2916
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2917
    :goto_5
    :try_start_1
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2918
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v2, v2, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v3, "config"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2919
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2923
    :cond_5
    :goto_6
    monitor-exit v0

    goto :goto_7

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2927
    :cond_6
    :goto_7
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getZipName()Ljava/lang/String;
    .locals 3

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AP03"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1521
    :goto_0
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "_"

    .line 1522
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v2, v2, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->zipFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v2, v2, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1525
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_local_body_merge_version()Ljava/lang/String;
    .locals 4

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AP03"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_AC-"

    .line 1499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getAcVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_DV-"

    .line 1500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDvVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_FC-"

    .line 1501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getFcVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_FV-"

    .line 1502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getFvVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_FS-"

    .line 1503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getFsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_GM-"

    .line 1504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getGmVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_MC-"

    .line 1505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getMcVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_SN-"

    .line 1506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getSnVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_OTA-"

    .line 1507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getOtaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_USB-"

    .line 1508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getUsbVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_DL-"

    .line 1509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDlVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_NFZ-"

    .line 1510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getNfzVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_config-"

    .line 1511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getConfigVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.2 body_step merge_version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getmBodyDownloadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;"
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBodyDownloadUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmModelDownloadInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mModelDownloadInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmRemoteDownloadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;"
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mRemoteDownloadUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isBootloader()Z
    .locals 1

    .line 2312
    iget v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBootloaderStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocalBody_Match(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;",
            ">;)V"
        }
    .end annotation

    .line 3360
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3361
    :try_start_0
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_firmwares:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchLocal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)I

    move-result p1

    .line 3362
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3368
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showForceDownLoad()V

    const-string p1, "lzqFirm"

    const-string v0, " 1.3  isLocalBody_Match \u663e\u793a \u5f3a\u5236\u4e0b\u8f7d"

    .line 3369
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-ne p1, v2, :cond_1

    const-string p1, "lzqFirm"

    const-string v0, " 1.3  isLocalBody_Match \u666e\u901a\u4e0b\u8f7d"

    .line 3374
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3375
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showDownLoad()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 3362
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isLocalDl01_Match(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;",
            ">;)V"
        }
    .end annotation

    .line 3418
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    .line 3421
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 3423
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v4, v4, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v5, "DL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3424
    iget-object v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/powervision/upgrade/model/entity/Firmware;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 3429
    iget-object v2, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    :cond_2
    const-string v1, "DL01_R"

    .line 3432
    invoke-static {v1, v2, p1}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const-string p1, "lzqFirm"

    const-string v1, " 1.3 \u9700\u8981\u5f3a\u5236\u4e0b\u8f7dDl01"

    .line 3437
    invoke-static {p1, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3438
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showForceDownLoad()V

    .line 3439
    monitor-exit v0

    return-void

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    const-string p1, "lzqFirm"

    const-string v1, " 1.3 \u9700\u8981\u666e\u901a\u4e0b\u8f7dDl01"

    .line 3443
    invoke-static {p1, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showDownLoad()V

    .line 3447
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isLocalMcu_Match(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;",
            ">;)V"
        }
    .end annotation

    .line 3383
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    .line 3386
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 3387
    iget-object v4, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v4, v4, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v5, "RC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3388
    iget-object v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/powervision/upgrade/model/entity/Firmware;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 3394
    iget-object v2, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    :cond_2
    const-string v1, "MCU"

    .line 3397
    invoke-static {v1, v2, p1}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const-string p1, "lzqFirm"

    const-string v1, " 1.3 \u9700\u8981\u5f3a\u5236\u4e0b\u8f7d \u5347\u7ea7MCU"

    .line 3402
    invoke-static {p1, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showForceDownLoad()V

    .line 3404
    monitor-exit v0

    return-void

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    const-string p1, "lzqFirm"

    const-string v1, " 1.3 \u9700\u8981\u666e\u901a\u4e0b\u8f7d MCU"

    .line 3408
    invoke-static {p1, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showDownLoad()V

    .line 3412
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public islocalAndAppMatch(I)V
    .locals 3

    .line 3277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " islocalAndAppMatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqFirm"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->findNewestMatch()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3280
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->getNewestPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/powervision/upgrade/manager/MatchUtil;->readMathFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.3 \u89e3\u51fa\u6765\u7684Match:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    invoke-static {p1}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchApp(Ljava/util/ArrayList;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, " 1.3 \u9700\u8981\u5f3a\u5236\u5347\u7ea7APP"

    .line 3285
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3286
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showForceApp()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, " 1.3 \u9700\u8981\u666e\u901a\u5347\u7ea7APP"

    .line 3288
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3289
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showDownLoadApp()V

    .line 3293
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->isLocalBody_Match(Ljava/util/ArrayList;)V

    .line 3295
    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->isLocalDl01_Match(Ljava/util/ArrayList;)V

    .line 3298
    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->isLocalMcu_Match(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public notify_Ap03Connected(I)V
    .locals 3

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify_canUpgradeRemote : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqFirm"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 2160
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/4 v0, 0x0

    .line 2161
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2162
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->ap03Connected()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_Ap03Disconnected(I)V
    .locals 2

    .line 2167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify_canUpgradeRemote : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqFirm"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 2169
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 2170
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2171
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->ap03Disconnected()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_canNotUpgradeByArmStatus()V
    .locals 3

    .line 405
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 406
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 407
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 408
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->canNotUpgradeByArmStatus()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_canUpgradeByArmStatus()V
    .locals 4

    .line 397
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 398
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 399
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 400
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->canUpgradeByArmStatus()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_hideBodyUpdate(I)V
    .locals 2

    .line 2178
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 2179
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 2180
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2181
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->hidebodyupdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_hideDl01Update()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 248
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v1, 0x0

    .line 249
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 250
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->hideDl01Update()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "lzqFirm"

    const-string v1, "to resetDl01Version"

    .line 252
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0.0.0"

    .line 253
    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_DL01VERSION(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    .line 255
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 256
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v1, v1, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v2, "DL01_R"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "lzqFirm"

    const-string v2, "to resetDl01Version"

    .line 257
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/model/entity/Firmware;

    const-string v2, "0.0.0"

    iput-object v2, v1, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 262
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notify_hideDownload()V
    .locals 3

    const/4 v0, 0x0

    .line 381
    sput-boolean v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->needDownload:Z

    .line 382
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 383
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 384
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->hideDownLoad()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notify_hideMcuUpdate()V
    .locals 4

    .line 302
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 303
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 304
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 305
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-interface {v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;->hideMcuUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "000000"

    .line 307
    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_MCUVERSION(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    .line 309
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 310
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v1, v1, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v3, "MCU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/model/entity/Firmware;

    const-string v2, "000000"

    iput-object v2, v1, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 315
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAp03Connected()V
    .locals 2

    .line 2979
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$16;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$16;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2991
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2993
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$17;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$17;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3008
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onGetAp03Verion(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 3048
    iput-boolean v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->canZip:Z

    .line 3049
    sput-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->ap03Version:Ljava/lang/String;

    const-string v1, "_"

    .line 3050
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2.1 \u83b7\u53d6\u5230\u4e00\u4f53\u5316\u7248\u672c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lzqFirm"

    invoke-static {v4, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 3054
    invoke-virtual {p0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->splitDeviceVersion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "2.1 \u89e3\u6790\u9519\u8bef:"

    .line 3057
    invoke-static {v4, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3058
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$19;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$19;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v2, "-"

    .line 3080
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2.1  \u83b7\u53d6\u5230Model\u7248\u672c:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3084
    invoke-static {v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_AP03_BODY_VERSION(Ljava/lang/String;)V

    .line 3085
    new-instance v1, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {v1}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    .line 3086
    iput-object p1, v1, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    const-string v2, "MODEL"

    .line 3087
    iput-object v2, v1, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 3088
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3089
    invoke-static {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_modelVersion(Ljava/lang/String;)V

    .line 3091
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareBody_LocalWithDevice()Z

    .line 3092
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareMode_LocalWitchDevice()V

    .line 3095
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->findNewestMatch()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3097
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->getNewestPath()Ljava/lang/String;

    move-result-object p1

    .line 3098
    invoke-static {p1}, Lcn/powervision/upgrade/manager/MatchUtil;->readMathFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3099
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-static {p1, v1, v3}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchDev(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p1

    const/16 v1, 0xb

    .line 3100
    invoke-virtual {p0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->islocalAndAppMatch(I)V

    .line 3102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2.1 \u9700\u8981\u5f3a\u5236\u5347\u7ea7\u7684\u56fa\u4ef6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3104
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3105
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;

    iget v2, v2, Lcn/powervision/upgrade/model/entity/ForceFirmWareBean;->isForce:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 3111
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showBodyForceUpdate()V

    return-void

    .line 3115
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 3117
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_bodyUpdate()V

    return-void

    .line 3121
    :cond_4
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_state()V

    .line 3124
    :cond_5
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onGetAp03VersionListener:Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;

    if-eqz p1, :cond_6

    .line 3125
    invoke-interface {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;->getAp03Version()V

    .line 3127
    :cond_6
    iput-boolean v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->canZip:Z

    return-void
.end method

.method public onGetBootLoaderStatusResult(I)V
    .locals 2

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetBootLoaderStatusResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 749
    iput p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mBootloaderStatus:I

    .line 751
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_isBootLoader()V

    :cond_0
    return-void
.end method

.method public onGetMcuVersion(Ljava/lang/String;)V
    .locals 6

    const-string v0, "lzqFirm"

    .line 3202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetMcuVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3203
    invoke-static {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_MCUVERSION(Ljava/lang/String;)V

    .line 3204
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3206
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 3207
    iget-object v3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v3, v3, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v5, "MCU"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3210
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/model/entity/Firmware;

    iput-object p1, v2, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 3214
    new-instance v1, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {v1}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    const-string v2, "MCU"

    .line 3215
    iput-object v2, v1, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 3216
    iput-object p1, v1, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 3217
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3221
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3223
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->findNewestMatch()Z

    move-result v0

    const-string v1, "lzqFirm"

    const-string v2, "onGetMcu findNewestMatch"

    .line 3224
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 3226
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->getNewestPath()Ljava/lang/String;

    move-result-object v0

    .line 3227
    invoke-static {v0}, Lcn/powervision/upgrade/manager/MatchUtil;->readMathFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "MCU"

    .line 3228
    invoke-static {v1, p1, v0}, Lcn/powervision/upgrade/manager/MatchUtil;->isMatchItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    const-string v0, "lzqFirm"

    .line 3229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetMcu isMatchItem res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 3232
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showMcuForceUpdate()V

    return-void

    :cond_3
    if-ne p1, v4, :cond_4

    .line 3238
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_showMcuUpdate()V

    return-void

    .line 3241
    :cond_4
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_state()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 3221
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onIntegrationUpgradeGetVersionSuccess(Ljava/lang/String;)V
    .locals 3

    const-string v0, "_"

    const/16 v1, 0xc

    .line 758
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "BP_FIRMWARE_VERSION"

    invoke-virtual {v1, v2, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$6;

    invoke-direct {v1, p0, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$6;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 773
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onRemoteParameterDownloadFailed(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "PV_RC_VER_STD"

    .line 984
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "lzqFirm"

    const-string p2, "\u83b7\u53d6\u5230mcu\u7248\u672c:\u5931\u8d25"

    .line 985
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideMcuUpdate()V

    :cond_0
    return-void
.end method

.method public onRemoteParameterDownloadSuccess(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "PV_RC_VER_STD"

    .line 956
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u83b7\u53d6\u5230mcu\u7248\u672c:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqFirm"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$7;

    invoke-direct {v0, p0, p2}, Lcn/powervision/upgrade/manager/NewFirmWareManager$7;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 975
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onRemoteParameterDownloadTimeOut()V
    .locals 0

    return-void
.end method

.method public onRemoteParameterUploadFailed(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRemoteParameterUploadSuccess(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRemoteParameterUploadTimeOut()V
    .locals 0

    return-void
.end method

.method public removeUpgradListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "||| removeUpgradListener out"

    .line 208
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "||| removeUpgradListener in"

    .line 210
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mUpgradeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public renameAllItemsDir(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2590
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2591
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 2592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir_abs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcn/powervision/upgrade/model/entity/Firmware;->dir_abs:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lzqFirm"

    invoke-static {v4, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lcn/powervision/upgrade/model/entity/Firmware;->dir_abs:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2594
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2595
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldname:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "#"

    .line 2597
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2599
    array-length v7, v6

    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    array-length v6, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 2600
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, ""

    .line 2604
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 2605
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2606
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newname:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public renameItemDir(Lcn/powervision/upgrade/model/entity/Firmware;)V
    .locals 8

    .line 2555
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcn/powervision/upgrade/model/entity/Firmware;->dir_abs:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2557
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2558
    iget-object p1, p1, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v1, "config"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x3

    const-string v2, "/"

    const/4 v3, 0x0

    const-string v4, "#"

    const-string v5, "lzqDown"

    if-eqz p1, :cond_1

    .line 2559
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2560
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2561
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v6, 0x0

    .line 2562
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_1

    .line 2563
    aget-object v7, p1, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v1, :cond_0

    const-string v7, "\u5220\u6389config\u6587\u4ef6"

    .line 2564
    invoke-static {v5, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    aget-object v7, p1, v6

    invoke-static {v7}, Lcn/powervision/upgrade/FileUtil;->deleteDir(Ljava/io/File;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2570
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oldname:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2574
    array-length v7, v6

    if-ge v7, v1, :cond_2

    array-length v1, v6

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    .line 2575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 2579
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2580
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newname:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2582
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    return-void
.end method

.method public requesetReleaseNote()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u7b2c\u4e00\u4e2a\u8bf7\u6c42 1.1  requesetReleaseNote:"

    .line 1466
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    invoke-static {}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getInstance()Lcn/powervision/upgrade/api/UpgradeAPIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/api/UpgradeAPIManager;->getFirmwareApi()Lcn/powervision/upgrade/api/FirmwareApi;

    move-result-object v0

    invoke-interface {v0}, Lcn/powervision/upgrade/api/FirmwareApi;->releaseNote()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1468
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$8;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$8;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    .line 1469
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public requestDevVersion()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "requestDevVersion"

    .line 2457
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestRemoteMCUVersion()V

    .line 2463
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestDl01Version()V

    .line 2466
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestDeviceFirmwareVersion()V

    return-void
.end method

.method public requestDeviceFirmwareVersion()V
    .locals 4

    .line 2266
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->handlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2267
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VersionThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->handlerThread:Landroid/os/HandlerThread;

    .line 2268
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2269
    new-instance v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$14;

    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$14;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mHandler:Landroid/os/Handler;

    .line 2287
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isAp03Connected:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NotUpgrading:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->tryCount:I

    if-lez v0, :cond_1

    .line 2288
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->VERSION:I

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2289
    iget v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->tryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->tryCount:I

    :cond_1
    return-void
.end method

.method public requestRemoteMCUVersion()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u8bf7\u6c42MCU\u7248\u672c\u53f7"

    .line 2297
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_1

    .line 2299
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "PV_RC_VER_STD"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadRemoteParameter(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setCommonCallBack(Lcn/powervision/upgrade/manager/CommonCallBack;)V
    .locals 0

    .line 3131
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    return-void
.end method

.method public setHistoryMapList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->historyMapList:Ljava/util/List;

    return-void
.end method

.method public setIntegrationUpgradeGetVersionTimeout()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u83b7\u53d6\u7248\u672c\u53f7\u8d85\u65f6"

    .line 946
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-boolean v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NotUpgrading:Z

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestDeviceFirmwareVersion()V

    :cond_0
    const/16 v0, 0xb

    .line 950
    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    return-void
.end method

.method public setOnGetAp03VersionListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;)V
    .locals 0

    .line 3037
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onGetAp03VersionListener:Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;

    return-void
.end method

.method public sortFirmVersion(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation

    .line 2534
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2538
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    .line 2539
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 2542
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v3, v3, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v5, v5, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v3, v5}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v5, v5, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    if-ne v3, v5, :cond_1

    .line 2543
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 2544
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2545
    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public splitDeviceVersion(Ljava/lang/String;)Z
    .locals 12

    const-string v0, "_"

    .line 785
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 787
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 791
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03rc_dev_firmwares:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 792
    :goto_0
    :try_start_0
    array-length v6, p1

    if-ge v4, v6, :cond_6

    .line 793
    aget-object v6, p1, v4

    const-string v7, "lzqFirm"

    .line 794
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "itemandversion"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "-"

    .line 795
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 797
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v7, "lzqFirm"

    .line 800
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dev name\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v6, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "   version:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    new-instance v7, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {v7}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    .line 803
    aget-object v9, v6, v2

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "USB"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x7

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "OTA"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v8, "NFZ"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v8, "SN"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x6

    goto :goto_2

    :sswitch_4
    const-string v8, "MC"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_5
    const-string v8, "GM"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x4

    goto :goto_2

    :sswitch_6
    const-string v8, "FV"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_7
    const-string v8, "FS"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x8

    goto :goto_2

    :sswitch_8
    const-string v11, "FC"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :sswitch_9
    const-string v8, "DV"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_a
    const-string v8, "DL"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0xa

    goto :goto_2

    :sswitch_b
    const-string v8, "AC"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_c
    const-string v8, "MASTER"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0xc

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, -0x1

    :goto_2
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_4

    .line 896
    :pswitch_0
    aget-object v8, v6, v3

    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 897
    aget-object v7, v6, v3

    const-string v8, "0.0.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v5, "lzqFirm"

    const-string v6, "\u83b7\u53d6\u7248\u672c\u53f7\u662f0.0.0 \u89e3\u6790\u9519\u8bef"

    .line 898
    invoke-static {v5, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 903
    :cond_3
    iget-object v7, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 904
    aget-object v7, v6, v3

    invoke-static {v7}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setMasterVersion(Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v7

    const-string v8, "AP03_DEVICE_VERSION_CODE"

    aget-object v6, v6, v3

    invoke-virtual {v7, v8, v6}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 890
    :pswitch_1
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_nfzVersion(Ljava/lang/String;)V

    const-string v8, "NFZ"

    .line 891
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 892
    aget-object v6, v6, v3

    iput-object v6, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 893
    iget-object v6, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 879
    :pswitch_2
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_dlVersion(Ljava/lang/String;)V

    const-string v8, "DL"

    .line 880
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 881
    aget-object v8, v6, v3

    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 882
    iget-object v8, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    aget-object v6, v6, v3

    const-string v7, "0.0.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v5, "lzqFirm"

    const-string v6, "\u83b7\u53d6\u7248\u672c\u53f7\u662f0.0.0 \u89e3\u6790\u9519\u8bef"

    .line 884
    invoke-static {v5, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 873
    :pswitch_3
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_otaVersion(Ljava/lang/String;)V

    const-string v8, "OTA"

    .line 874
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 875
    aget-object v6, v6, v3

    iput-object v6, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 876
    iget-object v6, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 862
    :pswitch_4
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_fsVersion(Ljava/lang/String;)V

    const-string v8, "FS"

    .line 863
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 864
    aget-object v8, v6, v3

    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 865
    iget-object v8, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    aget-object v6, v6, v3

    const-string v7, "0.0.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v5, "lzqFirm"

    const-string v6, "\u83b7\u53d6\u7248\u672c\u53f7\u662f0.0.0 \u89e3\u6790\u9519\u8bef"

    .line 867
    invoke-static {v5, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 856
    :pswitch_5
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_usbVersion(Ljava/lang/String;)V

    const-string v8, "USB"

    .line 857
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 858
    aget-object v6, v6, v3

    iput-object v6, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 859
    iget-object v6, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 850
    :pswitch_6
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_snVersion(Ljava/lang/String;)V

    const-string v8, "SN"

    .line 851
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 852
    aget-object v6, v6, v3

    iput-object v6, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 853
    iget-object v6, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 841
    :pswitch_7
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v8

    const-string v9, "AP03_MC_VERSION"

    aget-object v10, v6, v3

    invoke-virtual {v8, v9, v10}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 843
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_mcVersion(Ljava/lang/String;)V

    const-string v8, "MC"

    .line 845
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 846
    aget-object v6, v6, v3

    iput-object v6, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 847
    iget-object v6, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 835
    :pswitch_8
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_gmVersion(Ljava/lang/String;)V

    const-string v8, "GM"

    .line 836
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 837
    aget-object v6, v6, v3

    iput-object v6, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 838
    iget-object v6, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 828
    :pswitch_9
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_fvVersion(Ljava/lang/String;)V

    const-string v8, "FV"

    .line 830
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 831
    aget-object v6, v6, v3

    iput-object v6, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 832
    iget-object v6, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 817
    :pswitch_a
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v8

    const-string v9, "AP03_FC_VERSION"

    aget-object v10, v6, v3

    invoke-virtual {v8, v9, v10}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 818
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_fcVersion(Ljava/lang/String;)V

    const-string v8, "FC"

    .line 819
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 820
    aget-object v8, v6, v3

    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 821
    iget-object v8, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    aget-object v6, v6, v3

    const-string v7, "0.0.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v5, "lzqFirm"

    const-string v6, "\u83b7\u53d6\u7248\u672c\u53f7\u662f0.0.0 \u89e3\u6790\u9519\u8bef"

    .line 823
    invoke-static {v5, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 811
    :pswitch_b
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_dvVersion(Ljava/lang/String;)V

    const-string v8, "DV"

    .line 812
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 813
    aget-object v6, v6, v3

    iput-object v6, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 814
    iget-object v6, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 805
    :pswitch_c
    aget-object v8, v6, v3

    invoke-static {v8}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->setDev_acVersion(Ljava/lang/String;)V

    const-string v8, "AC"

    .line 806
    iput-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 807
    aget-object v6, v6, v3

    iput-object v6, v7, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 808
    iget-object v6, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->ap03_dev_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    if-nez v5, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 917
    :cond_6
    :goto_6
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78dfe19e -> :sswitch_c
        0x822 -> :sswitch_b
        0x888 -> :sswitch_a
        0x892 -> :sswitch_9
        0x8bd -> :sswitch_8
        0x8cd -> :sswitch_7
        0x8d0 -> :sswitch_6
        0x8e6 -> :sswitch_5
        0x996 -> :sswitch_4
        0xa5b -> :sswitch_3
        0x12da2 -> :sswitch_2
        0x132fc -> :sswitch_1
        0x14964 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateMatch()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "1.1 updateMatchFromApp"

    .line 2949
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->matchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    return-void

    .line 2954
    :cond_0
    invoke-direct {p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_reset()V

    .line 2955
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$15;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager$15;-><init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->matchThread:Ljava/lang/Thread;

    .line 2971
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateMatchFromApp()V
    .locals 5

    const/4 v0, 0x0

    .line 3247
    iput-boolean v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->canCheck:Z

    .line 3248
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcn/powervision/upgrade/manager/MatchUtil;->getAssestVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3250
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->findNewestMatch()Z

    move-result v1

    const-string v2, "lzqFirm"

    if-nez v1, :cond_0

    const-string v1, "1.1 updateMatchFromApp \u5982\u679c\u672c\u5730\u6ca1\u6709\u76f4\u63a5\u66f4\u65b0"

    .line 3252
    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/powervision/upgrade/manager/MatchUtil;->updateTheNewFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "1.1 \u5982\u679c\u672c\u5730\u6709 \u5bf9\u6bd4\u7248\u672c\u53f7"

    .line 3258
    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    invoke-static {}, Lcn/powervision/upgrade/manager/MatchUtil;->getLoaclNewestVersion()Ljava/lang/String;

    move-result-object v1

    .line 3261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1.1 loaclNewestVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1.1 assestVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    invoke-static {v1, v0}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3264
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1.1 updateMatchFromApp \u66f4\u65b0\u672c\u5730\u6587\u4ef6"

    .line 3265
    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/powervision/upgrade/manager/MatchUtil;->updateTheNewFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
