.class public Lcom/mob/tools/utils/BHelper;
.super Ljava/lang/Object;
.source "BHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/BHelper$BScanCallback;,
        Lcom/mob/tools/utils/BHelper$BOperationCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BHelper"

.field private static instance:Lcom/mob/tools/utils/BHelper;


# instance fields
.field private bOperationCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/utils/BHelper$BOperationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bOperationReceiver:Landroid/content/BroadcastReceiver;

.field private bOperationRegistered:Z

.field private bScanReceiver:Landroid/content/BroadcastReceiver;

.field private bScanRegistered:Z

.field private context:Landroid/content/Context;

.field private mScanning:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/mob/tools/utils/BHelper;->mScanning:Z

    .line 37
    iput-boolean v0, p0, Lcom/mob/tools/utils/BHelper;->bOperationRegistered:Z

    .line 40
    iput-boolean v0, p0, Lcom/mob/tools/utils/BHelper;->bScanRegistered:Z

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mob/tools/utils/BHelper;->bOperationCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/BHelper;->parseDevice2Map(Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/mob/tools/utils/BHelper;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/mob/tools/utils/BHelper;->mScanning:Z

    return p1
.end method

.method private getBAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 4

    .line 609
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 611
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    goto :goto_0

    .line 614
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 617
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/BHelper;
    .locals 2

    .line 48
    sget-object v0, Lcom/mob/tools/utils/BHelper;->instance:Lcom/mob/tools/utils/BHelper;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/mob/tools/utils/BHelper;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/BHelper;->instance:Lcom/mob/tools/utils/BHelper;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/mob/tools/utils/BHelper;

    invoke-direct {v1, p0}, Lcom/mob/tools/utils/BHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/utils/BHelper;->instance:Lcom/mob/tools/utils/BHelper;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 55
    :cond_1
    :goto_0
    sget-object p0, Lcom/mob/tools/utils/BHelper;->instance:Lcom/mob/tools/utils/BHelper;

    return-object p0
.end method

.method private parseDevice2Map(Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_3

    :try_start_0
    const-string v1, "name"

    .line 627
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "address"

    .line 628
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bondState"

    .line 629
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 632
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    .line 633
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    const-string v3, "majorClass"

    .line 634
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceClass"

    .line 635
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const-string v1, "type"

    .line 638
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 642
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 643
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 644
    array-length v2, p1

    if-lez v2, :cond_2

    .line 645
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    if-eqz v4, :cond_1

    .line 646
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 647
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "uuids"

    .line 651
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 654
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public findLE(ILandroid/bluetooth/BluetoothAdapter;Lcom/mob/tools/utils/BHelper$BScanCallback;)V
    .locals 9

    const/4 v0, 0x0

    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    .line 461
    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 462
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p1}, Lcom/mob/tools/utils/BHelper$BScanCallback;->onScan(Ljava/util/ArrayList;)V

    return-void

    .line 467
    :cond_0
    iget-boolean v1, p0, Lcom/mob/tools/utils/BHelper;->mScanning:Z

    if-eqz v1, :cond_1

    .line 469
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p1}, Lcom/mob/tools/utils/BHelper$BScanCallback;->onScan(Ljava/util/ArrayList;)V

    return-void

    :cond_1
    if-gtz p1, :cond_2

    const/4 p1, 0x6

    .line 478
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_4

    .line 479
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 481
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 483
    new-instance v6, Lcom/mob/tools/utils/BHelper$4;

    invoke-direct {v6, p0, v8}, Lcom/mob/tools/utils/BHelper$4;-><init>(Lcom/mob/tools/utils/BHelper;Ljava/util/ArrayList;)V

    .line 504
    iput-boolean v3, p0, Lcom/mob/tools/utils/BHelper;->mScanning:Z

    .line 505
    invoke-virtual {p2, v6}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 508
    new-instance v1, Lcom/mob/tools/utils/BHelper$5;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/mob/tools/utils/BHelper$5;-><init>(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;Lcom/mob/tools/utils/BHelper$BScanCallback;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/mob/tools/MobHandlerThread;->newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    .line 517
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 520
    :cond_3
    new-instance v6, Lcom/mob/tools/utils/BHelper$6;

    invoke-direct {v6, p0, v8}, Lcom/mob/tools/utils/BHelper$6;-><init>(Lcom/mob/tools/utils/BHelper;Ljava/util/ArrayList;)V

    .line 556
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v5

    .line 557
    iput-boolean v3, p0, Lcom/mob/tools/utils/BHelper;->mScanning:Z

    .line 580
    invoke-virtual {v5, v6}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 582
    new-instance p2, Lcom/mob/tools/utils/BHelper$7;

    move-object v3, p2

    move-object v4, p0

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/mob/tools/utils/BHelper$7;-><init>(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;Lcom/mob/tools/utils/BHelper$BScanCallback;Ljava/util/ArrayList;)V

    invoke-static {p2}, Lcom/mob/tools/MobHandlerThread;->newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    .line 591
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 594
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/mob/tools/utils/BHelper;->findLEAndClassic(ILcom/mob/tools/utils/BHelper$BScanCallback;)V

    goto :goto_0

    .line 598
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p1}, Lcom/mob/tools/utils/BHelper$BScanCallback;->onScan(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 601
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 602
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p1}, Lcom/mob/tools/utils/BHelper$BScanCallback;->onScan(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public findLEAndClassic(ILcom/mob/tools/utils/BHelper$BScanCallback;)V
    .locals 7

    const/4 v0, 0x0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    .line 346
    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    invoke-direct {p0}, Lcom/mob/tools/utils/BHelper;->getBAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 348
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Lcom/mob/tools/utils/BHelper$BScanCallback;->onScan(Ljava/util/ArrayList;)V

    return-void

    .line 353
    :cond_0
    iget-boolean v2, p0, Lcom/mob/tools/utils/BHelper;->mScanning:Z

    if-eqz v2, :cond_1

    .line 355
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Lcom/mob/tools/utils/BHelper$BScanCallback;->onScan(Ljava/util/ArrayList;)V

    return-void

    :cond_1
    if-gtz p1, :cond_2

    const/4 p1, 0x6

    .line 368
    :cond_2
    new-instance v2, Lcom/mob/tools/utils/BHelper$2;

    invoke-direct {v2, p0, v1}, Lcom/mob/tools/utils/BHelper$2;-><init>(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-static {v2}, Lcom/mob/tools/MobHandlerThread;->newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    .line 376
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 379
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    new-instance v3, Lcom/mob/tools/utils/BHelper$3;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/mob/tools/utils/BHelper$3;-><init>(Lcom/mob/tools/utils/BHelper;Ljava/util/ArrayList;Lcom/mob/tools/utils/BHelper$BScanCallback;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/mob/tools/utils/BHelper;->bScanReceiver:Landroid/content/BroadcastReceiver;

    .line 411
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.device.action.FOUND"

    .line 413
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 414
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 416
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    const-string v3, "registerReceiver"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mob/tools/utils/BHelper;->bScanReceiver:Landroid/content/BroadcastReceiver;

    aput-object v6, v5, v0

    const/4 v6, 0x1

    aput-object p1, v5, v6

    new-array p1, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    aput-object v4, p1, v0

    const-class v4, Landroid/content/IntentFilter;

    aput-object v4, p1, v6

    invoke-static {v2, v3, v5, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 421
    iput-boolean v6, p0, Lcom/mob/tools/utils/BHelper;->bScanRegistered:Z

    .line 424
    iput-boolean v6, p0, Lcom/mob/tools/utils/BHelper;->mScanning:Z

    .line 425
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_0

    .line 428
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Lcom/mob/tools/utils/BHelper$BScanCallback;->onScan(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 431
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 432
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Lcom/mob/tools/utils/BHelper$BScanCallback;->onScan(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public getBondedDevice()Ljava/util/ArrayList;
    .locals 6
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

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/mob/tools/utils/BHelper;->getBAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 300
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 301
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 302
    invoke-direct {p0, v3}, Lcom/mob/tools/utils/BHelper;->parseDevice2Map(Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "__currConnected"

    .line 303
    invoke-virtual {p0, v3}, Lcom/mob/tools/utils/BHelper;->isConnectedDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 309
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    return-object v0
.end method

.method public isConnectedDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x73

    .line 319
    invoke-static {v1}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 325
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 5

    const/4 v0, 0x0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/mob/tools/utils/BHelper;->getBAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 284
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public open()V
    .locals 4

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    .line 249
    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/mob/tools/utils/BHelper;->getBAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 259
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerBOperationReceiver(Ljava/lang/String;Lcom/mob/tools/utils/BHelper$BOperationCallback;)V
    .locals 5

    if-eqz p2, :cond_1

    .line 83
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper;->bOperationCallbackMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/BHelper;->bOperationCallbackMap:Ljava/util/Map;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper;->bOperationCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper;->bOperationReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 90
    :try_start_0
    new-instance p2, Lcom/mob/tools/utils/BHelper$1;

    invoke-direct {p2, p0}, Lcom/mob/tools/utils/BHelper$1;-><init>(Lcom/mob/tools/utils/BHelper;)V

    iput-object p2, p0, Lcom/mob/tools/utils/BHelper;->bOperationReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 224
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 226
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 228
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 230
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    const-string v1, "registerReceiver"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mob/tools/utils/BHelper;->bOperationReceiver:Landroid/content/BroadcastReceiver;

    aput-object v4, v3, p1

    const/4 v4, 0x1

    aput-object p2, v3, v4

    new-array p2, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/BroadcastReceiver;

    aput-object v2, p2, p1

    const-class v2, Landroid/content/IntentFilter;

    aput-object v2, p2, v4

    invoke-static {v0, v1, v3, p2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 235
    iput-boolean v4, p0, Lcom/mob/tools/utils/BHelper;->bOperationRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 236
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterBOperationReceiver(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/BHelper;->bOperationCallbackMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mob/tools/utils/BHelper;->bOperationCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/mob/tools/utils/BHelper;->bOperationCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper;->bOperationCallbackMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper;->bOperationReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/mob/tools/utils/BHelper;->bOperationRegistered:Z

    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    const-string v1, "unregisterReceiver"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mob/tools/utils/BHelper;->bOperationReceiver:Landroid/content/BroadcastReceiver;

    aput-object v4, v3, v0

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    aput-object v4, v2, v0

    invoke-static {p1, v1, v3, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    iput-boolean v0, p0, Lcom/mob/tools/utils/BHelper;->bOperationRegistered:Z

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/mob/tools/utils/BHelper;->bOperationReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 74
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterBScanReceiver()V
    .locals 6

    const/4 v0, 0x0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/BHelper;->bScanReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mob/tools/utils/BHelper;->bScanRegistered:Z

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/mob/tools/utils/BHelper;->context:Landroid/content/Context;

    const-string v2, "unregisterReceiver"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mob/tools/utils/BHelper;->bScanReceiver:Landroid/content/BroadcastReceiver;

    aput-object v5, v4, v0

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/BroadcastReceiver;

    aput-object v5, v3, v0

    invoke-static {v1, v2, v4, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 442
    iput-boolean v0, p0, Lcom/mob/tools/utils/BHelper;->bScanRegistered:Z

    const/4 v1, 0x0

    .line 443
    iput-object v1, p0, Lcom/mob/tools/utils/BHelper;->bScanReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 446
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method
