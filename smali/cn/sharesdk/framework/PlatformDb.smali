.class public Lcn/sharesdk/framework/PlatformDb;
.super Ljava/lang/Object;
.source "PlatformDb.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "cn_sharesdk_weibodb"


# instance fields
.field private platformNname:Ljava/lang/String;

.field private platformVersion:I

.field private sp:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cn_sharesdk_weibodb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    .line 26
    iput-object p1, p0, Lcn/sharesdk/framework/PlatformDb;->platformNname:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcn/sharesdk/framework/PlatformDb;->platformVersion:I

    return-void
.end method


# virtual methods
.method public exportData()Ljava/lang/String;
    .locals 2

    .line 128
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    iget-object v1, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getAll()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 130
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 132
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExpiresIn()J
    .locals 2

    const-string v0, "expiresIn"

    .line 62
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    :try_start_1
    iget-object v1, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v0, v0

    goto :goto_0

    :catchall_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getExpiresTime()J
    .locals 6

    .line 81
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "expiresTime"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 82
    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->getExpiresIn()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPlatformNname()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->platformNname:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()I
    .locals 1

    .line 88
    iget v0, p0, Lcn/sharesdk/framework/PlatformDb;->platformVersion:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "secret"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 2

    .line 169
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "m"

    return-object v0

    :cond_0
    const-string v1, "1"

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "f"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserIcon()Ljava/lang/String;
    .locals 2

    .line 117
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "userID"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "weibo"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .line 112
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public importData(Ljava/lang/String;)V
    .locals 1

    .line 140
    :try_start_0
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putAll(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 145
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public isValid()Z
    .locals 7

    .line 155
    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->getExpiresIn()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return v0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/framework/PlatformDb;->getExpiresTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putExpiresIn(J)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "expiresIn"

    invoke-virtual {v0, p2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    iget-object p1, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "expiresTime"

    invoke-virtual {p1, v0, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public putToken(Ljava/lang/String;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putTokenSecret(Ljava/lang/String;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "secret"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putUserId(Ljava/lang/String;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "userID"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeAccount()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcn/sharesdk/framework/PlatformDb;->sp:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->clear()V

    return-void
.end method
