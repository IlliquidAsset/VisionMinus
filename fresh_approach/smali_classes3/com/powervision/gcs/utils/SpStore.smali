.class public Lcom/powervision/gcs/utils/SpStore;
.super Ljava/lang/Object;
.source "SpStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/SpStore$Pvw4CameraConst;,
        Lcom/powervision/gcs/utils/SpStore$ShipUpdateConstant;
    }
.end annotation


# static fields
.field private static final GUIDE_PVW4_COMMON_1:Ljava/lang/String; = "guide_pvw4_common_1"

.field private static final GUIDE_PVW4_MAP_1:Ljava/lang/String; = "guide_pvw4_map_1"

.field private static final GUIDE_PVW4_SEEKER_1:Ljava/lang/String; = "guide_pvw4_seeker_1"

.field private static final INTEREST_TIPS_SHOWN:Ljava/lang/String; = "interest_tips_shown"

.field private static final PREFERENCE_NAME:Ljava/lang/String;

.field private static final PVW4_CAMERA_LAST_CAMERA_MODE:Ljava/lang/String; = "pvw4_camera_last_camera_mode"

.field private static final PVW4_CAMERA_LAST_RECORD_MODE:Ljava/lang/String; = "pvw4_camera_last_record_mode"

.field private static final ROCKER_EFFECTIVE_PERCENT:Ljava/lang/String; = "rocker_effective_percent"

.field private static final SHIP_BODY_VERSION:Ljava/lang/String; = "ship_body_version"

.field private static final SHIP_CUSTOM_MODE:Ljava/lang/String; = "ship_custon_mode"

.field private static final SHIP_MT03REMOTE_BS_CONNECT_STATUS:Ljava/lang/String; = "ship_mt03remote_bs_connect_status"

.field private static final SHIP_MT03REMOTE_CONNECT_STATUS:Ljava/lang/String; = "ship_mt03remote_connect_status"

.field private static final SHIP_MT03REMOTE_CURRENT_MODE:Ljava/lang/String; = "ship_mt03remote_current_mode"

.field private static final SHIP_MT03REMOTE_ROCKER_MODE:Ljava/lang/String; = "ship_mt03remote_rocker_mode"

.field private static final SHIP_MT03_REMOTE_VERSION:Ljava/lang/String; = "ship_mt03_remote_version"

.field private static final SHIP_PSN_VERSION:Ljava/lang/String; = "ship_psn_version"

.field private static final SHIP_ROCKER_MODE:Ljava/lang/String; = "ship_rocker_mode"

.field private static final SHIP_SCREEN_CLEAR_MODE:Ljava/lang/String; = "ship_screen_clear_mode"

.field private static final TAG:Ljava/lang/String; = "SpStore"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/utils/SpStore;->PREFERENCE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBooleanInfo(Ljava/lang/String;Z)Z
    .locals 1

    .line 484
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getNormalPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getFloatInfo(Ljava/lang/String;F)F
    .locals 1

    .line 508
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getNormalPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getGuidePvw4Common()Z
    .locals 2

    const-string v0, "guide_pvw4_common_1"

    const/4 v1, 0x0

    .line 283
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getBooleanInfo(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getGuidePvw4Map()Z
    .locals 2

    const-string v0, "guide_pvw4_map_1"

    const/4 v1, 0x0

    .line 301
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getBooleanInfo(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getGuidePvw4Seeker()Z
    .locals 2

    const-string v0, "guide_pvw4_seeker_1"

    const/4 v1, 0x0

    .line 319
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getBooleanInfo(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getIntInfo(Ljava/lang/String;I)I
    .locals 1

    .line 461
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getNormalPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInterestTipsShown()Z
    .locals 2

    const-string v0, "interest_tips_shown"

    const/4 v1, 0x0

    .line 337
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getBooleanInfo(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMT03RemoteVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "ship_mt03_remote_version"

    const-string v1, ""

    .line 121
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getStringInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNormalPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .line 414
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/utils/SpStore;->PREFERENCE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getPvw4CameraLastCameraMode()I
    .locals 2

    const-string v0, "pvw4_camera_last_camera_mode"

    const/4 v1, 0x0

    .line 71
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getIntInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPvw4CameraLastRecordMode()I
    .locals 2

    const-string v0, "pvw4_camera_last_record_mode"

    const/16 v1, 0x14

    .line 80
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getIntInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRemoteBSConnectStatus()I
    .locals 2

    const-string v0, "ship_mt03remote_bs_connect_status"

    const/4 v1, -0x1

    .line 135
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getIntInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRemoteCurrentMode()I
    .locals 2

    const-string v0, "ship_mt03remote_current_mode"

    const/4 v1, -0x1

    .line 155
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getIntInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRemoteRockerMode()I
    .locals 2

    const-string v0, "ship_mt03remote_rocker_mode"

    const/4 v1, 0x0

    .line 186
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getIntInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRockerEffectivePercent()F
    .locals 2

    const-string v0, "rocker_effective_percent"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 245
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getFloatInfo(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getShipBodyIsIgnoreUpdate(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/SpStore;->getBooleanInfo(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getShipBodyVersion()I
    .locals 2

    const-string v0, "ship_body_version"

    const/4 v1, 0x0

    .line 226
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getIntInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getShipCustomMode()I
    .locals 2

    const-string v0, "ship_custon_mode"

    const/4 v1, 0x0

    .line 407
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getIntInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getShipMt03RemoteConnectStatus()I
    .locals 2

    const-string v0, "ship_mt03remote_connect_status"

    const/4 v1, -0x1

    .line 207
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getIntInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getShipPsnVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "ship_psn_version"

    const-string v1, ""

    .line 264
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getStringInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShipRockerMode()I
    .locals 2

    const-string v0, "ship_rocker_mode"

    const/4 v1, 0x6

    .line 403
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getIntInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStringInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 438
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getNormalPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getViewClearMode()I
    .locals 2

    const-string v0, "ship_screen_clear_mode"

    const/4 v1, 0x0

    .line 379
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/SpStore;->getIntInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isRemoteRockerModeCommon()Z
    .locals 1

    .line 195
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getRemoteRockerMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static saveBooleanInfo(Ljava/lang/String;Z)V
    .locals 1

    .line 471
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getNormalPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 472
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 473
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static saveFloatInfo(Ljava/lang/String;F)V
    .locals 1

    .line 495
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getNormalPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 497
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static saveIntInfo(Ljava/lang/String;I)V
    .locals 1

    .line 448
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getNormalPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 450
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 451
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveStringInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 425
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getNormalPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 427
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setGuidePvw4Common(Z)V
    .locals 1

    const-string v0, "guide_pvw4_common_1"

    .line 292
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveBooleanInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setGuidePvw4Map(Z)V
    .locals 1

    const-string v0, "guide_pvw4_map_1"

    .line 310
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveBooleanInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setGuidePvw4Seeker(Z)V
    .locals 1

    const-string v0, "guide_pvw4_seeker_1"

    .line 328
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveBooleanInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setInterestTipsShown(Z)V
    .locals 1

    const-string v0, "interest_tips_shown"

    .line 347
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveBooleanInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setMT03RemoteVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ship_mt03_remote_version"

    .line 125
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveStringInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPvw4CameraLastCameraMode(I)V
    .locals 1

    const-string v0, "pvw4_camera_last_camera_mode"

    .line 90
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveIntInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public static setPvw4CameraLastRecordMode(I)V
    .locals 1

    const-string v0, "pvw4_camera_last_record_mode"

    .line 100
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveIntInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public static setRemoteCurrentMode(I)V
    .locals 1

    const-string v0, "ship_mt03remote_current_mode"

    .line 168
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveIntInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public static setRemoteRockerMode(I)V
    .locals 1

    const-string v0, "ship_mt03remote_rocker_mode"

    .line 177
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveIntInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public static setRockerEffectivePercent(F)V
    .locals 1

    const-string v0, "rocker_effective_percent"

    .line 254
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveFloatInfo(Ljava/lang/String;F)V

    return-void
.end method

.method public static setShipBodyIsIgnoreUpdate(Ljava/lang/String;Z)V
    .locals 0

    .line 117
    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/SpStore;->saveBooleanInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setShipBodyVersion(I)V
    .locals 1

    const-string v0, "ship_body_version"

    .line 235
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveIntInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public static setShipCustomMode(I)V
    .locals 1

    const-string v0, "ship_custon_mode"

    .line 361
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveIntInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public static setShipMt03RemoteConnectStatus(I)V
    .locals 1

    const-string v0, "ship_mt03remote_connect_status"

    .line 217
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveIntInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public static setShipPsnVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ship_psn_version"

    .line 273
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveStringInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setShipRockerMode(I)V
    .locals 1

    const-string v0, "ship_rocker_mode"

    .line 357
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveIntInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public static setViewClearMode(I)V
    .locals 1

    const-string v0, "ship_screen_clear_mode"

    .line 370
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/SpStore;->saveIntInfo(Ljava/lang/String;I)V

    return-void
.end method
