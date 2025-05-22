.class public Lcom/mob/commons/logcollector/c;
.super Ljava/lang/Object;
.source "LogsManager.java"


# static fields
.field private static b:Lcom/mob/commons/logcollector/c;

.field private static c:Ljava/lang/String;


# instance fields
.field protected final a:Landroid/os/Handler;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/mob/tools/network/NetworkHelper;

.field private f:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "api.exc.mob.com"

    .line 45
    invoke-static {v0}, Lcom/mob/commons/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/logcollector/c;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/logcollector/c;->e:Lcom/mob/tools/network/NetworkHelper;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/logcollector/c;->d:Ljava/util/HashMap;

    .line 59
    new-instance v0, Lcom/mob/commons/logcollector/c$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/logcollector/c$1;-><init>(Lcom/mob/commons/logcollector/c;)V

    const-string v1, "l"

    invoke-static {v1, v0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/logcollector/c;->a:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/mob/commons/logcollector/c;
    .locals 2

    const-class v0, Lcom/mob/commons/logcollector/c;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/mob/commons/logcollector/c;->b:Lcom/mob/commons/logcollector/c;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/mob/commons/logcollector/c;

    invoke-direct {v1}, Lcom/mob/commons/logcollector/c;-><init>()V

    sput-object v1, Lcom/mob/commons/logcollector/c;->b:Lcom/mob/commons/logcollector/c;

    .line 76
    :cond_0
    sget-object v1, Lcom/mob/commons/logcollector/c;->b:Lcom/mob/commons/logcollector/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/mob/commons/logcollector/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/mob/commons/logcollector/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 300
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 303
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    new-array v3, v2, [B

    :goto_0
    const/4 v4, 0x0

    .line 306
    invoke-virtual {v0, v3, v4, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 307
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 313
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :catchall_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 318
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 319
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 320
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 322
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    const/4 p1, 0x2

    .line 324
    invoke-static {v1, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/mob/commons/logcollector/c;)Ljava/util/HashMap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mob/commons/logcollector/c;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/mob/commons/logcollector/c;ILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/logcollector/c;->b(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private a(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 240
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/mob/commons/logcollector/c;->b()V

    .line 247
    iget-object v0, p0, Lcom/mob/commons/logcollector/c;->f:Ljava/io/File;

    new-instance v1, Lcom/mob/commons/logcollector/c$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/mob/commons/logcollector/c$3;-><init>(Lcom/mob/commons/logcollector/c;[Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mob/commons/e;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)Z

    goto :goto_0

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "network is disconnected!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 270
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mob/commons/logcollector/c;Landroid/os/Message;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/mob/commons/logcollector/c;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/logcollector/c;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/logcollector/c;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 329
    invoke-static {}, Lcom/mob/commons/b;->L()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 335
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p2

    .line 336
    invoke-virtual {p2}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object p2

    const-string v1, "none"

    .line 337
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 341
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 342
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string v1, "m"

    invoke-direct {p2, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string p2, "User-Identity"

    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getUserIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v6}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 p1, 0x2710

    .line 348
    iput p1, v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 349
    iput p1, v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 352
    iget-object v1, p0, Lcom/mob/commons/logcollector/c;->e:Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p0}, Lcom/mob/commons/logcollector/c;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    .line 338
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "network is disconnected!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 354
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Throwable;)I

    return v0
.end method

.method private b(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 279
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "plat"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sdk"

    .line 281
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "sdkver"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appname"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "apppkg"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "appver"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "model"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {}, Lcom/mob/commons/b;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "deviceid"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mac"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "udid"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sysver"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object p1

    const-string p2, "networktype"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/mob/commons/logcollector/c;->f:Ljava/io/File;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/commons/logcollector/c;->f:Ljava/io/File;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/logcollector/c;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/logcollector/c;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/mob/commons/logcollector/c;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/logcollector/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/errlog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    .line 141
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 142
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/mob/commons/b;->ai()Z

    move-result v1

    .line 146
    invoke-static {}, Lcom/mob/commons/b;->aj()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    .line 149
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, p1, v1}, Lcom/mob/commons/logcollector/c;->a(ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x2

    .line 151
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, p1, v1}, Lcom/mob/commons/logcollector/c;->a(ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 154
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 173
    :try_start_0
    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 174
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 175
    aget-object v2, v1, v9

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    .line 176
    aget-object v1, v1, v11

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 178
    iget v1, v0, Landroid/os/Message;->arg2:I

    const/4 v2, 0x3

    const/4 v12, 0x2

    if-ne v1, v2, :cond_0

    const/4 v13, 0x2

    goto :goto_0

    .line 180
    :cond_0
    iget v1, v0, Landroid/os/Message;->arg2:I

    const/4 v13, 0x1

    .line 186
    :goto_0
    invoke-static {}, Lcom/mob/commons/b;->ai()Z

    move-result v14

    .line 187
    invoke-static {}, Lcom/mob/commons/b;->aj()Z

    move-result v15

    if-ne v11, v13, :cond_1

    if-nez v14, :cond_1

    return-void

    :cond_1
    if-ne v12, v13, :cond_2

    if-nez v15, :cond_2

    return-void

    .line 195
    :cond_2
    invoke-static {v3}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/mob/commons/logcollector/c;->b()V

    .line 197
    iget-object v5, v7, Lcom/mob/commons/logcollector/c;->f:Ljava/io/File;

    new-instance v4, Lcom/mob/commons/logcollector/c$2;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v12, v4

    move v4, v13

    move-object v9, v5

    move-object v5, v6

    move-object v11, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/mob/commons/logcollector/c$2;-><init>(Lcom/mob/commons/logcollector/c;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    invoke-static {v9, v12}, Lcom/mob/commons/e;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, v7, Lcom/mob/commons/logcollector/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-ne v0, v13, :cond_3

    if-eqz v14, :cond_3

    new-array v1, v0, [Ljava/lang/String;

    .line 223
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {v7, v8, v10, v1}, Lcom/mob/commons/logcollector/c;->a(ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne v0, v13, :cond_4

    if-eqz v15, :cond_4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 225
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {v7, v8, v10, v1}, Lcom/mob/commons/logcollector/c;->a(ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 229
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 102
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    .line 103
    iput v1, v0, Landroid/os/Message;->what:I

    .line 104
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 105
    iput p2, v0, Landroid/os/Message;->arg2:I

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    const/4 p2, 0x1

    aput-object p4, p1, p2

    .line 106
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Lcom/mob/commons/logcollector/c;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 86
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    .line 87
    iput v1, v0, Landroid/os/Message;->what:I

    .line 88
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 89
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Lcom/mob/commons/logcollector/c;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 2

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-direct {p0, p1}, Lcom/mob/commons/logcollector/c;->d(Landroid/os/Message;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-direct {p0, p1}, Lcom/mob/commons/logcollector/c;->c(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public b(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/commons/logcollector/c;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 128
    :try_start_0
    iget-object p1, p0, Lcom/mob/commons/logcollector/c;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
