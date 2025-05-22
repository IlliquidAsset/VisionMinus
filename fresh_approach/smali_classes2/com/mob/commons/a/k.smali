.class public Lcom/mob/commons/a/k;
.super Lcom/mob/commons/a/d;
.source "DvcClt.java"


# instance fields
.field private a:Lcom/mob/tools/utils/Hashon;

.field private b:Ljava/util/Random;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Lcom/mob/tools/utils/DeviceHelper;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/mob/commons/a/d;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/mob/commons/a/k;->g:Z

    .line 67
    iput-boolean v0, p0, Lcom/mob/commons/a/k;->h:Z

    .line 68
    iput-boolean v0, p0, Lcom/mob/commons/a/k;->i:Z

    .line 71
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    return-void
.end method

.method private a(Landroid/location/Location;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 521
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 522
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "accuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "verticalAccuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ltime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "provider"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "altitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "bearing"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "speed"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object p1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getSSID()Ljava/lang/String;

    move-result-object p1

    .line 537
    iget-object v1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cur_bssid"

    .line 539
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cur_ssid"

    .line 542
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/os/Parcelable;)V
    .locals 2

    .line 345
    :try_start_0
    check-cast p1, Landroid/net/NetworkInfo;

    .line 346
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 350
    :cond_0
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "ssid"

    .line 351
    iget-object v1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bssid"

    .line 352
    iget-object v1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 354
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-static {}, Lcom/mob/commons/i;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 358
    :cond_1
    invoke-static {}, Lcom/mob/commons/b;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 359
    invoke-direct {p0}, Lcom/mob/commons/a/k;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 362
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 602
    monitor-enter p0

    .line 604
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "WIFI_SCAN_LIST"

    .line 605
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "list"

    .line 606
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cl"

    .line 607
    invoke-virtual {p0}, Lcom/mob/commons/a/k;->f()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "datetime"

    .line 608
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object p1

    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 617
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 619
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method private a(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 464
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3, v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    const/16 v3, 0xf

    invoke-virtual {v2, v0, v3, v1}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 471
    invoke-direct {p0, v0}, Lcom/mob/commons/a/k;->a(Landroid/location/Location;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 473
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 474
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "location_type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 475
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "wifiList"

    .line 476
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "type"

    const-string v1, "LOCATION"

    .line 479
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "data"

    .line 480
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "datetime"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object p2

    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/k;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/mob/commons/a/k;->i:Z

    return p0
.end method

.method static synthetic a(Lcom/mob/commons/a/k;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/mob/commons/a/k;->i:Z

    return p1
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 635
    iput-boolean v0, p0, Lcom/mob/commons/a/k;->h:Z

    .line 636
    invoke-static {}, Lcom/mob/commons/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 639
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/mob/commons/a/k;->a(Ljava/util/ArrayList;I)V

    const/4 v0, 0x1

    .line 640
    invoke-direct {p0, p1, v0}, Lcom/mob/commons/a/k;->a(Ljava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 642
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p1, 0x5

    .line 645
    invoke-static {}, Lcom/mob/commons/b;->q()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mob/commons/a/k;->a(IJ)V

    return-void
.end method

.method static synthetic b(Lcom/mob/commons/a/k;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/mob/commons/a/k;->h:Z

    return p0
.end method

.method private c(I)V
    .locals 6

    .line 550
    iget-object p1, p0, Lcom/mob/commons/a/k;->d:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_0

    .line 551
    new-instance p1, Lcom/mob/commons/a/k$2;

    invoke-direct {p1, p0}, Lcom/mob/commons/a/k$2;-><init>(Lcom/mob/commons/a/k;)V

    iput-object p1, p0, Lcom/mob/commons/a/k;->d:Landroid/content/BroadcastReceiver;

    .line 560
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 561
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "registerReceiver"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mob/commons/a/k;->d:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    new-array p1, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/BroadcastReceiver;

    aput-object v2, p1, v5

    const-class v2, Landroid/content/IntentFilter;

    aput-object v2, p1, v4

    invoke-static {v0, v1, v3, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/mob/commons/a/k;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/mob/commons/a/k;->s()V

    return-void
.end method

.method private h()V
    .locals 10

    .line 213
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phonename"

    .line 214
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getBluetoothName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "signmd5"

    .line 215
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSignMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "boardname"

    .line 216
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "devicename"

    .line 217
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "displayid"

    .line 218
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fingerprint"

    .line 219
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xe

    const-string v3, "radiover"

    if-lt v1, v2, :cond_0

    .line 221
    :try_start_1
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 223
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "density"

    .line 225
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->getDensity(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "densitydpi"

    .line 226
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->getDensityDpi(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "btm"

    .line 228
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getBTMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "btmp"

    .line 229
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getBTMacFromProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bt"

    .line 230
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->isBT()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cameraResolutions"

    .line 232
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCamResolution()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timezone"

    .line 233
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpuType"

    .line 234
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCPUType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flavor"

    .line 235
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getFlavor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "features"

    .line 236
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSupport()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "defaultInputMethod"

    .line 237
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getDefaultIM()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inputMethods"

    .line 238
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getIMList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "brand"

    .line 239
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isSimulator"

    .line 240
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->isSmlt()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ipInfo"

    .line 241
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getLocalIpInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-direct {p0}, Lcom/mob/commons/a/k;->v()Lcom/mob/tools/utils/Hashon;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {}, Lcom/mob/commons/i;->a()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v5

    invoke-static {}, Lcom/mob/commons/i;->o()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 247
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_4

    .line 248
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "type"

    const-string v4, "DEVEXT"

    .line 249
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    .line 250
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datetime"

    .line 251
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object v0

    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    .line 253
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    const-wide/32 v2, -0x65813800

    add-long/2addr v0, v2

    .line 256
    invoke-static {v0, v1}, Lcom/mob/commons/i;->e(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 259
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    return-void
.end method

.method private i()V
    .locals 8

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    :try_start_1
    iget-object v1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getAvailableWifiList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 270
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 271
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "BSSID"

    .line 272
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 273
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    const-string v2, "BSSID"

    .line 278
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SSID"

    .line 279
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCurrentWifiInfo()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 284
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 286
    :cond_3
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ssid"

    .line 287
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "bssid"

    .line 288
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "type"

    const-string v5, "WIFI_INFO"

    .line 291
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "data"

    .line 292
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cl"

    .line 293
    invoke-virtual {p0}, Lcom/mob/commons/a/k;->f()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v4

    const-string v0, "datetime"

    .line 295
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object v0

    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v3}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    .line 298
    invoke-static {v4, v5}, Lcom/mob/commons/i;->a(J)V

    .line 300
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v3, "ssid"

    .line 301
    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bssid"

    .line 302
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 304
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Lcom/mob/commons/i;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 308
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x2

    .line 310
    invoke-static {}, Lcom/mob/commons/b;->s()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mob/commons/a/k;->a(IJ)V

    .line 311
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private j()V
    .locals 7

    .line 315
    iget-object v0, p0, Lcom/mob/commons/a/k;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/mob/commons/a/k$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/a/k$1;-><init>(Lcom/mob/commons/a/k;)V

    iput-object v0, p0, Lcom/mob/commons/a/k;->c:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 334
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "registerReceiver"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mob/commons/a/k;->c:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/BroadcastReceiver;

    aput-object v3, v0, v6

    const-class v3, Landroid/content/IntentFilter;

    aput-object v3, v0, v5

    invoke-static {v1, v2, v4, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private k()V
    .locals 6

    .line 367
    iget-object v0, p0, Lcom/mob/commons/a/k;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 370
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "unregisterReceiver"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mob/commons/a/k;->c:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    aput-object v4, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Lcom/mob/commons/a/k;->c:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private l()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, -0x1

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, -0x1

    .line 383
    :goto_0
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCellLac()I

    move-result v2

    .line 384
    iget-object v3, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getCellId()I

    move-result v3

    .line 385
    iget-object v4, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getPsc()I

    move-result v4

    const/4 v5, 0x0

    if-eq v1, v0, :cond_0

    if-eq v2, v0, :cond_0

    if-eq v3, v0, :cond_0

    .line 388
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 389
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "lac"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cell"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v4, v0, :cond_0

    .line 392
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "psc"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaBid()I

    move-result v2

    .line 398
    iget-object v3, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaSid()I

    move-result v3

    .line 399
    iget-object v4, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaNid()I

    move-result v4

    .line 400
    iget-object v6, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v6}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaLat()I

    move-result v6

    .line 401
    iget-object v7, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v7}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaLon()I

    move-result v7

    if-eq v1, v0, :cond_3

    if-eq v2, v0, :cond_3

    if-eq v3, v0, :cond_3

    if-eq v4, v0, :cond_3

    if-nez v5, :cond_1

    .line 404
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 406
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "bid"

    invoke-virtual {v5, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sid"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "nid"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v6, v0, :cond_2

    .line 410
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lat"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v7, v0, :cond_3

    .line 413
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "lon"

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v5, :cond_5

    .line 418
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "carrier"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "simopname"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNeighboringCellInfo()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 421
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "nearby"

    .line 422
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "BSINFO"

    .line 425
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {p0}, Lcom/mob/commons/a/k;->f()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "cl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 427
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object v1

    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    .line 431
    invoke-direct {p0}, Lcom/mob/commons/a/k;->v()Lcom/mob/tools/utils/Hashon;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/i;->c(Ljava/lang/String;)V

    .line 435
    :cond_5
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/mob/commons/b;->o()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 436
    invoke-static {v0, v1}, Lcom/mob/commons/i;->b(J)V

    return-void
.end method

.method private m()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, -0x1

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, -0x1

    .line 444
    :goto_0
    iget-object v2, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCellLac()I

    move-result v2

    .line 445
    iget-object v3, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getCellId()I

    move-result v3

    const/4 v4, 0x0

    if-eq v1, v0, :cond_1

    if-eq v2, v0, :cond_1

    if-eq v3, v0, :cond_1

    .line 447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 448
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "carrier"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getCarrierName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "simopname"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lac"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cell"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-direct {p0}, Lcom/mob/commons/a/k;->v()Lcom/mob/tools/utils/Hashon;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {}, Lcom/mob/commons/i;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private n()V
    .locals 9

    .line 488
    iget-object v0, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 491
    invoke-direct {p0, v0}, Lcom/mob/commons/a/k;->a(Landroid/location/Location;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 493
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 494
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "type"

    const-string v5, "O_LOCATION"

    .line 495
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "data"

    .line 496
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "datetime"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 500
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "latitude"

    invoke-virtual {v2, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "longitude"

    invoke-virtual {v2, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 503
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {}, Lcom/mob/commons/i;->q()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-static {}, Lcom/mob/commons/i;->r()J

    move-result-wide v4

    .line 506
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v6

    .line 507
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    cmp-long v2, v6, v4

    if-ltz v2, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "o_loc: no"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    .line 508
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "o_loc: yes"

    invoke-virtual {v2, v4, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 509
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object v1

    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v3}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    .line 510
    invoke-static {v0}, Lcom/mob/commons/i;->j(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/mob/commons/b;->B()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/mob/commons/i;->g(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method private o()V
    .locals 11

    .line 572
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/a/k;->u()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 573
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 576
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "BSSID"

    .line 577
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 579
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 583
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v2, ""

    .line 584
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    invoke-static {}, Lcom/mob/commons/i;->i()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-static {}, Lcom/mob/commons/i;->p()J

    move-result-wide v3

    .line 587
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v5

    .line 588
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wiHashLast: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v10}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 589
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wiHash: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v2, :cond_2

    .line 590
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    cmp-long v2, v3, v5

    if-gez v2, :cond_3

    .line 591
    :cond_2
    invoke-direct {p0, v0}, Lcom/mob/commons/a/k;->a(Ljava/util/ArrayList;)V

    .line 592
    invoke-static {v1}, Lcom/mob/commons/i;->g(Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/mob/commons/b;->v()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/mob/commons/i;->f(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 597
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private p()V
    .locals 6

    .line 623
    iget-object v0, p0, Lcom/mob/commons/a/k;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 626
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "unregisterReceiver"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mob/commons/a/k;->d:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    aput-object v4, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 629
    iput-object v0, p0, Lcom/mob/commons/a/k;->d:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    .line 650
    invoke-direct {p0}, Lcom/mob/commons/a/k;->r()V

    const/4 v0, 0x1

    .line 652
    iput-boolean v0, p0, Lcom/mob/commons/a/k;->h:Z

    .line 654
    iget-object v0, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->scanWifiList()Z

    return-void
.end method

.method private r()V
    .locals 7

    .line 658
    iget-object v0, p0, Lcom/mob/commons/a/k;->e:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lcom/mob/commons/a/k$3;

    invoke-direct {v0, p0}, Lcom/mob/commons/a/k$3;-><init>(Lcom/mob/commons/a/k;)V

    iput-object v0, p0, Lcom/mob/commons/a/k;->e:Landroid/content/BroadcastReceiver;

    .line 668
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 669
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "registerReceiver"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mob/commons/a/k;->e:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/BroadcastReceiver;

    aput-object v3, v0, v6

    const-class v3, Landroid/content/IntentFilter;

    aput-object v3, v0, v5

    invoke-static {v1, v2, v4, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private s()V
    .locals 6

    .line 679
    iget-object v0, p0, Lcom/mob/commons/a/k;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 682
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "unregisterReceiver"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mob/commons/a/k;->e:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    aput-object v4, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 685
    iput-object v0, p0, Lcom/mob/commons/a/k;->e:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    const/16 v0, 0xa

    .line 692
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/k;->a(I)V

    .line 694
    iget-boolean v0, p0, Lcom/mob/commons/a/k;->g:Z

    if-nez v0, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/mob/commons/a/k;->u()Ljava/util/ArrayList;

    move-result-object v0

    .line 698
    invoke-direct {p0, v0}, Lcom/mob/commons/a/k;->b(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 701
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private u()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAvailableWifiList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 714
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 715
    invoke-static {}, Lcom/mob/commons/b;->w()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 716
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 719
    :cond_0
    iget-object v3, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "BSSID"

    .line 723
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 725
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "___curConn"

    const/4 v5, 0x1

    .line 727
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 732
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 733
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 734
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 736
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 739
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0

    :catchall_0
    move-exception v1

    .line 743
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_5
    return-object v0
.end method

.method private v()Lcom/mob/tools/utils/Hashon;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/mob/commons/a/k;->a:Lcom/mob/tools/utils/Hashon;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/a/k;->a:Lcom/mob/tools/utils/Hashon;

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/k;->a:Lcom/mob/tools/utils/Hashon;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 1

    const-string v0, "comm/locks/.dic_lock"

    .line 75
    invoke-static {v0}, Lcom/mob/commons/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 7

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/16 v2, 0x78

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 197
    :pswitch_0
    invoke-direct {p0}, Lcom/mob/commons/a/k;->t()V

    goto/16 :goto_3

    .line 165
    :pswitch_1
    iput-boolean v3, p0, Lcom/mob/commons/a/k;->g:Z

    const/4 p1, 0x0

    .line 166
    invoke-direct {p0, p1}, Lcom/mob/commons/a/k;->b(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    .line 200
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Parcelable;

    invoke-direct {p0, p1}, Lcom/mob/commons/a/k;->a(Landroid/os/Parcelable;)V

    goto/16 :goto_3

    .line 194
    :pswitch_3
    invoke-direct {p0}, Lcom/mob/commons/a/k;->o()V

    goto/16 :goto_3

    .line 184
    :pswitch_4
    invoke-static {}, Lcom/mob/commons/b;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/a/k;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 188
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p1, 0x7

    .line 191
    invoke-static {}, Lcom/mob/commons/b;->C()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/mob/commons/a/k;->a(IJ)V

    goto/16 :goto_3

    .line 169
    :pswitch_5
    invoke-static {}, Lcom/mob/commons/b;->t()Z

    move-result p1

    .line 170
    invoke-static {}, Lcom/mob/commons/b;->u()J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x6

    if-eqz p1, :cond_1

    .line 173
    iput-boolean v3, p0, Lcom/mob/commons/a/k;->i:Z

    .line 174
    invoke-direct {p0, v1}, Lcom/mob/commons/a/k;->c(I)V

    .line 176
    iget-object p1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->scanWifiList()Z

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 177
    invoke-virtual {p0, v0, v1, v2}, Lcom/mob/commons/a/k;->a(IJ)V

    goto/16 :goto_3

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/mob/commons/a/k;->p()V

    .line 180
    invoke-static {}, Lcom/mob/commons/b;->v()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mob/commons/a/k;->a(IJ)V

    goto/16 :goto_3

    :pswitch_6
    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/mob/commons/a/k;->g:Z

    .line 144
    invoke-static {}, Lcom/mob/commons/b;->p()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    :try_start_1
    iget-object p1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0xa

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mob/commons/a/k;->f:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 147
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    invoke-direct {p0}, Lcom/mob/commons/a/k;->q()V

    const-wide/16 v1, 0x1388

    .line 151
    invoke-virtual {p0, v0, v1, v2}, Lcom/mob/commons/a/k;->a(IJ)V

    goto/16 :goto_3

    .line 154
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/k;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    .line 157
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_3
    const/4 p1, 0x5

    .line 160
    invoke-static {}, Lcom/mob/commons/b;->q()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mob/commons/a/k;->a(IJ)V

    goto/16 :goto_3

    .line 122
    :pswitch_7
    invoke-static {}, Lcom/mob/commons/b;->n()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 123
    invoke-static {}, Lcom/mob/commons/i;->d()J

    move-result-wide v3

    .line 124
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-ltz p1, :cond_4

    .line 126
    :try_start_2
    invoke-direct {p0}, Lcom/mob/commons/a/k;->m()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 127
    :cond_4
    invoke-direct {p0}, Lcom/mob/commons/a/k;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 130
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 134
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/mob/commons/a/k;->b:Ljava/util/Random;

    if-nez p1, :cond_6

    .line 135
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/mob/commons/a/k;->b:Ljava/util/Random;

    .line 137
    :cond_6
    iget-object p1, p0, Lcom/mob/commons/a/k;->b:Ljava/util/Random;

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit16 p1, p1, 0xb4

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    .line 138
    invoke-virtual {p0, v1, v2, v3}, Lcom/mob/commons/a/k;->a(IJ)V

    goto :goto_3

    .line 107
    :pswitch_8
    invoke-static {}, Lcom/mob/commons/b;->n()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 109
    :try_start_3
    invoke-direct {p0}, Lcom/mob/commons/a/k;->l()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    .line 111
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 114
    :goto_2
    iget-object p1, p0, Lcom/mob/commons/a/k;->b:Ljava/util/Random;

    if-nez p1, :cond_7

    .line 115
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/mob/commons/a/k;->b:Ljava/util/Random;

    .line 117
    :cond_7
    iget-object p1, p0, Lcom/mob/commons/a/k;->b:Ljava/util/Random;

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit16 p1, p1, 0xb4

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    .line 118
    invoke-virtual {p0, v1, v2, v3}, Lcom/mob/commons/a/k;->a(IJ)V

    goto :goto_3

    .line 99
    :pswitch_9
    invoke-static {}, Lcom/mob/commons/b;->r()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 100
    invoke-direct {p0}, Lcom/mob/commons/a/k;->i()V

    .line 101
    invoke-direct {p0}, Lcom/mob/commons/a/k;->j()V

    goto :goto_3

    .line 103
    :cond_8
    invoke-direct {p0}, Lcom/mob/commons/a/k;->k()V

    goto :goto_3

    .line 94
    :pswitch_a
    invoke-static {}, Lcom/mob/commons/b;->m()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 95
    invoke-direct {p0}, Lcom/mob/commons/a/k;->h()V

    :cond_9
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/mob/commons/a/k;->k()V

    .line 207
    invoke-direct {p0}, Lcom/mob/commons/a/k;->p()V

    .line 208
    invoke-direct {p0}, Lcom/mob/commons/a/k;->s()V

    return-void
.end method

.method protected d()V
    .locals 2

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/k;->b(I)V

    const/4 v0, 0x2

    .line 80
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/k;->b(I)V

    .line 81
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, -0x1

    .line 83
    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x6

    .line 84
    iput v1, v0, Landroid/os/Message;->what:I

    .line 85
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/k;->b(Landroid/os/Message;)V

    const/4 v0, 0x3

    .line 86
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/k;->b(I)V

    const/4 v0, 0x5

    .line 87
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/k;->b(I)V

    const/4 v0, 0x7

    .line 88
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/k;->b(I)V

    return-void
.end method
