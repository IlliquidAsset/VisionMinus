.class public final Lcom/mob/commons/a;
.super Ljava/lang/Object;
.source "CltsInitializer.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static g:Ljava/lang/Boolean;

.field private static h:Ljava/lang/Boolean;

.field private static i:I

.field private static j:Ljava/lang/Boolean;

.field private static k:Ljava/lang/Boolean;

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:Ljava/lang/Boolean;

.field private static p:Ljava/lang/Boolean;

.field private static q:Ljava/lang/Boolean;

.field private static r:Ljava/lang/Boolean;

.field private static s:[B

.field private static t:[B

.field private static volatile u:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    invoke-static {}, Lcom/mob/commons/j;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->a:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/mob/commons/j;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->b:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/privacy/policy/ms/version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->c:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/privacy/policy/rejection/strategy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->d:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/privacy/policy/authorization/status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->e:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/privacy/policy/permission/window/status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->f:Ljava/lang/String;

    const/4 v0, -0x1

    .line 65
    sput v0, Lcom/mob/commons/a;->l:I

    .line 66
    sput v0, Lcom/mob/commons/a;->m:I

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 72
    sput-object v2, Lcom/mob/commons/a;->s:[B

    new-array v1, v1, [B

    .line 73
    sput-object v1, Lcom/mob/commons/a;->t:[B

    .line 74
    sput v0, Lcom/mob/commons/a;->u:I

    return-void
.end method

.method static synthetic a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 44
    sput-object p0, Lcom/mob/commons/a;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a(JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0, p1, p2}, Lcom/mob/commons/a;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a()V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mob/commons/a$1;

    invoke-direct {v1}, Lcom/mob/commons/a$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mob/commons/a$2;

    invoke-direct {v1}, Lcom/mob/commons/a$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(I)V
    .locals 4

    .line 182
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify initLock. initialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 183
    sget-object v0, Lcom/mob/commons/a;->t:[B

    monitor-enter v0

    .line 185
    :try_start_0
    sput p0, Lcom/mob/commons/a;->u:I

    .line 186
    sget-object p0, Lcom/mob/commons/a;->t:[B

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 188
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v3, "Init lock error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 190
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method static synthetic a(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lcom/mob/commons/a;->b(IZ)V

    return-void
.end method

.method public static a(ZLcom/mob/OperationCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/mob/OperationCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 348
    invoke-static {p0, p1}, Lcom/mob/commons/a;->c(ZLcom/mob/OperationCallback;)V

    .line 349
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "submitPpResult()."

    invoke-virtual {p1, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 350
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grtd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez p0, :cond_0

    .line 354
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/mob/commons/a;->k:Ljava/lang/Boolean;

    .line 355
    invoke-static {v0}, Lcom/mob/commons/i;->c(I)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-static {}, Lcom/mob/commons/a;->d()Z

    move-result p0

    .line 359
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bfdIsAgrPp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 363
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/mob/commons/a;->k:Ljava/lang/Boolean;

    .line 364
    invoke-static {p0}, Lcom/mob/commons/i;->c(I)V

    .line 366
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "====> Entr 5"

    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 367
    invoke-static {}, Lcom/mob/commons/a;->d()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/mob/commons/a;->g:Ljava/lang/Boolean;

    const/4 p0, 0x0

    .line 368
    sput-object p0, Lcom/mob/commons/a;->h:Ljava/lang/Boolean;

    .line 369
    invoke-static {}, Lcom/mob/commons/a;->x()I

    move-result p0

    sput p0, Lcom/mob/commons/a;->i:I

    .line 370
    new-instance p0, Lcom/mob/commons/a$4;

    invoke-direct {p0}, Lcom/mob/commons/a$4;-><init>()V

    invoke-static {p0}, Lcom/mob/commons/b;->a(Lcom/mob/commons/b$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(I)I
    .locals 0

    .line 44
    sput p0, Lcom/mob/commons/a;->i:I

    return p0
.end method

.method static synthetic b(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 44
    sput-object p0, Lcom/mob/commons/a;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static b(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ":"

    .line 686
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 687
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    .line 688
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 691
    invoke-static {p2, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mob/tools/utils/Data;->AES128Decode([B[B)[B

    move-result-object p0

    .line 692
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    .line 695
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x2

    .line 625
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 626
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 627
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "apppkg"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "appver"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "plat"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "networktype"

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-static {}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorizeForOnce()Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 634
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "duid"

    invoke-direct {v3, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_0
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "isAgreePp"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v1}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v3, 0x2710

    .line 639
    iput v3, v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 v3, 0x1388

    .line 640
    iput v3, v1, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 642
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 643
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "User-Identity"

    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getUserIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/mob/commons/a;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\nHeaders: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\nValues: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 648
    new-instance v4, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v4}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 649
    sget-object v5, Lcom/mob/commons/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3, v1}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 651
    new-instance v2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 652
    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_2

    if-ge p0, v0, :cond_1

    .line 656
    invoke-static {p0, p1}, Lcom/mob/commons/a;->b(IZ)V

    goto :goto_0

    .line 659
    :cond_1
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response is illegal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    const-string v3, "code"

    .line 662
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "200"

    .line 663
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-ge p0, v0, :cond_3

    .line 666
    invoke-static {p0, p1}, Lcom/mob/commons/a;->b(IZ)V

    goto :goto_1

    .line 669
    :cond_3
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response code is not 200: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 673
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    if-ge p0, v0, :cond_5

    .line 676
    invoke-static {p0, p1}, Lcom/mob/commons/a;->b(IZ)V

    :cond_4
    :goto_1
    return-void

    .line 679
    :cond_5
    throw v1
.end method

.method static synthetic b(ZLcom/mob/OperationCallback;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/mob/commons/a;->c(ZLcom/mob/OperationCallback;)V

    return-void
.end method

.method public static b()Z
    .locals 7

    .line 160
    sget v0, Lcom/mob/commons/a;->u:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 161
    sget v0, Lcom/mob/commons/a;->u:I

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 163
    :cond_1
    sget-object v0, Lcom/mob/commons/a;->t:[B

    monitor-enter v0

    .line 164
    :try_start_0
    sget v4, Lcom/mob/commons/a;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v4, v1, :cond_2

    .line 166
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v4, "Wait initLock"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 167
    sget-object v1, Lcom/mob/commons/a;->t:[B

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 169
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    const-string v5, "Init lock error"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 172
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    sget v0, Lcom/mob/commons/a;->u:I

    if-ne v0, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :catchall_1
    move-exception v1

    .line 172
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static synthetic c(I)I
    .locals 0

    .line 44
    sput p0, Lcom/mob/commons/a;->n:I

    return p0
.end method

.method static synthetic c(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 44
    sput-object p0, Lcom/mob/commons/a;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static c(ZLcom/mob/OperationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/mob/OperationCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mob/commons/a$6;

    invoke-direct {v1, p0, p1}, Lcom/mob/commons/a$6;-><init>(ZLcom/mob/OperationCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 619
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 194
    sget-object v0, Lcom/mob/commons/a;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 195
    invoke-static {}, Lcom/mob/commons/i;->A()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->j:Ljava/lang/Boolean;

    .line 197
    :cond_0
    sget-object v0, Lcom/mob/commons/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic d(I)V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/mob/commons/a;->e(I)V

    return-void
.end method

.method public static d()Z
    .locals 1

    .line 205
    invoke-static {}, Lcom/mob/commons/a;->k()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 208
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static e()Ljava/lang/Boolean;
    .locals 1

    .line 214
    sget-object v0, Lcom/mob/commons/a;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static e(I)V
    .locals 3

    .line 706
    sget v0, Lcom/mob/commons/a;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 707
    invoke-static {}, Lcom/mob/commons/i;->w()I

    move-result v0

    sput v0, Lcom/mob/commons/a;->l:I

    .line 709
    :cond_0
    sget v0, Lcom/mob/commons/a;->m:I

    if-ne v0, v1, :cond_1

    .line 710
    invoke-static {}, Lcom/mob/commons/i;->y()I

    move-result v0

    sput v0, Lcom/mob/commons/a;->m:I

    .line 714
    :cond_1
    :try_start_0
    sget v0, Lcom/mob/commons/a;->l:I

    const/4 v1, 0x0

    if-eq v0, p0, :cond_2

    .line 716
    new-instance v0, Lcom/mob/commons/h;

    invoke-direct {v0}, Lcom/mob/commons/h;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/mob/commons/h;->b(ILjava/util/Locale;)Lcom/mob/PrivacyPolicy;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lcom/mob/PrivacyPolicy;->getPpVersion()I

    move-result v0

    sput v0, Lcom/mob/commons/a;->l:I

    .line 719
    :cond_2
    sget v0, Lcom/mob/commons/a;->m:I

    if-eq v0, p0, :cond_3

    .line 721
    new-instance p0, Lcom/mob/commons/h;

    invoke-direct {p0}, Lcom/mob/commons/h;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/h;->b(ILjava/util/Locale;)Lcom/mob/PrivacyPolicy;

    move-result-object p0

    .line 722
    invoke-virtual {p0}, Lcom/mob/PrivacyPolicy;->getPpVersion()I

    move-result p0

    sput p0, Lcom/mob/commons/a;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 725
    :catchall_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Update privacy policy err."

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static f()Ljava/lang/Boolean;
    .locals 1

    .line 218
    sget-object v0, Lcom/mob/commons/a;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static g()I
    .locals 1

    .line 222
    sget v0, Lcom/mob/commons/a;->i:I

    return v0
.end method

.method public static h()I
    .locals 1

    .line 226
    sget v0, Lcom/mob/commons/a;->n:I

    return v0
.end method

.method public static declared-synchronized i()Z
    .locals 3

    const-class v0, Lcom/mob/commons/a;

    monitor-enter v0

    .line 241
    :try_start_0
    sget-object v1, Lcom/mob/commons/a;->o:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 242
    invoke-static {}, Lcom/mob/commons/i;->C()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 244
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/mob/commons/a;->o:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 246
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/mob/commons/a;->o:Ljava/lang/Boolean;

    goto :goto_0

    .line 249
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/mob/commons/a;->o:Ljava/lang/Boolean;

    .line 252
    :cond_2
    :goto_0
    sget-object v1, Lcom/mob/commons/a;->o:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static j()Z
    .locals 3

    .line 267
    sget-object v0, Lcom/mob/commons/a;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 268
    sget-object v0, Lcom/mob/commons/a;->s:[B

    monitor-enter v0

    .line 269
    :try_start_0
    sget-object v1, Lcom/mob/commons/a;->p:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 270
    invoke-static {}, Lcom/mob/commons/i;->D()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 273
    invoke-static {}, Lcom/mob/commons/a;->w()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 277
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/mob/commons/a;->p:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 279
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/mob/commons/a;->p:Ljava/lang/Boolean;

    goto :goto_0

    .line 281
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/mob/commons/a;->p:Ljava/lang/Boolean;

    .line 283
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mob/commons/a$3;

    invoke-direct {v2}, Lcom/mob/commons/a$3;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 288
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 291
    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 293
    :cond_4
    :goto_2
    sget-object v0, Lcom/mob/commons/a;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static k()Ljava/lang/Boolean;
    .locals 2

    .line 387
    sget-object v0, Lcom/mob/commons/a;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 388
    invoke-static {}, Lcom/mob/commons/i;->B()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 390
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->k:Ljava/lang/Boolean;

    .line 393
    :cond_1
    sget-object v0, Lcom/mob/commons/a;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic l()V
    .locals 0

    .line 44
    invoke-static {}, Lcom/mob/commons/a;->v()V

    return-void
.end method

.method static synthetic m()I
    .locals 1

    .line 44
    invoke-static {}, Lcom/mob/commons/a;->x()I

    move-result v0

    return v0
.end method

.method static synthetic n()V
    .locals 0

    .line 44
    invoke-static {}, Lcom/mob/commons/a;->u()V

    return-void
.end method

.method static synthetic o()V
    .locals 0

    .line 44
    invoke-static {}, Lcom/mob/commons/a;->t()V

    return-void
.end method

.method static synthetic p()V
    .locals 0

    .line 44
    invoke-static {}, Lcom/mob/commons/a;->w()V

    return-void
.end method

.method static synthetic q()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/mob/commons/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r()Ljava/lang/Boolean;
    .locals 1

    .line 44
    sget-object v0, Lcom/mob/commons/a;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic s()I
    .locals 1

    .line 44
    sget v0, Lcom/mob/commons/a;->n:I

    return v0
.end method

.method private static t()V
    .locals 2

    .line 397
    invoke-static {}, Lcom/mob/commons/b;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MobSDK/Policy"

    const-string v1, "\u60a8\u597d\uff01\u4f9d\u7167\u56fd\u5bb6\u5bf9\u7f51\u7edc\u5b89\u5168\u53ca\u6570\u636e\u5b89\u5168\u7684\u8981\u6c42\uff0c\u8bf7\u60a8\u8fd0\u8425\u7684APP\u96c6\u6210\u5e76\u5411\u7ec8\u7aef\u7528\u6237\u5c55\u793aMob SDK\u7684\u9690\u79c1\u653f\u7b56\u3002"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static u()V
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 406
    const-class v2, Lcom/mob/commons/a/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/mob/commons/a/k;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/mob/commons/a/p;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/mob/commons/a/r;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/mob/commons/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/mob/commons/a/t;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/mob/commons/a/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/mob/commons/a/s;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/mob/commons/a/q;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/mob/commons/a/n;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/mob/commons/a/j;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/mob/commons/a/i;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/mob/commons/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/mob/commons/a/c;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/mob/commons/a/f;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/mob/commons/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/mob/commons/a/l;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/mob/commons/a/o;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/mob/commons/a/d;->a([Ljava/lang/Class;)V

    return-void
.end method

.method private static v()V
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mob/commons/a$5;

    invoke-direct {v1}, Lcom/mob/commons/a$5;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 489
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static w()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 497
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    .line 498
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 499
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "apppkg"

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "appver"

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "plat"

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "networktype"

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-static {}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorizeForOnce()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 506
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v5, "duid"

    invoke-direct {v4, v5, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_0
    new-instance v2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v2}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v4, 0x2710

    .line 510
    iput v4, v2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 v4, 0x1388

    .line 511
    iput v4, v2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 513
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 514
    new-instance v5, Lcom/mob/tools/network/KVPair;

    const-string v6, "User-Identity"

    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getUserIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/mob/commons/a;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nHeaders: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\nValues: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 519
    new-instance v5, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 520
    sget-object v6, Lcom/mob/commons/a;->d:Ljava/lang/String;

    invoke-virtual {v5, v6, v3, v4, v2}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 522
    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 523
    invoke-virtual {v3, v2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Response is illegal: "

    if-eqz v4, :cond_b

    :try_start_1
    const-string v6, "code"

    .line 528
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "200"

    .line 529
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "data"

    .line 533
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 537
    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_8

    const-string v2, "content"

    .line 541
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "timestamp"

    .line 542
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 543
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 544
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lcom/mob/commons/a;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentDe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (pprdms->clt, pprfms->func, pprsbs->cover, pprspw->dialog)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 546
    invoke-virtual {v3, v2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 547
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "pprdms"

    .line 549
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 551
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/mob/commons/a;->p:Ljava/lang/Boolean;

    .line 552
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/mob/commons/i;->e(I)V

    :cond_2
    const-string v3, "pprfms"

    .line 554
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 556
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/mob/commons/a;->o:Ljava/lang/Boolean;

    .line 557
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/mob/commons/i;->d(I)V

    :cond_4
    const-string v3, "pprsbs"

    .line 559
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 561
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/mob/commons/a;->q:Ljava/lang/Boolean;

    .line 562
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/mob/commons/i;->f(I)V

    :cond_6
    const-string v3, "pprspw"

    .line 564
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_c

    .line 566
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/mob/commons/a;->r:Ljava/lang/Boolean;

    .line 567
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/mob/commons/i;->g(I)V

    goto :goto_4

    .line 539
    :cond_8
    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v3

    .line 535
    :cond_9
    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v3

    .line 530
    :cond_a
    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response code is not 200: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v3

    .line 525
    :cond_b
    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 572
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "Request total switch error"

    invoke-virtual {v3, v2, v5, v4}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 574
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->p:Ljava/lang/Boolean;

    .line 575
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->o:Ljava/lang/Boolean;

    .line 576
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->q:Ljava/lang/Boolean;

    .line 577
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a;->r:Ljava/lang/Boolean;

    :cond_c
    :goto_4
    return-void
.end method

.method private static x()I
    .locals 2

    .line 737
    sget v0, Lcom/mob/commons/a;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 738
    invoke-static {}, Lcom/mob/commons/i;->w()I

    move-result v0

    sput v0, Lcom/mob/commons/a;->l:I

    .line 740
    :cond_0
    sget v0, Lcom/mob/commons/a;->m:I

    if-ne v0, v1, :cond_1

    .line 741
    invoke-static {}, Lcom/mob/commons/i;->y()I

    move-result v0

    sput v0, Lcom/mob/commons/a;->m:I

    .line 743
    :cond_1
    sget v0, Lcom/mob/commons/a;->l:I

    sget v1, Lcom/mob/commons/a;->m:I

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method
