.class Lcom/umeng/cconfig/UMRemoteConfig$1;
.super Ljava/lang/Object;
.source "UMRemoteConfig.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/cconfig/UMRemoteConfig;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/cconfig/UMRemoteConfig;


# direct methods
.method constructor <init>(Lcom/umeng/cconfig/UMRemoteConfig;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig$1;->a:Lcom/umeng/cconfig/UMRemoteConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "cconfig_sp_last_request_time"

    const-string v1, "jessie"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "ucc"

    .line 450
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v4, v2, [Ljava/lang/Object;

    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[imprint] key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "@"

    .line 452
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    .line 454
    aget-object p2, p1, p2

    .line 462
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "1"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 463
    aget-object p1, p1, v3

    .line 464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 466
    invoke-static {}, Lcom/umeng/cconfig/UMRemoteConfig;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/analytics/pro/ab;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v4, ""

    .line 468
    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "[imprint] newTimeStamp.equals(oldTimeStamp)"

    aput-object p2, p1, v3

    .line 491
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 470
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 471
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 472
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 473
    invoke-static {}, Lcom/umeng/cconfig/UMRemoteConfig;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/analytics/pro/ag;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :try_start_1
    new-array p2, v2, [Ljava/lang/Object;

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[imprint] send request. body: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {v1, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    new-instance p2, Lcom/umeng/analytics/pro/ai;

    const-string v0, "https://ucc.umeng.com/v1/fetch"

    invoke-direct {p2, v0, p1}, Lcom/umeng/analytics/pro/ai;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p2}, Lcom/umeng/analytics/pro/aj;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "[imprint] fail"

    aput-object p2, p1, v3

    .line 499
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_1
    :cond_2
    :goto_1
    return-void
.end method
