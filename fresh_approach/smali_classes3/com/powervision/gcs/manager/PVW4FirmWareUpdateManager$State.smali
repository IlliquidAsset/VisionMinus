.class public Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static BODYZIPNAME:Ljava/lang/String; = ""

.field public static BODYZIPPATH:Ljava/lang/String; = ""

.field public static BodyShowVersion:Ljava/lang/String; = ""

.field public static CAMERAVERSION:Ljava/lang/String; = ""

.field public static DL01VERSION:Ljava/lang/String; = ""

.field public static DL01_FILE_NAME:Ljava/lang/String; = null

.field public static FCVERSION:Ljava/lang/String; = ""

.field public static MCUVERSION:Ljava/lang/String; = ""

.field public static MCU_FILE_NAME:Ljava/lang/String; = null

.field public static REMOTEBASEPATH:Ljava/lang/String; = ""

.field public static SHIP_WIFI_REMOTE_FIRMWARE_1:Ljava/lang/String; = null

.field public static SHIP_WIFI_REMOTE_FIRMWARE_2:Ljava/lang/String; = null

.field public static SHIP_WIFI_REMOTE_MD5:Ljava/lang/String; = null

.field public static WIFIVERSION:Ljava/lang/String; = ""

.field public static bodyDownLoadSize:Ljava/lang/String; = ""

.field public static bodyReleaseNote:Ljava/lang/String; = ""

.field public static body_download_infos:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/BodyFirmWareModel;",
            ">;"
        }
    .end annotation
.end field

.field public static body_local_firmwares:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;"
        }
    .end annotation
.end field

.field public static body_need_zip_firmwares:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;"
        }
    .end annotation
.end field

.field public static hasDl01:Z = false

.field public static isA:Z = true

.field public static remoteDl01Md5:Ljava/lang/String; = ""

.field public static remoteDownLoadSize:Ljava/lang/String; = ""

.field public static remoteReleaseNote:Ljava/lang/String; = ""

.field public static remote_download_model:Lcom/powervision/gcs/manager/W4Firmware; = null

.field public static remote_local_firmwares:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;"
        }
    .end annotation
.end field

.field public static showBodyDownLoad:Z = false

.field public static showBodyUpdate:Z = false

.field public static showDl01Update:Z = false

.field public static showMcuUpdate:Z = false

.field public static showRemoteDownLoad:Z = false

.field public static showWifiUpdate:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_download_infos:Ljava/util/ArrayList;

    .line 2314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    .line 2316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_local_firmwares:Ljava/util/ArrayList;

    .line 2318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_need_zip_firmwares:Ljava/util/ArrayList;

    const-string v0, ""

    .line 2320
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCU_FILE_NAME:Ljava/lang/String;

    .line 2322
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01_FILE_NAME:Ljava/lang/String;

    const-string v0, "mi124_f1e-jffs2"

    .line 2324
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->SHIP_WIFI_REMOTE_FIRMWARE_1:Ljava/lang/String;

    const-string v0, "vmlinux_mi124_f1e.lzma.uImage"

    .line 2325
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->SHIP_WIFI_REMOTE_FIRMWARE_2:Ljava/lang/String;

    const-string v0, "9342upgrademd5"

    .line 2326
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->SHIP_WIFI_REMOTE_MD5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRemote_download_model()Lcom/powervision/gcs/manager/W4Firmware;
    .locals 11

    .line 2307
    new-instance v10, Lcom/powervision/gcs/manager/W4Firmware;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v1, v0, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v2, v0, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v3, v0, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v4, v0, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v5, v0, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v6, v0, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type_abs:Ljava/lang/String;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v7, v0, Lcom/powervision/gcs/manager/W4Firmware;->download_address:Ljava/lang/String;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget v8, v0, Lcom/powervision/gcs/manager/W4Firmware;->isForce:I

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v9, v0, Lcom/powervision/gcs/manager/W4Firmware;->md5:Ljava/lang/String;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/powervision/gcs/manager/W4Firmware;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v10
.end method
