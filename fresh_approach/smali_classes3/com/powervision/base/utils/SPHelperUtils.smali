.class public Lcom/powervision/base/utils/SPHelperUtils;
.super Ljava/lang/Object;
.source "SPHelperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/utils/SPHelperUtils$LazyHolder;
    }
.end annotation


# static fields
.field private static final SHIP_ROCK_MODE:Ljava/lang/String; = "ship_rock_mode"

.field private static final TAG:Ljava/lang/String; = "SPHelperUtils"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "GLOBAL_SETTING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/base/utils/SPHelperUtils$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/powervision/base/utils/SPHelperUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/base/utils/SPHelperUtils;
    .locals 1

    .line 40
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils$LazyHolder;->access$100()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "birthday"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    iget-object p1, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "country"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    iget-object p1, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "headImage"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object p1, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "nickName"

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    iget-object p1, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "userId"

    invoke-interface {p1, p2, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    iget-object p1, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAutoBarrierState()Z
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTO_BARRIER"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBodyDl01()Ljava/lang/String;
    .locals 3

    .line 893
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4bodydl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyFC()Ljava/lang/String;
    .locals 3

    .line 900
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4bodywifi"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyMcu()Ljava/lang/String;
    .locals 3

    .line 907
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4bodymcu"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyMergeVersion()Ljava/lang/String;
    .locals 3

    .line 885
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4bodymer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getContent()Ljava/lang/String;
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/powervision/base/constant/Constant;->TITLE:Ljava/lang/String;

    const-string v2, "xx"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecoderStatus()Z
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFirst()Z
    .locals 3

    .line 982
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "is_first"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFirstAppTime()J
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstLoadMap()Z
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "load_map_tye"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getGuideState()Z
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "GUIDE_PAGER_STATE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLocalHeadPic()Ljava/lang/String;
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "headPicUrl_local"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Z
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "LOCATION_SAVE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMapType()I
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MAP_TYPE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNewerMode()I
    .locals 3

    .line 978
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "newer_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPVSonarUseCount()I
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PVSonarUseCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPsn()Ljava/lang/String;
    .locals 3

    .line 876
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "W4PSN"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteDl01()Ljava/lang/String;
    .locals 3

    .line 924
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4Remotedl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteMcu()Ljava/lang/String;
    .locals 3

    .line 938
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4Remotemcu"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteMergeVersion()Ljava/lang/String;
    .locals 3

    .line 916
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4remote"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteWifi()Ljava/lang/String;
    .locals 3

    .line 931
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4Remotewifi"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolution()I
    .locals 3

    .line 950
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "resolution"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSafeModeState()Z
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SAFE_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getScreenAdvImgUrl()Ljava/lang/String;
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screenadv_headImage"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowAgreement()Z
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SHOW_AGREEMENT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSingleId()Ljava/lang/String;
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SINGLEID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlowResolution()I
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "slow_resolution"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSonarWifiSoftVersion()Ljava/lang/String;
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SONAR_WIFISOFT_VERSION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnitMode()I
    .locals 3

    .line 828
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "UnitMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUpgradeStatus()Z
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "UpgradeStatus"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUserInfo()Lcom/powervision/base/model/LoginModel;
    .locals 7

    .line 120
    new-instance v0, Lcom/powervision/base/model/LoginModel;

    invoke-direct {v0}, Lcom/powervision/base/model/LoginModel;-><init>()V

    .line 121
    new-instance v1, Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-direct {v1}, Lcom/powervision/base/model/LoginModel$LoginData;-><init>()V

    iput-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    .line 122
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "userId"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setUserId(Ljava/lang/String;)V

    .line 123
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "sex"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setSex(Ljava/lang/String;)V

    .line 124
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "token"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setToken(Ljava/lang/String;)V

    .line 125
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "headimage"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setheadImage(Ljava/lang/String;)V

    .line 126
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "id"

    const-wide/16 v5, 0x1

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setId(Ljava/lang/Long;)V

    .line 127
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "userPhone"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setUserphone(Ljava/lang/String;)V

    .line 128
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "userName"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setUsername(Ljava/lang/String;)V

    .line 129
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "useremail"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setUseremail(Ljava/lang/String;)V

    .line 130
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "nickName"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setNickname(Ljava/lang/String;)V

    .line 131
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "appkey"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setappkey(Ljava/lang/String;)V

    .line 132
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "country"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setCountry(Ljava/lang/String;)V

    .line 133
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "city"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setCity(Ljava/lang/String;)V

    .line 134
    iget-object v1, v0, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    iget-object v2, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "birthday"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/model/LoginModel$LoginData;->setBirthday(Ljava/lang/String;)V

    return-object v0
.end method

.method public getUserLoginState()Z
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "USER_LOGIN_STATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVoiceState()Z
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "VOICE_PLAY"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVoltage()Z
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "VOLTAGE_SHOW"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isThreeDays()Z
    .locals 5

    .line 192
    invoke-virtual {p0}, Lcom/powervision/base/utils/SPHelperUtils;->getFirstAppTime()J

    move-result-wide v0

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xf731400

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readObj(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 417
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    .line 419
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 422
    :try_start_0
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 425
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 427
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 430
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveAutomaticBarrierState(Z)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "AUTO_BARRIER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveBodyDl01(Ljava/lang/String;)V
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4bodydl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveBodyFc(Ljava/lang/String;)V
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4bodywifi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveBodyMcu(Ljava/lang/String;)V
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4bodymcu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveBodyMergeVersion(Ljava/lang/String;)V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4bodymer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveDecoderState(Z)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveFirst(Z)V
    .locals 2

    .line 986
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_first"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveFirstAppTime()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveFistLoadMap(Z)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "load_map_tye"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public saveFloat(Ljava/lang/String;F)V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveGuideState(Z)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "GUIDE_PAGER_STATE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveInt(Ljava/lang/String;I)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveLocation(Z)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LOCATION_SAVE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveMapType(I)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "MAP_TYPE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public saveNewerMode(I)V
    .locals 2

    .line 974
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "newer_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveObj(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 445
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 448
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 450
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 452
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    .line 454
    iget-object p2, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "USER_NEAN"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 455
    iget-object p1, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 457
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public savePsn(Ljava/lang/String;)V
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "W4PSN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public saveRemoteDl01(Ljava/lang/String;)V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4Remotedl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveRemoteMcu(Ljava/lang/String;)V
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4Remotemcu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveRemoteMergeVersion(Ljava/lang/String;)V
    .locals 2

    .line 913
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4remote"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveRemoteWifi(Ljava/lang/String;)V
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4Remotewifi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveResolution(I)V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "resolution"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveSafeModeState(Z)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SAFE_MODE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveScreenAdvImgUrl(Ljava/lang/String;)V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "screenadv_headImage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveShowGuide(I)V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveShowGuide(IZ)V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveSingleId(Ljava/lang/String;)V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SINGLEID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveSlowResolution(I)V
    .locals 2

    .line 958
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "slow_resolution"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveUnitMode(I)V
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "UnitMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveUpgradeStatus(Z)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "UpgradeStatus"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveUserInfo(Lcom/powervision/base/model/LoginModel;)V
    .locals 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveUserInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPHelperUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getSex()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sex"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getheadImage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "headimage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "identify"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 76
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getUserphone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userPhone"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getUseremail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useremail"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getNickname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nickName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getappkey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appkey"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getCity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "city"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object p1, p1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {p1}, Lcom/powervision/base/model/LoginModel$LoginData;->getBirthday()Ljava/lang/String;

    move-result-object p1

    const-string v1, "birthday"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveUserLoginState(Z)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "USER_LOGIN_STATE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveVoiceState(Z)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VOICE_PLAY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public saveVoltage(Z)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VOLTAGE_SHOW"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public setLocalHeadPic(Ljava/lang/String;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "headPicUrl_local"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setMaskGuideShowForIndex(IZ)V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mask_guide"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setShowAgreement(Z)V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SHOW_AGREEMENT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSonarMcuSoftVersion(Ljava/lang/String;)Z
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SONAR_MCUSOFT_VERSION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p1, 0x1

    return p1
.end method

.method public setSonarWifiSoftVersion(Ljava/lang/String;)Z
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SONAR_WIFISOFT_VERSION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p1, 0x1

    return p1
.end method

.method public showGuide(I)Z
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/powervision/base/utils/SPHelperUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
