.class public Lcom/powervision/base/config/GlobalConfig;
.super Ljava/lang/Object;
.source "GlobalConfig.java"


# static fields
.field public static AIR_DL01_SERVER_IP:Ljava/lang/String; = null

.field public static final AIR_DL01_SERVER_PORT:I = 0x56ce

.field public static final BOAT_STATION_SSID_START_WITH1:Ljava/lang/String; = "pvw4"

.field public static final BOAT_STATION_SSID_START_WITH2:Ljava/lang/String; = "PDO_RMOTE_SN"

.field public static final BOAT_STATION_SSID_START_WITH3:Ljava/lang/String; = "PDO_RC"

.field public static final BOAT_STATION_SSID_START_WITH4:Ljava/lang/String; = "PDO_BOAT"

.field public static final BOAT_STATION_SSID_START_WITH5:Ljava/lang/String; = "AndroidAP"

.field public static final BOAT_STATION_SSID_START_WITH6:Ljava/lang/String; = "aaaa"

.field public static final CONNECTED_DEVICE_TYPE_BOAT:I = 0x4

.field public static final CONNECTED_DEVICE_TYPE_SONAR:I = 0x3

.field public static DEFAULT_TCP_SERVER_IP:Ljava/lang/String; = null

.field public static final DEFAULT_TCP_SERVER_PORT:I = 0x4e22

.field public static final DEFAULT_UDP_SERVER_PORT:Ljava/lang/String; = "6009"

.field public static final DEFAULT_USB_BAUD_RATE:Ljava/lang/String; = "115200"

.field public static DL01_SERVER_IP:Ljava/lang/String; = null

.field public static final DL01_SERVER_PORT:I = 0x56ce

.field public static final EGG_STATION_SSID_START_WITH:Ljava/lang/String; = "PowerEgg_Station_"

.field public static final EYE_STATION_SSID_START_WITH:Ljava/lang/String; = "PowerEye_Station_"

.field public static final FishPoints:Ljava/lang/String;

.field public static final GeoHistory:Ljava/lang/String;

.field public static PV_SONAR_TCP_SERVER_IP:Ljava/lang/String; = null

.field public static final PV_SONAR_TCP_SERVER_PORT:I = 0x4e22

.field public static final PV_SONAR_UDP_SERVER_PORT:I = 0x4e21

.field public static final RAY_SONAR_PAIR_PORT:I = 0x3dc

.field public static final RAY_SSID_START_WITH:Ljava/lang/String; = "PSE_Station_"

.field public static final RAY_STATION_SSID_START_WITH:Ljava/lang/String; = "PRA_Station_"

.field public static final RAY_TCP_SERVER_PORT:I = 0x1f90

.field public static final SONAR_SSID_START_WITH:Ljava/lang/String; = "PSE_"

.field public static final TEST_STATION_SSID_START_WITH:Ljava/lang/String; = "Atheros_XSpan_"

.field public static final USB_DLO1_PING_IP:Ljava/lang/String; = "192.168.1.11"

.field public static W4_BODY_FIRMWARE_UPDATE_IP:Ljava/lang/String; = null

.field public static final W4_BODY_FIRMWARE_UPDATE_PORT:I = 0x1046a

.field public static final W4_BODY_SSID_PREFIX:[Ljava/lang/String;

.field public static W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String; = null

.field public static final W4_CAMERA_HTTP_SERVER_PORT:I = 0x162e

.field public static W4_CAMERA_TCP_SERVER_IP:Ljava/lang/String; = null

.field public static final W4_MT03_REMOTE_CONNECT_9342_PORT:I = 0x17

.field public static W4_MT03_REMOTE_HTTP_SERVER_IP:Ljava/lang/String; = null

.field public static final W4_MT03_REMOTE_HTTP_SERVER_PORT:I = 0x3039

.field public static final W4_MT03_REMOTE_UPDATE_PORT:I = 0x15

.field public static final W4_REMOTE_SSID_PREFIX:[Ljava/lang/String;

.field public static final cameraFileName:Ljava/lang/String;

.field public static canInActivity:Z = true

.field public static final editFileName:Ljava/lang/String;

.field public static final firmwarePath:Ljava/lang/String;

.field private static final mainFileName:Ljava/lang/String;

.field public static num:I = 0x64

.field public static final rtsplock:Ljava/lang/Object;

.field public static final sonarHistory:Ljava/lang/String;

.field public static final sonarLog:Ljava/lang/String;

.field public static final videoFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->rtsplock:Ljava/lang/Object;

    const-string v0, "192.168.1.12"

    .line 24
    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->DEFAULT_TCP_SERVER_IP:Ljava/lang/String;

    const-string v1, "192.168.1.3"

    .line 27
    sput-object v1, Lcom/powervision/base/config/GlobalConfig;->PV_SONAR_TCP_SERVER_IP:Ljava/lang/String;

    const-string v1, "rtsp://192.168.1.10/livestream/12"

    .line 30
    sput-object v1, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_TCP_SERVER_IP:Ljava/lang/String;

    const-string v1, "http://192.168.1.10/"

    .line 33
    sput-object v1, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    const-string v1, "192.168.1.10"

    .line 34
    sput-object v1, Lcom/powervision/base/config/GlobalConfig;->W4_BODY_FIRMWARE_UPDATE_IP:Ljava/lang/String;

    const-string v1, "192.168.1.2"

    .line 42
    sput-object v1, Lcom/powervision/base/config/GlobalConfig;->W4_MT03_REMOTE_HTTP_SERVER_IP:Ljava/lang/String;

    const-string v1, "192.168.1.11"

    .line 57
    sput-object v1, Lcom/powervision/base/config/GlobalConfig;->DL01_SERVER_IP:Ljava/lang/String;

    .line 65
    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->AIR_DL01_SERVER_IP:Ljava/lang/String;

    const-string v0, "pvw4"

    const-string v1, "PDO_VEH_"

    .line 88
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->W4_BODY_SSID_PREFIX:[Ljava/lang/String;

    const-string v0, "PDO_RMOTE_SN"

    const-string v1, "PDO_RC"

    const-string v2, "PDO_BOAT"

    .line 92
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->W4_REMOTE_SSID_PREFIX:[Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getMainPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->mainFileName:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->mainFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->cameraFileName:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->mainFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "edit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->editFileName:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->mainFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->videoFileName:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->mainFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "firmware"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->firmwarePath:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->mainFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SonarHistory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->sonarHistory:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->mainFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sonar_log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->sonarLog:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->mainFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GeoLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->GeoHistory:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->mainFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FishPoints"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->FishPoints:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUSBConnect()Z
    .locals 2

    .line 130
    sget-object v0, Lcom/powervision/base/config/GlobalConfig;->DEFAULT_TCP_SERVER_IP:Ljava/lang/String;

    const-string v1, "192.168.42.12"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isWIFIConnect()Z
    .locals 2

    .line 139
    sget-object v0, Lcom/powervision/base/config/GlobalConfig;->DEFAULT_TCP_SERVER_IP:Ljava/lang/String;

    const-string v1, "192.168.1.12"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static switchAndroidUSBConnect()V
    .locals 2

    const-string v0, "192.168.42.3"

    .line 167
    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->PV_SONAR_TCP_SERVER_IP:Ljava/lang/String;

    const-string v0, "rtsp://192.168.42.10/livestream/12"

    .line 168
    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_TCP_SERVER_IP:Ljava/lang/String;

    const-string v0, "http://192.168.42.10/"

    .line 169
    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/powervision/base/config/PVW4CameraConfig;->get()Lcom/powervision/base/config/PVW4CameraConfig;

    move-result-object v0

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/base/config/PVW4CameraConfig;->setHttpServerIp(Ljava/lang/String;)V

    return-void
.end method

.method public static switchWIFIConnect()V
    .locals 2

    const-string v0, "192.168.1.1"

    .line 147
    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->PV_SONAR_TCP_SERVER_IP:Ljava/lang/String;

    const-string v0, "rtsp://192.168.1.10/livestream/12"

    .line 148
    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_TCP_SERVER_IP:Ljava/lang/String;

    const-string v0, "http://192.168.1.10/"

    .line 149
    sput-object v0, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/powervision/base/config/PVW4CameraConfig;->get()Lcom/powervision/base/config/PVW4CameraConfig;

    move-result-object v0

    sget-object v1, Lcom/powervision/base/config/GlobalConfig;->W4_CAMERA_HTTP_SERVER_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/base/config/PVW4CameraConfig;->setHttpServerIp(Ljava/lang/String;)V

    return-void
.end method
