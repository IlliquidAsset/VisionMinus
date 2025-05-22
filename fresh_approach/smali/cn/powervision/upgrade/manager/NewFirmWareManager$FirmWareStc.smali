.class public Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirmWareStc"
.end annotation


# static fields
.field static final DEFAULT_VERSION:Ljava/lang/String; = "0.0.0"

.field static DL01VERSION:Ljava/lang/String; = "0.0.0"

.field static Dev_AP03_BODY_VERSION:Ljava/lang/String; = "0.0.0"

.field static Dev_DL01VERSION:Ljava/lang/String; = "0.0.0"

.field static Dev_MCUVERSION:Ljava/lang/String; = "000000"

.field static Dev_acVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_dlVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_dvVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_fcVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_fsVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_fvVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_gmVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_mcVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_modelVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_nfzVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_otaVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_snVersion:Ljava/lang/String; = "0.0.0"

.field static Dev_usbVersion:Ljava/lang/String; = "0.0.0"

.field static Local_body_merge_version:Ljava/lang/String; = ""

.field static MCUVERSION:Ljava/lang/String; = "00000"

.field static REMOTE_LOCAL_VERSION:Ljava/lang/String; = "0.0.0"

.field static acVersion:Ljava/lang/String; = "0.0.0"

.field public static ap03Version:Ljava/lang/String; = ""

.field static configVersion:Ljava/lang/String; = "0.0.0"

.field static dlVersion:Ljava/lang/String; = "0.0.0"

.field static dvVersion:Ljava/lang/String; = "0.0.0"

.field static fcVersion:Ljava/lang/String; = "0.0.0"

.field static fsVersion:Ljava/lang/String; = "0.0.0"

.field static fvVersion:Ljava/lang/String; = "0.0.0"

.field static gmVersion:Ljava/lang/String; = "0.0.0"

.field static local_body_force_update:I = -0x1

.field static local_remote_force_update:I = -0x1

.field static mZipName:Ljava/lang/String; = ""

.field static masterVersion:Ljava/lang/String; = "0.0.0"

.field static mcVersion:Ljava/lang/String; = "0.0.0"

.field static modelVersion:Ljava/lang/String; = "2.0.0"

.field static nfzVersion:Ljava/lang/String; = "0.0.0"

.field static onLineMergeVersion:Ljava/lang/String; = ""

.field static otaVersion:Ljava/lang/String; = "0.0.0"

.field static snVersion:Ljava/lang/String; = "0.0.0"

.field static usbVersion:Ljava/lang/String; = "0.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAcVersion()Ljava/lang/String;
    .locals 1

    .line 1045
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->acVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getConfigVersion()Ljava/lang/String;
    .locals 1

    .line 1350
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->configVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDL01VERSION()Ljava/lang/String;
    .locals 1

    .line 1152
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->DL01VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_AP03_BODY_VERSION()Ljava/lang/String;
    .locals 1

    .line 1168
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_AP03_BODY_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_DL01VERSION()Ljava/lang/String;
    .locals 1

    .line 1291
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_DL01VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_MCUVERSION()Ljava/lang/String;
    .locals 1

    .line 1282
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_MCUVERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_acVersion()Ljava/lang/String;
    .locals 1

    .line 1193
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_acVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_dlVersion()Ljava/lang/String;
    .locals 1

    .line 1257
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_dlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_dvVersion()Ljava/lang/String;
    .locals 1

    .line 1201
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_dvVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_fcVersion()Ljava/lang/String;
    .locals 1

    .line 1209
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_fcVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_fsVersion()Ljava/lang/String;
    .locals 1

    .line 1184
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_fsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_fvVersion()Ljava/lang/String;
    .locals 1

    .line 1217
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_fvVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_gmVersion()Ljava/lang/String;
    .locals 1

    .line 1225
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_gmVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_mcVersion()Ljava/lang/String;
    .locals 1

    .line 1233
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_mcVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_modelVersion()Ljava/lang/String;
    .locals 1

    .line 1274
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_modelVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_nfzVersion()Ljava/lang/String;
    .locals 1

    .line 1266
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_nfzVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_otaVersion()Ljava/lang/String;
    .locals 1

    .line 1241
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_otaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_snVersion()Ljava/lang/String;
    .locals 1

    .line 1176
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_snVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDev_usbVersion()Ljava/lang/String;
    .locals 1

    .line 1249
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_usbVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDlVersion()Ljava/lang/String;
    .locals 1

    .line 1119
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->dlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getDvVersion()Ljava/lang/String;
    .locals 1

    .line 1053
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->dvVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getFcVersion()Ljava/lang/String;
    .locals 1

    .line 1061
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->fcVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getFsVersion()Ljava/lang/String;
    .locals 1

    .line 1037
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->fsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getFvVersion()Ljava/lang/String;
    .locals 1

    .line 1069
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->fvVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getGmVersion()Ljava/lang/String;
    .locals 1

    .line 1077
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->gmVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocal_body_force_update()I
    .locals 1

    .line 1300
    sget v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->local_body_force_update:I

    return v0
.end method

.method static getLocal_body_merge_version()Ljava/lang/String;
    .locals 1

    .line 1382
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Local_body_merge_version:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocal_remote_force_update()I
    .locals 1

    .line 1309
    sget v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->local_remote_force_update:I

    return v0
.end method

.method public static getMCUVERSION()Ljava/lang/String;
    .locals 1

    .line 1144
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->MCUVERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getMasterVersion()Ljava/lang/String;
    .locals 1

    .line 1317
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->masterVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getMcVersion()Ljava/lang/String;
    .locals 2

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMcVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->mcVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->mcVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getModelVersion()Ljava/lang/String;
    .locals 1

    .line 1135
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->modelVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getNfzVersion()Ljava/lang/String;
    .locals 1

    .line 1127
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->nfzVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getOnLineMergeVersion()Ljava/lang/String;
    .locals 1

    .line 1372
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->onLineMergeVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getOtaVersion()Ljava/lang/String;
    .locals 1

    .line 1103
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->otaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getREMOTE_LOCAL_VERSION()Ljava/lang/String;
    .locals 1

    .line 1029
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->REMOTE_LOCAL_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getSnVersion()Ljava/lang/String;
    .locals 1

    .line 1095
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->snVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsbVersion()Ljava/lang/String;
    .locals 1

    .line 1111
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->usbVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getmZipName()Ljava/lang/String;
    .locals 1

    .line 1160
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->mZipName:Ljava/lang/String;

    return-object v0
.end method

.method public static setAcVersion(Ljava/lang/String;)V
    .locals 0

    .line 1049
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->acVersion:Ljava/lang/String;

    return-void
.end method

.method public static setConfigVersion(Ljava/lang/String;)V
    .locals 0

    .line 1354
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->configVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDL01VERSION(Ljava/lang/String;)V
    .locals 0

    .line 1156
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->DL01VERSION:Ljava/lang/String;

    return-void
.end method

.method public static setDev_AP03_BODY_VERSION(Ljava/lang/String;)V
    .locals 0

    .line 1172
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_AP03_BODY_VERSION:Ljava/lang/String;

    return-void
.end method

.method public static setDev_DL01VERSION(Ljava/lang/String;)V
    .locals 0

    .line 1296
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_DL01VERSION:Ljava/lang/String;

    return-void
.end method

.method public static setDev_MCUVERSION(Ljava/lang/String;)V
    .locals 0

    .line 1286
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_MCUVERSION:Ljava/lang/String;

    return-void
.end method

.method public static setDev_acVersion(Ljava/lang/String;)V
    .locals 0

    .line 1197
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_acVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_dlVersion(Ljava/lang/String;)V
    .locals 0

    .line 1261
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_dlVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_dvVersion(Ljava/lang/String;)V
    .locals 0

    .line 1205
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_dvVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_fcVersion(Ljava/lang/String;)V
    .locals 0

    .line 1213
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_fcVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_fsVersion(Ljava/lang/String;)V
    .locals 0

    .line 1188
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_fsVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_fvVersion(Ljava/lang/String;)V
    .locals 0

    .line 1221
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_fvVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_gmVersion(Ljava/lang/String;)V
    .locals 0

    .line 1229
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_gmVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_mcVersion(Ljava/lang/String;)V
    .locals 0

    .line 1237
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_mcVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_modelVersion(Ljava/lang/String;)V
    .locals 0

    .line 1278
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_modelVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_nfzVersion(Ljava/lang/String;)V
    .locals 0

    .line 1270
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_nfzVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_otaVersion(Ljava/lang/String;)V
    .locals 0

    .line 1245
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_otaVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_snVersion(Ljava/lang/String;)V
    .locals 0

    .line 1180
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_snVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDev_usbVersion(Ljava/lang/String;)V
    .locals 0

    .line 1253
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Dev_usbVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDlVersion(Ljava/lang/String;)V
    .locals 0

    .line 1123
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->dlVersion:Ljava/lang/String;

    return-void
.end method

.method public static setDvVersion(Ljava/lang/String;)V
    .locals 0

    .line 1057
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->dvVersion:Ljava/lang/String;

    return-void
.end method

.method public static setFcVersion(Ljava/lang/String;)V
    .locals 0

    .line 1065
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->fcVersion:Ljava/lang/String;

    return-void
.end method

.method public static setFsVersion(Ljava/lang/String;)V
    .locals 0

    .line 1041
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->fsVersion:Ljava/lang/String;

    return-void
.end method

.method public static setFvVersion(Ljava/lang/String;)V
    .locals 0

    .line 1073
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->fvVersion:Ljava/lang/String;

    return-void
.end method

.method public static setGmVersion(Ljava/lang/String;)V
    .locals 0

    .line 1081
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->gmVersion:Ljava/lang/String;

    return-void
.end method

.method public static setLocal_body_force_update(I)V
    .locals 0

    .line 1304
    sput p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->local_body_force_update:I

    return-void
.end method

.method static setLocal_body_merge_version(Ljava/lang/String;)V
    .locals 0

    .line 1386
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->Local_body_merge_version:Ljava/lang/String;

    return-void
.end method

.method public static setLocal_remote_force_update(I)V
    .locals 0

    .line 1313
    sput p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->local_remote_force_update:I

    return-void
.end method

.method public static setMCUVERSION(Ljava/lang/String;)V
    .locals 0

    .line 1148
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->MCUVERSION:Ljava/lang/String;

    return-void
.end method

.method public static setMasterVersion(Ljava/lang/String;)V
    .locals 0

    .line 1321
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->masterVersion:Ljava/lang/String;

    return-void
.end method

.method public static setMcVersion(Ljava/lang/String;)V
    .locals 2

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMcVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->mcVersion:Ljava/lang/String;

    return-void
.end method

.method public static setModelVersion(Ljava/lang/String;)V
    .locals 0

    .line 1139
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->modelVersion:Ljava/lang/String;

    return-void
.end method

.method public static setNfzVersion(Ljava/lang/String;)V
    .locals 0

    .line 1131
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->nfzVersion:Ljava/lang/String;

    return-void
.end method

.method public static setOnLineMergeVersion(Ljava/lang/String;)V
    .locals 0

    .line 1376
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->onLineMergeVersion:Ljava/lang/String;

    return-void
.end method

.method public static setOtaVersion(Ljava/lang/String;)V
    .locals 0

    .line 1107
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->otaVersion:Ljava/lang/String;

    return-void
.end method

.method public static setREMOTE_LOCAL_VERSION(Ljava/lang/String;)V
    .locals 0

    .line 1033
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->REMOTE_LOCAL_VERSION:Ljava/lang/String;

    return-void
.end method

.method public static setSnVersion(Ljava/lang/String;)V
    .locals 0

    .line 1099
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->snVersion:Ljava/lang/String;

    return-void
.end method

.method public static setUsbVersion(Ljava/lang/String;)V
    .locals 0

    .line 1115
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->usbVersion:Ljava/lang/String;

    return-void
.end method

.method public static setmZipName(Ljava/lang/String;)V
    .locals 0

    .line 1164
    sput-object p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->mZipName:Ljava/lang/String;

    return-void
.end method
