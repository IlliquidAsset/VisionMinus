.class public Lcom/mob/mobapm/proxy/e/b;
.super Lcom/mob/mobapm/c/a;
.source "SourceFile"


# direct methods
.method public static a(Lcom/mob/mobapm/bean/SocketTransaction;)V
    .locals 7

    .line 17
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: socket connect end\uff0ctransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 18
    sget-boolean v0, Lcom/mob/mobapm/core/c;->h:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mob/mobapm/bean/SocketTransaction;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xc8

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/mobapm/bean/SocketTransaction;->getTransStatus()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 25
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/mob/mobapm/bean/SocketTransaction;->setTransStatus(I)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/mob/mobapm/bean/SocketTransaction;->setConnectEndTime(J)V

    .line 27
    invoke-virtual {p0}, Lcom/mob/mobapm/bean/SocketTransaction;->getConnectEndTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/mob/mobapm/bean/SocketTransaction;->getConnectBeginTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/mob/mobapm/bean/SocketTransaction;->setConnectDuration(J)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/mob/mobapm/bean/SocketTransaction;->setStatus(I)V

    .line 31
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APM: start inserting this socket transcation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 32
    invoke-static {}, Lcom/mob/mobapm/core/h;->d()Lcom/mob/mobapm/core/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mobapm/core/h;->a(Lcom/mob/mobapm/bean/SocketTransaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 34
    :try_start_2
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APM: an error occurred while inserting this socket data:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 38
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APM: socket request end error\uff1a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/mob/mobapm/bean/SocketTransaction;Ljava/lang/Throwable;)V
    .locals 6

    .line 39
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "APM: socket connect error!"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 40
    sget-boolean v0, Lcom/mob/mobapm/core/c;->h:Z

    if-eqz v0, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0xc8

    .line 46
    :try_start_0
    instance-of v2, p1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    const/16 v0, 0x385

    goto :goto_0

    .line 48
    :cond_1
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2

    const/16 v0, 0x387

    goto :goto_0

    .line 50
    :cond_2
    instance-of v2, p1, Ljava/net/ConnectException;

    if-eqz v2, :cond_3

    const/16 v0, 0x386

    goto :goto_0

    .line 52
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_4

    const/16 v0, 0x38c

    .line 55
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/mob/mobapm/bean/SocketTransaction;->getTransStatus()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    .line 57
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/mob/mobapm/bean/SocketTransaction;->setTransStatus(I)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mob/mobapm/bean/SocketTransaction;->setConnectEndTime(J)V

    .line 59
    invoke-virtual {p0}, Lcom/mob/mobapm/bean/SocketTransaction;->getConnectEndTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/mob/mobapm/bean/SocketTransaction;->getConnectBeginTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/mob/mobapm/bean/SocketTransaction;->setConnectDuration(J)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/mob/mobapm/bean/SocketTransaction;->setStatus(I)V

    .line 63
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: start inserting this socket transcation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 64
    invoke-static {}, Lcom/mob/mobapm/core/h;->d()Lcom/mob/mobapm/core/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/mobapm/core/h;->a(Lcom/mob/mobapm/bean/SocketTransaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 66
    :try_start_2
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: an error occurred while inserting this socket data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 70
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: socket connect end error\uff1a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public static a(Lcom/mob/mobapm/bean/SocketTransaction;Ljava/net/InetSocketAddress;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: socket start, switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mob/mobapm/core/c;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 2
    sget-boolean v0, Lcom/mob/mobapm/core/c;->h:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/mobapm/bean/SocketTransaction;->setHost(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/bean/SocketTransaction;->setPort(I)V

    .line 8
    sget-object p1, Lcom/mob/mobapm/bean/TransactionType;->socket:Lcom/mob/mobapm/bean/TransactionType;

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/bean/SocketTransaction;->setTransType(Lcom/mob/mobapm/bean/TransactionType;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mob/mobapm/bean/SocketTransaction;->setConnectBeginTime(J)V

    .line 10
    invoke-static {}, Lcom/mob/mobapm/core/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/bean/SocketTransaction;->setDuid(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mob/mobapm/bean/SocketTransaction;->setClientTime(J)V

    .line 12
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/bean/SocketTransaction;->setNetworkType(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getDataNtType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/mobapm/bean/SocketTransaction;->setDataNetworkType(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/mob/mobapm/bean/SocketTransaction;->setTransStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 16
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APM: socket connect start error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method
