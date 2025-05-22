.class public Lcom/powervision/base/utils/UmengUtils;
.super Ljava/lang/Object;
.source "UmengUtils.java"


# static fields
.field private static final UM_APP_CHANNEL:Ljava/lang/String; = "umeng"

.field private static final UM_APP_KEY:Ljava/lang/String; = "5c4922d2f1f556ee99001206"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraSizeStr(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "1280x720 25fps"

    goto :goto_0

    :pswitch_1
    const-string p0, "1280x720 24fps"

    goto :goto_0

    :pswitch_2
    const-string p0, "1280x720 48fps"

    goto :goto_0

    :pswitch_3
    const-string p0, "280x720 50fps"

    goto :goto_0

    :pswitch_4
    const-string p0, "1920x1080 24fps"

    goto :goto_0

    :pswitch_5
    const-string p0, "1920x1080 25fps"

    goto :goto_0

    :pswitch_6
    const-string p0, "1920x1080 48fps"

    goto :goto_0

    :pswitch_7
    const-string p0, "1920x1080 50fps"

    goto :goto_0

    :pswitch_8
    const-string p0, "3840x2160 24fps"

    goto :goto_0

    :pswitch_9
    const-string p0, "3840x2160 25fps"

    goto :goto_0

    :pswitch_a
    const-string p0, "3840x2160 48fps"

    goto :goto_0

    :pswitch_b
    const-string p0, "3840x2160 50fps"

    goto :goto_0

    :pswitch_c
    const-string p0, "1280x720 240fps"

    goto :goto_0

    :pswitch_d
    const-string p0, "1280x720 120fps"

    goto :goto_0

    :pswitch_e
    const-string p0, "1280x720 60fps"

    goto :goto_0

    :pswitch_f
    const-string p0, "1280x720 30fps"

    goto :goto_0

    :pswitch_10
    const-string p0, "1920x1080 120fps"

    goto :goto_0

    :pswitch_11
    const-string p0, "1920x1080 60fps"

    goto :goto_0

    :pswitch_12
    const-string p0, "1920x1080 30fps"

    goto :goto_0

    :pswitch_13
    const-string p0, "3840x2160 60fps"

    goto :goto_0

    :pswitch_14
    const-string p0, "3840x2160 30fps"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method public static getDefaultHookMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/powervision/base/utils/TimeUtils;->time2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "location"

    const-string v2, ""

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getHookMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "snCode"

    const-string v2, ""

    .line 48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v3, "device_model"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u98de\u884c\u5668"

    goto :goto_0

    :cond_0
    const-string v1, "\u624b\u6301DV"

    :goto_0
    const-string v3, "type"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-static {v3, v4, v1}, Lcom/powervision/base/utils/TimeUtils;->time2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "time"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "location"

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AP03_ACTIVATION_PSN_CODE"

    .line 80
    invoke-virtual {v0, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BP_PHONE_LATITUDE"

    invoke-virtual {v0, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "BP_PHONE_LONGITUDE"

    .line 83
    invoke-virtual {v0, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {}, Lcom/powervision/base/utils/AppUtils;->getVersionName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BP_FIRMWARE_VERSION"

    .line 87
    invoke-virtual {v0, v5}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "Uesr_ID"

    .line 90
    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GPS"

    .line 91
    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "APP_Version"

    .line 92
    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Device_Activation"

    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "PSN"

    if-nez v1, :cond_0

    const-string v1, "Device_Connection"

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "AP03_D_Normal"

    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "FW_Version"

    if-nez v1, :cond_2

    const-string v1, "AP03_D_Rainproof"

    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AP03_D_Water_Landing"

    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    :cond_2
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "AP03_AI_Camera"

    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "AP03_D_Flight"

    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "BP_FLY_START_TIME"

    invoke-virtual {v0, v3, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Flight_Time"

    .line 114
    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BP_FLY_DISTANCE"

    .line 115
    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Flight_Distance"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BP_FLY_HEIGHT"

    .line 116
    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Flight_Height"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BP_FLY_LAVE_BATTERY"

    .line 117
    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Battery_Level"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BP_FLY_MILEAGE"

    .line 118
    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Total_Distance"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "AP03_D_AI_Normal"

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Resolution"

    const-string v2, "Shooting_Time"

    if-nez v0, :cond_6

    const-string v0, "AP03_C_Video"

    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "SyncVoice"

    .line 123
    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-interface {v6, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string p1, "AP03_D_AI_Point_Of_Interest"

    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "AP03_D_AI_Dronie"

    .line 128
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "AP03_D_AI_Circle"

    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "AP03_D_AI_Helix"

    .line 130
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "AP03_D_AI_Rocket"

    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "AP03_D_AI_Ellipse"

    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "AP03_C_Time_Lapse"

    .line 133
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "AP03_C_Slow_Motion"

    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 136
    :cond_8
    invoke-interface {v6, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v6
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->setLogEnabled(Z)V

    const-string v0, "5c4922d2f1f556ee99001206"

    const-string v1, "umeng"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-static {p0, v0, v1, v2, v3}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    sget-object p0, Lcom/umeng/analytics/MobclickAgent$PageMode;->LEGACY_AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->setPageCollectionMode(Lcom/umeng/analytics/MobclickAgent$PageMode;)V

    return-void
.end method

.method public static workUmServiceLogBpFun(Ljava/lang/String;)V
    .locals 9

    .line 148
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AP03_ACTIVATION_PSN_CODE"

    .line 152
    invoke-virtual {v0, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BP_PHONE_LATITUDE"

    invoke-virtual {v0, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "BP_PHONE_LONGITUDE"

    .line 155
    invoke-virtual {v0, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {}, Lcom/powervision/base/utils/AppUtils;->getVersionName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BP_FIRMWARE_VERSION"

    .line 159
    invoke-virtual {v0, v5}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToAll(J)Ljava/lang/String;

    move-result-object v5

    .line 164
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "log_type"

    .line 165
    invoke-interface {v6, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "device_type"

    const-string v8, "android"

    .line 166
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "user_id"

    .line 167
    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "coordinate"

    .line 168
    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_version"

    .line 169
    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "date_time"

    .line 170
    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Device_Activation"

    .line 172
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "psn"

    if-nez v1, :cond_0

    const-string v1, "Device_Connection"

    .line 173
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "AP03_D_Normal"

    .line 177
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AP03_AI_Camera"

    .line 178
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 180
    :cond_2
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "firmware_version"

    .line 181
    invoke-interface {v6, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_3
    invoke-static {}, Lcom/powervision/base/net/retrofit/log/LogBpManager;->getInstance()Lcom/powervision/base/net/retrofit/log/LogBpManager;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Lcom/powervision/base/net/retrofit/log/LogBpManager;->getLogBpApi()Lcom/powervision/base/net/retrofit/log/LogBpApi;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 187
    invoke-virtual {p0, v6}, Lcom/powervision/base/net/retrofit/log/LogBpManager;->getRequestData(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/powervision/base/net/retrofit/log/LogBpApi;->buriedPointRequest(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p0

    .line 188
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 189
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/powervision/base/utils/UmengUtils$1;

    invoke-direct {v0}, Lcom/powervision/base/utils/UmengUtils$1;-><init>()V

    .line 190
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_4
    return-void
.end method
