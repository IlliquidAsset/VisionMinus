.class public Lcom/mob/commons/a/d;
.super Ljava/lang/Object;
.source "BaseClt.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/commons/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/mob/tools/MobHandlerThread;

.field private b:Z

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/a/d;->c:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/a/d;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/mob/commons/a/d;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/d;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mob/commons/a/d;->e:Landroid/os/Handler;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    .line 151
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 154
    sget-object v4, Lcom/mob/commons/a/d;->d:Ljava/util/HashMap;

    monitor-enter v4

    .line 155
    :try_start_0
    sget-object v5, Lcom/mob/commons/a/d;->d:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v5, :cond_0

    .line 157
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    .line 158
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v7

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    const/4 p1, 0x3

    aput-object v0, v5, p1

    .line 157
    invoke-static {v1, v5}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 159
    sget-object p1, Lcom/mob/commons/a/d;->d:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    const/4 p0, 0x0

    .line 163
    invoke-static {p0}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa

    .line 164
    invoke-static {p1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-static {v5, p1, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0xb

    .line 165
    invoke-static {p2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p3, v0, v2

    const-class p3, Ljava/lang/String;

    aput-object p3, v0, v7

    invoke-static {p1, p2, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 167
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "duid"

    .line 168
    invoke-virtual {p2, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "moid"

    .line 169
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/mob/commons/b/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sdkVersion"

    .line 170
    sget p3, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "appKey"

    .line 171
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "appSecret"

    .line 172
    invoke-static {}, Lcom/mob/MobSDK;->getAppSecret()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "domain"

    .line 173
    invoke-static {}, Lcom/mob/MobSDK;->getDomain()Lcom/mob/commons/InternationalDomain;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mob/commons/InternationalDomain;->getDomain()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "forceHttps"

    .line 174
    invoke-static {}, Lcom/mob/MobSDK;->checkForceHttps()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance p0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p0, p2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xc

    .line 177
    invoke-static {p2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p2

    new-array p3, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-static {p1, p2, p3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object p2

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Lcom/mob/commons/d;->a(I)V

    .line 179
    new-instance p2, Lcom/mob/commons/a/d$2;

    invoke-direct {p2, p1, p0}, Lcom/mob/commons/a/d$2;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 161
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final varargs declared-synchronized a([Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mob/commons/a/d;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/a/d;

    monitor-enter v0

    if-eqz p0, :cond_3

    .line 42
    :try_start_0
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 45
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 48
    sget-object v5, Lcom/mob/commons/a/d;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mob/commons/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_1

    .line 51
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/commons/a/d;

    .line 52
    sget-object v5, Lcom/mob/commons/a/d;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-direct {v3}, Lcom/mob/commons/a/d;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 55
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    .line 43
    :cond_3
    :goto_2
    monitor-exit v0

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/d;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/mob/commons/a/d;->b:Z

    return p0
.end method

.method static synthetic g()Ljava/util/HashMap;
    .locals 1

    .line 32
    sget-object v0, Lcom/mob/commons/a/d;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/mob/commons/a/d;->a()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    new-instance v1, Lcom/mob/commons/a/d$1;

    invoke-direct {v1, p0, v0}, Lcom/mob/commons/a/d$1;-><init>(Lcom/mob/commons/a/d;Ljava/io/File;)V

    iput-object v1, p0, Lcom/mob/commons/a/d;->a:Lcom/mob/tools/MobHandlerThread;

    .line 135
    invoke-virtual {v1}, Lcom/mob/tools/MobHandlerThread;->start()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final a(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/mob/commons/a/d;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method final a(IJ)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/mob/commons/a/d;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 273
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 275
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method final b(I)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/mob/commons/a/d;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method final b(Landroid/os/Message;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/mob/commons/a/d;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected b_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method final e()V
    .locals 3

    const/4 v0, 0x0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/a/d;->e:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/mob/commons/a/d;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/mob/commons/a/d;->a:Lcom/mob/tools/MobHandlerThread;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/mob/commons/a/d;->a:Lcom/mob/tools/MobHandlerThread;

    invoke-virtual {v1}, Lcom/mob/tools/MobHandlerThread;->quit()Z

    .line 205
    :cond_1
    iput-object v0, p0, Lcom/mob/commons/a/d;->e:Landroid/os/Handler;

    .line 206
    iput-object v0, p0, Lcom/mob/commons/a/d;->a:Lcom/mob/tools/MobHandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 208
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 210
    :goto_0
    invoke-virtual {p0}, Lcom/mob/commons/a/d;->b()V

    const/4 v1, 0x1

    .line 211
    iput-boolean v1, p0, Lcom/mob/commons/a/d;->b:Z

    .line 212
    sget-object v1, Lcom/mob/commons/a/d;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected f()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 281
    invoke-static {}, Lcom/mob/commons/b;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 285
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "accuracy"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "verticalAccuracy"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "longitude"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ltime"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "provider"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "altitude"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "bearing"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "speed"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 139
    invoke-static {}, Lcom/mob/commons/b;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/mob/commons/a/d;->e()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mob/commons/a/d;->a(Landroid/os/Message;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
