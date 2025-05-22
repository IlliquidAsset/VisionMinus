.class public Lcom/umeng/analytics/pro/ag;
.super Ljava/lang/Object;
.source "ModelBuildHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p2

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->c()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Lcom/umeng/analytics/pro/ae;Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 7

    const-class v0, Lcom/umeng/analytics/pro/ag;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 103
    :try_start_0
    new-instance v4, Lcom/umeng/analytics/pro/ac;

    invoke-direct {v4}, Lcom/umeng/analytics/pro/ac;-><init>()V

    .line 104
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 106
    monitor-exit v0

    return-object v1

    .line 108
    :cond_0
    :try_start_1
    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ac;->d(Ljava/lang/String;)V

    .line 109
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    .line 111
    monitor-exit v0

    return-object v1

    .line 113
    :cond_1
    :try_start_2
    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ac;->c(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ac;->a(Ljava/lang/Long;)V

    .line 115
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ae;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ac;->a(Ljava/lang/Integer;)V

    .line 116
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ae;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ac;->b(Ljava/lang/Integer;)V

    .line 117
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ae;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ac;->a(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ae;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/umeng/analytics/pro/ac;->b(Ljava/lang/String;)V

    .line 120
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :try_start_3
    sget-object v1, Lcom/umeng/analytics/pro/ac;->a:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ac;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    sget-object v1, Lcom/umeng/analytics/pro/ac;->e:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ac;->g()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    sget-object v1, Lcom/umeng/analytics/pro/ac;->c:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ac;->e()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    sget-object v1, Lcom/umeng/analytics/pro/ac;->d:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ac;->f()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    sget-object v1, Lcom/umeng/analytics/pro/ac;->b:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ac;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    sget-object v1, Lcom/umeng/analytics/pro/ac;->f:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ac;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    sget-object v1, Lcom/umeng/analytics/pro/ac;->g:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ac;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    invoke-virtual {v5, v2, p0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 133
    invoke-static {p1}, Lcom/umeng/analytics/pro/ag;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 134
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    .line 135
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v1, v4, :cond_2

    add-int/lit8 v4, v1, -0x1

    .line 136
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {p1}, Lcom/umeng/analytics/pro/ag;->c(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    monitor-exit v0

    return-object v5

    :catch_0
    :try_start_4
    const-string p0, "jessie"

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "[getUpdateAbEventLogParam] error i"

    aput-object v1, p1, v2

    .line 143
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v5

    goto :goto_3

    :catch_1
    move-object v1, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    :goto_1
    :try_start_5
    const-string p0, "jessie"

    new-array p1, v3, [Ljava/lang/Object;

    const-string v3, "[getUpdateAbEventLogParam] error ii"

    aput-object v3, p1, v2

    .line 146
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0

    .line 149
    :cond_3
    :goto_3
    monitor-exit v0

    return-object v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    const-class v0, Lcom/umeng/analytics/pro/ag;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-static {p0}, Lcom/umeng/analytics/pro/ag;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    sget-object v2, Lcom/umeng/analytics/pro/ad;->f:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    sget-object v2, Lcom/umeng/analytics/pro/ad;->h:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    .line 33
    sget-object v2, Lcom/umeng/analytics/pro/ad;->i:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :catch_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 167
    :try_start_0
    invoke-static {p0}, Lcom/umeng/analytics/pro/ab;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 169
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "abtest_sp_last_request_data"

    .line 170
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7

    const-class v0, Lcom/umeng/analytics/pro/ag;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 47
    :try_start_0
    new-instance v4, Lcom/umeng/analytics/pro/ad;

    invoke-direct {v4}, Lcom/umeng/analytics/pro/ad;-><init>()V

    .line 48
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 50
    monitor-exit v0

    return-object v1

    .line 52
    :cond_0
    :try_start_1
    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ad;->a(Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    .line 55
    monitor-exit v0

    return-object v1

    .line 57
    :cond_1
    :try_start_2
    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ad;->b(Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ad;->c(Ljava/lang/String;)V

    const-string v5, "9.3.3"

    .line 59
    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ad;->d(Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ad;->e(Ljava/lang/String;)V

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ad;->f(Ljava/lang/String;)V

    .line 62
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ad;->g(Ljava/lang/String;)V

    .line 63
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ad;->h(Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 65
    aget-object v6, v5, v3

    invoke-virtual {v4, v6}, Lcom/umeng/analytics/pro/ad;->i(Ljava/lang/String;)V

    .line 66
    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ad;->j(Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getResolutionArray(Landroid/content/Context;)[I

    move-result-object v5

    .line 68
    aget v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/umeng/analytics/pro/ad;->b(Ljava/lang/Integer;)V

    .line 69
    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/ad;->a(Ljava/lang/Integer;)V

    const-string v5, "install_datetime"

    const-string v6, ""

    .line 70
    invoke-static {p0, v5, v6}, Lcom/umeng/analytics/pro/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-virtual {v4, p0}, Lcom/umeng/analytics/pro/ad;->k(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :try_start_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    sget-object v1, Lcom/umeng/analytics/pro/ad;->a:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    sget-object v1, Lcom/umeng/analytics/pro/ad;->c:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    sget-object v1, Lcom/umeng/analytics/pro/ad;->b:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    sget-object v1, Lcom/umeng/analytics/pro/ad;->d:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    sget-object v1, Lcom/umeng/analytics/pro/ad;->e:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    sget-object v1, Lcom/umeng/analytics/pro/ad;->f:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    sget-object v1, Lcom/umeng/analytics/pro/ad;->g:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    sget-object v1, Lcom/umeng/analytics/pro/ad;->h:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    sget-object v1, Lcom/umeng/analytics/pro/ad;->k:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->k()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    sget-object v1, Lcom/umeng/analytics/pro/ad;->j:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->j()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    sget-object v1, Lcom/umeng/analytics/pro/ad;->l:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    sget-object v1, Lcom/umeng/analytics/pro/ad;->i:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    sget-object v1, Lcom/umeng/analytics/pro/ad;->m:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/ad;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    monitor-exit v0

    return-object p0

    :catch_0
    move-object v1, p0

    goto :goto_0

    :catch_1
    move-object v1, p0

    :catch_2
    :try_start_5
    const-string p0, "jessie"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "[getCloudConfigParam] error i"

    aput-object v5, v4, v2

    .line 91
    invoke-static {p0, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_3
    :goto_0
    :try_start_6
    const-string p0, "jessie"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[getCloudConfigParam] error ii"

    aput-object v4, v3, v2

    .line 94
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 96
    :goto_1
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 154
    :try_start_0
    invoke-static {p0}, Lcom/umeng/analytics/pro/ab;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 156
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "abtest_sp_last_request_data"

    const-string v1, ""

    .line 157
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    :try_start_0
    invoke-static {p0}, Lcom/umeng/analytics/pro/ab;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "abtest_sp_last_request_data"

    const-string v2, ""

    .line 183
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    .line 186
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 189
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 197
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    return-object v0
.end method
