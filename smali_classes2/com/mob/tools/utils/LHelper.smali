.class public Lcom/mob/tools/utils/LHelper;
.super Ljava/lang/Object;
.source "LHelper.java"


# static fields
.field private static final CACHE_LIFE_CYCLE:I = 0x1388

.field private static final CANCEL_GPS_LOCATING:I = 0x1

.field private static final CANCEL_NETWORK_LOCATING:I = 0x2

.field private static final START_LOCATING:I

.field private static instance:Lcom/mob/tools/utils/LHelper;


# instance fields
.field private cache:Landroid/location/Location;

.field private gpsTimeoutSec:I

.field private handler:Landroid/os/Handler;

.field private listener:Landroid/location/LocationListener;

.field private lm:Landroid/location/LocationManager;

.field private networkTimeoutSec:I

.field private requestAt:J

.field private requestedLoc:Landroid/location/Location;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/mob/tools/utils/LHelper$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/LHelper$1;-><init>(Lcom/mob/tools/utils/LHelper;)V

    const-string v1, "T-lct"

    invoke-static {v1, v0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/LHelper;->handler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/mob/tools/utils/LHelper$2;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/LHelper$2;-><init>(Lcom/mob/tools/utils/LHelper;)V

    iput-object v0, p0, Lcom/mob/tools/utils/LHelper;->listener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/utils/LHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->onRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/utils/LHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->onGPSTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/utils/LHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->onNetworkTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/mob/tools/utils/LHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->finished()V

    return-void
.end method

.method static synthetic access$400(Lcom/mob/tools/utils/LHelper;)Landroid/location/LocationManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/mob/tools/utils/LHelper;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/mob/tools/utils/LHelper;->requestedLoc:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$602(Lcom/mob/tools/utils/LHelper;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/mob/tools/utils/LHelper;->cache:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$702(Lcom/mob/tools/utils/LHelper;J)J
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/mob/tools/utils/LHelper;->requestAt:J

    return-wide p1
.end method

.method private finished()V
    .locals 2

    .line 289
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 290
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 291
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 293
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/mob/tools/utils/LHelper;
    .locals 2

    .line 87
    sget-object v0, Lcom/mob/tools/utils/LHelper;->instance:Lcom/mob/tools/utils/LHelper;

    if-nez v0, :cond_1

    .line 88
    const-class v0, Lcom/mob/tools/utils/LHelper;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/LHelper;->instance:Lcom/mob/tools/utils/LHelper;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/mob/tools/utils/LHelper;

    invoke-direct {v1}, Lcom/mob/tools/utils/LHelper;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/LHelper;->instance:Lcom/mob/tools/utils/LHelper;

    .line 92
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 94
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/tools/utils/LHelper;->instance:Lcom/mob/tools/utils/LHelper;

    return-object v0
.end method

.method private onGPSTimeout()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 267
    iget-object v1, p0, Lcom/mob/tools/utils/LHelper;->listener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 269
    iget v0, p0, Lcom/mob/tools/utils/LHelper;->networkTimeoutSec:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->onRequestNetwork()V

    goto :goto_1

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->finished()V

    :cond_2
    :goto_1
    return-void
.end method

.method private onNetworkTimeout()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/mob/tools/utils/LHelper;->listener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->finished()V

    return-void
.end method

.method private onRequest()V
    .locals 4

    .line 208
    iget v0, p0, Lcom/mob/tools/utils/LHelper;->gpsTimeoutSec:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    iget v3, p0, Lcom/mob/tools/utils/LHelper;->networkTimeoutSec:I

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 210
    :goto_1
    iget-object v2, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_2

    const-string v0, "gps"

    .line 212
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->onRequestGps()V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->onRequestNetwork()V

    goto :goto_2

    .line 218
    :cond_3
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->finished()V

    goto :goto_2

    .line 221
    :cond_4
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->finished()V

    :goto_2
    return-void
.end method

.method private onRequestGps()V
    .locals 10

    const/4 v0, 0x1

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    const/16 v2, 0x7c

    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x7a

    invoke-static {v5}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v4, v8

    iget-object v7, p0, Lcom/mob/tools/utils/LHelper;->listener:Landroid/location/LocationListener;

    const/4 v9, 0x3

    aput-object v7, v4, v9

    new-array v3, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v8

    const-class v6, Landroid/location/LocationListener;

    aput-object v6, v3, v9

    invoke-static {v1, v2, v4, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 229
    iget v1, p0, Lcom/mob/tools/utils/LHelper;->gpsTimeoutSec:I

    if-lez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/mob/tools/utils/LHelper;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/mob/tools/utils/LHelper;->gpsTimeoutSec:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 233
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 234
    iget-object v1, p0, Lcom/mob/tools/utils/LHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void
.end method

.method private onRequestLastKnown()Landroid/location/Location;
    .locals 9

    const/4 v0, 0x0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    const/16 v2, 0x79

    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x7a

    invoke-static {v6}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v3, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 256
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/16 v4, 0x7b

    invoke-static {v4}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 259
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-object v1
.end method

.method private onRequestNetwork()V
    .locals 10

    const/4 v0, 0x2

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    const/16 v2, 0x7c

    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x7b

    invoke-static {v5}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    iget-object v7, p0, Lcom/mob/tools/utils/LHelper;->listener:Landroid/location/LocationListener;

    const/4 v9, 0x3

    aput-object v7, v4, v9

    new-array v3, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v8

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v0

    const-class v6, Landroid/location/LocationListener;

    aput-object v6, v3, v9

    invoke-static {v1, v2, v4, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 242
    iget v1, p0, Lcom/mob/tools/utils/LHelper;->networkTimeoutSec:I

    if-lez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/mob/tools/utils/LHelper;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/mob/tools/utils/LHelper;->networkTimeoutSec:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 246
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 247
    iget-object v1, p0, Lcom/mob/tools/utils/LHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void
.end method

.method private quickResponse(Z)Landroid/location/Location;
    .locals 4

    if-nez p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/mob/tools/utils/LHelper;->cache:Landroid/location/Location;

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mob/tools/utils/LHelper;->requestAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 202
    new-instance p1, Landroid/location/Location;

    iget-object v0, p0, Lcom/mob/tools/utils/LHelper;->cache:Landroid/location/Location;

    invoke-direct {p1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private requestLocation(Landroid/content/Context;IIZ)Landroid/location/Location;
    .locals 3

    const/4 v0, 0x0

    .line 156
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 157
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iput p2, p0, Lcom/mob/tools/utils/LHelper;->gpsTimeoutSec:I

    .line 160
    iput p3, p0, Lcom/mob/tools/utils/LHelper;->networkTimeoutSec:I

    .line 161
    iget-object p2, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    if-nez p2, :cond_0

    const-string p2, "location"

    .line 162
    invoke-virtual {p1, p2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/utils/LHelper;->lm:Landroid/location/LocationManager;

    if-nez p1, :cond_1

    return-object v0

    .line 168
    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 169
    :try_start_1
    iget-object p1, p0, Lcom/mob/tools/utils/LHelper;->handler:Landroid/os/Handler;

    const/4 p2, 0x0

    const-wide/16 v1, 0x32

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 171
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    :try_start_2
    iget-object p1, p0, Lcom/mob/tools/utils/LHelper;->requestedLoc:Landroid/location/Location;

    if-nez p1, :cond_2

    if-eqz p4, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/mob/tools/utils/LHelper;->onRequestLastKnown()Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/LHelper;->requestedLoc:Landroid/location/Location;

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/mob/tools/utils/LHelper;->requestedLoc:Landroid/location/Location;

    if-eqz p1, :cond_3

    .line 178
    new-instance p1, Landroid/location/Location;

    iget-object p2, p0, Lcom/mob/tools/utils/LHelper;->requestedLoc:Landroid/location/Location;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object p1, p0, Lcom/mob/tools/utils/LHelper;->cache:Landroid/location/Location;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mob/tools/utils/LHelper;->requestAt:J

    .line 181
    new-instance p1, Landroid/location/Location;

    iget-object p2, p0, Lcom/mob/tools/utils/LHelper;->requestedLoc:Landroid/location/Location;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 183
    :try_start_3
    iput-object v0, p0, Lcom/mob/tools/utils/LHelper;->requestedLoc:Landroid/location/Location;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 171
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 187
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/LHelper;->getLocation(Landroid/content/Context;I)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public getLocation(Landroid/content/Context;I)Landroid/location/Location;
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/LHelper;->getLocation(Landroid/content/Context;II)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public getLocation(Landroid/content/Context;II)Landroid/location/Location;
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mob/tools/utils/LHelper;->getLocation(Landroid/content/Context;IIZ)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public getLocation(Landroid/content/Context;IIZ)Landroid/location/Location;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/utils/LHelper;->getLocation(Landroid/content/Context;IIZZ)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public getLocation(Landroid/content/Context;IIZZ)Landroid/location/Location;
    .locals 2

    .line 130
    invoke-direct {p0, p5}, Lcom/mob/tools/utils/LHelper;->quickResponse(Z)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    const-class v1, Lcom/mob/tools/utils/LHelper;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-direct {p0, p5}, Lcom/mob/tools/utils/LHelper;->quickResponse(Z)Landroid/location/Location;

    move-result-object p5

    if-nez p5, :cond_0

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mob/tools/utils/LHelper;->requestLocation(Landroid/content/Context;IIZ)Landroid/location/Location;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p5

    .line 138
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-object v0
.end method
