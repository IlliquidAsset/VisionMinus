.class public Lcom/mob/mobapm/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/String;I)V
    .locals 5

    .line 51
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: request end, transaction switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->isCreate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 52
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->isCreate()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getTransStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 57
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mob/mobapm/core/Transaction;->setTransStatus(I)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mob/mobapm/core/Transaction;->setResponseTime(J)V

    .line 59
    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getResponseTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getRequestTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/mob/mobapm/core/Transaction;->setRequestDuration(J)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/mob/mobapm/core/Transaction;->setStatus(I)V

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 62
    invoke-virtual {p0, p1}, Lcom/mob/mobapm/core/Transaction;->setMethod(Ljava/lang/String;)V

    .line 66
    :cond_1
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "APM: start inserting this transcation:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 67
    invoke-static {}, Lcom/mob/mobapm/core/j;->d()Lcom/mob/mobapm/core/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/mobapm/core/j;->a(Lcom/mob/mobapm/core/Transaction;)V

    .line 68
    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 69
    :cond_2
    invoke-static {}, Lcom/mob/mobapm/core/i;->d()Lcom/mob/mobapm/core/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/mobapm/core/i;->a(Lcom/mob/mobapm/core/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 72
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "APM: an error occurred while inserting this data:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/mob/mobapm/bean/TransactionType;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: request prepare, switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mob/mobapm/core/c;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 2
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p3, :cond_1

    .line 7
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0, p2}, Lcom/mob/mobapm/core/Transaction;->setPath(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p3}, Lcom/mob/mobapm/core/Transaction;->setTransType(Lcom/mob/mobapm/bean/TransactionType;)V

    .line 10
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mob/mobapm/core/Transaction;->setImei(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/mob/mobapm/core/Transaction;->setRequestTime(J)V

    .line 12
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mob/mobapm/core/Transaction;->setMac(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/mob/mobapm/core/Transaction;->setRequestTime(J)V

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mob/mobapm/core/Transaction;->setHost(Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lcom/mob/mobapm/e/f;->a(Lcom/mob/mobapm/core/Transaction;)V

    .line 18
    invoke-static {}, Lcom/mob/mobapm/core/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/core/Transaction;->setDuid(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/mob/mobapm/core/Transaction;->setClientTime(J)V

    .line 20
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/core/Transaction;->setNetworkType(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getDataNtType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/core/Transaction;->setDataNetworkType(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Lcom/mob/mobapm/core/Transaction;->setTransStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 24
    :goto_1
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "APM: request prepare error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public static a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/Throwable;)V
    .locals 3

    .line 95
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: request error! transaction switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->isCreate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 96
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->isCreate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/mobapm/core/Transaction;->setErrMsg(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 103
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_1

    const/16 v0, 0x385

    goto :goto_0

    .line 105
    :cond_1
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_2

    const/16 v0, 0x387

    goto :goto_0

    .line 107
    :cond_2
    instance-of v1, p1, Ljava/net/ConnectException;

    if-eqz v1, :cond_3

    const/16 v0, 0x386

    goto :goto_0

    .line 109
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_4

    const/16 v0, 0x38c

    :cond_4
    :goto_0
    const-string p1, ""

    .line 112
    invoke-static {p0, p1, v0}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/String;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static a(Lcom/mob/mobapm/core/Transaction;Ljava/net/HttpURLConnection;)V
    .locals 6

    .line 25
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: request end, transaction switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->isCreate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 26
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->isCreate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 31
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 33
    instance-of v3, v1, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    const/16 v0, 0x385

    goto :goto_0

    .line 35
    :cond_1
    instance-of v3, v1, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_2

    const/16 v0, 0x387

    goto :goto_0

    .line 37
    :cond_2
    instance-of v3, v1, Ljava/net/ConnectException;

    if-eqz v3, :cond_3

    const/16 v0, 0x386

    goto :goto_0

    .line 39
    :cond_3
    instance-of v3, v1, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_4

    const/16 v0, 0x38c

    .line 42
    :cond_4
    :goto_0
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APM: get response code exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    const/16 v1, 0x12c

    if-lt v0, v1, :cond_5

    .line 46
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/mobapm/e/d;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/mobapm/core/Transaction;->setErrMsg(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    :catchall_1
    :cond_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/String;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static a(Lcom/mob/mobapm/core/Transaction;Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 6

    .line 73
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: request error! transaction switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->isCreate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 74
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->isCreate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 80
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 82
    instance-of v3, v1, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    const/16 v0, 0x385

    goto :goto_0

    .line 84
    :cond_1
    instance-of v3, v1, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_2

    const/16 v0, 0x387

    goto :goto_0

    .line 86
    :cond_2
    instance-of v3, v1, Ljava/net/ConnectException;

    if-eqz v3, :cond_3

    const/16 v0, 0x386

    goto :goto_0

    .line 88
    :cond_3
    instance-of v3, v1, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_4

    const/16 v0, 0x38c

    .line 91
    :cond_4
    :goto_0
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APM: get response code exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 93
    :goto_1
    invoke-virtual {p0, p2}, Lcom/mob/mobapm/core/Transaction;->setErrMsg(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/mob/mobapm/c/a;->a(Lcom/mob/mobapm/core/Transaction;Ljava/lang/String;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static b(Lcom/mob/mobapm/core/Transaction;Ljava/net/HttpURLConnection;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: request prepare, switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mob/mobapm/core/c;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 2
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mob/mobapm/bean/TransactionType;->http:Lcom/mob/mobapm/bean/TransactionType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mob/mobapm/bean/TransactionType;->https:Lcom/mob/mobapm/bean/TransactionType;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mob/mobapm/core/Transaction;->setTransType(Lcom/mob/mobapm/bean/TransactionType;)V

    .line 7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/mobapm/core/Transaction;->setHost(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/mobapm/core/Transaction;->setPath(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    sget v1, Lcom/mob/mobapm/core/c;->j:I

    if-gt v0, v1, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Lcom/mob/mobapm/core/Transaction;->setQuery(Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/core/Transaction;->setImei(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/mob/mobapm/core/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/core/Transaction;->setDuid(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mob/mobapm/core/Transaction;->setClientTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 17
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APM: request prepare error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Lcom/mob/mobapm/core/Transaction;Ljava/net/HttpURLConnection;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "APM: request start"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 2
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/mob/mobapm/core/Transaction;->getTransStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 7
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/mobapm/core/Transaction;->setMac(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/mobapm/core/Transaction;->setNetworkType(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDataNtType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/mobapm/core/Transaction;->setDataNetworkType(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/mob/mobapm/core/Transaction;->setRequestTime(J)V

    .line 11
    invoke-virtual {p0, v2}, Lcom/mob/mobapm/core/Transaction;->setTransStatus(I)V

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/core/Transaction;->setMethod(Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-static {p0}, Lcom/mob/mobapm/e/f;->a(Lcom/mob/mobapm/core/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 17
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: request start error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method
