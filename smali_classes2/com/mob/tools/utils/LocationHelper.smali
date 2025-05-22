.class public Lcom/mob/tools/utils/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# instance fields
.field private deviceHelper:Lcom/mob/tools/utils/DeviceHelper;

.field private gpsRequesting:Z

.field private gpsTimeoutSec:I

.field private handler:Landroid/os/Handler;

.field private listener:Landroid/location/LocationListener;

.field private lm:Landroid/location/LocationManager;

.field private networkRequesting:Z

.field private networkTimeoutSec:I

.field private res:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0}, Lcom/mob/tools/utils/LocationHelper;->newCallback()Landroid/os/Handler$Callback;

    move-result-object v0

    const-string v1, "h"

    invoke-static {v1, v0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    .line 28
    invoke-direct {p0}, Lcom/mob/tools/utils/LocationHelper;->newLocationListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/utils/LocationHelper;)Lcom/mob/tools/utils/DeviceHelper;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/mob/tools/utils/LocationHelper;->deviceHelper:Lcom/mob/tools/utils/DeviceHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mob/tools/utils/LocationHelper;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/mob/tools/utils/LocationHelper;->onRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/utils/LocationHelper;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/mob/tools/utils/LocationHelper;->gpsRequesting:Z

    return p0
.end method

.method static synthetic access$300(Lcom/mob/tools/utils/LocationHelper;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/mob/tools/utils/LocationHelper;->onGPSTimeout()V

    return-void
.end method

.method static synthetic access$400(Lcom/mob/tools/utils/LocationHelper;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/mob/tools/utils/LocationHelper;->networkRequesting:Z

    return p0
.end method

.method static synthetic access$500(Lcom/mob/tools/utils/LocationHelper;)Landroid/location/LocationManager;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mob/tools/utils/LocationHelper;)Landroid/location/LocationListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/mob/tools/utils/LocationHelper;->listener:Landroid/location/LocationListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mob/tools/utils/LocationHelper;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/mob/tools/utils/LocationHelper;->quit()V

    return-void
.end method

.method static synthetic access$802(Lcom/mob/tools/utils/LocationHelper;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/mob/tools/utils/LocationHelper;->res:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mob/tools/utils/LocationHelper;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private newCallback()Landroid/os/Handler$Callback;
    .locals 1

    .line 33
    new-instance v0, Lcom/mob/tools/utils/LocationHelper$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/LocationHelper$1;-><init>(Lcom/mob/tools/utils/LocationHelper;)V

    return-object v0
.end method

.method private newLocationListener()V
    .locals 1

    .line 72
    new-instance v0, Lcom/mob/tools/utils/LocationHelper$2;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/LocationHelper$2;-><init>(Lcom/mob/tools/utils/LocationHelper;)V

    iput-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->listener:Landroid/location/LocationListener;

    return-void
.end method

.method private onGPSTimeout()V
    .locals 9

    .line 176
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mob/tools/utils/LocationHelper;->listener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/mob/tools/utils/LocationHelper;->gpsRequesting:Z

    .line 179
    iget v1, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iput-boolean v2, p0, Lcom/mob/tools/utils/LocationHelper;->networkRequesting:Z

    .line 182
    iget-object v3, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mob/tools/utils/LocationHelper;->listener:Landroid/location/LocationListener;

    const-string v4, "network"

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 183
    iget v0, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    if-lez v0, :cond_2

    .line 184
    iget-object v1, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/LocationHelper;->quit()V

    :cond_2
    :goto_0
    return-void
.end method

.method private onRequest()V
    .locals 9

    .line 143
    iget v0, p0, Lcom/mob/tools/utils/LocationHelper;->gpsTimeoutSec:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    iget v3, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 145
    :cond_1
    iget-object v3, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_3

    const-string v0, "gps"

    .line 146
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iput-boolean v2, p0, Lcom/mob/tools/utils/LocationHelper;->gpsRequesting:Z

    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mob/tools/utils/LocationHelper;->listener:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 150
    iget v0, p0, Lcom/mob/tools/utils/LocationHelper;->gpsTimeoutSec:I

    if-lez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/mob/tools/utils/LocationHelper;->gpsTimeoutSec:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 154
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 155
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eqz v1, :cond_5

    .line 158
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    iput-boolean v2, p0, Lcom/mob/tools/utils/LocationHelper;->networkRequesting:Z

    .line 161
    :try_start_1
    iget-object v3, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string v4, "network"

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mob/tools/utils/LocationHelper;->listener:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 162
    iget v0, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    if-lez v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 166
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 167
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_2
    return-void

    .line 172
    :cond_5
    invoke-direct {p0}, Lcom/mob/tools/utils/LocationHelper;->quit()V

    return-void
.end method

.method private quit()V
    .locals 2

    .line 61
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 63
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    iget-object v0, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 63
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 66
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/LocationHelper;->getLocation(Landroid/content/Context;I)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public getLocation(Landroid/content/Context;I)Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/LocationHelper;->getLocation(Landroid/content/Context;II)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public getLocation(Landroid/content/Context;II)Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mob/tools/utils/LocationHelper;->getLocation(Landroid/content/Context;IIZ)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public getLocation(Landroid/content/Context;IIZ)Landroid/location/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/LocationHelper;->deviceHelper:Lcom/mob/tools/utils/DeviceHelper;

    .line 120
    iput p2, p0, Lcom/mob/tools/utils/LocationHelper;->gpsTimeoutSec:I

    .line 121
    iput p3, p0, Lcom/mob/tools/utils/LocationHelper;->networkTimeoutSec:I

    const-string p2, "location"

    .line 123
    invoke-virtual {p1, p2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 128
    :cond_0
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper;->handler:Landroid/os/Handler;

    const/4 p2, 0x0

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper;->res:Landroid/location/Location;

    if-nez p1, :cond_1

    if-eqz p4, :cond_1

    .line 134
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string p2, "gps"

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/LocationHelper;->res:Landroid/location/Location;

    if-nez p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper;->lm:Landroid/location/LocationManager;

    const-string p2, "network"

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/LocationHelper;->res:Landroid/location/Location;

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/mob/tools/utils/LocationHelper;->res:Landroid/location/Location;

    return-object p1

    :catchall_0
    move-exception p1

    .line 131
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
