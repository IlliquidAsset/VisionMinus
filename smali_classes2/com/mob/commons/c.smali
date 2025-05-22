.class public Lcom/mob/commons/c;
.super Ljava/lang/Object;
.source "DataHeap.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:Lcom/mob/commons/c;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

.field private d:Lcom/mob/tools/utils/Hashon;

.field private e:Ljava/util/Random;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/mob/commons/c;->f:Z

    .line 69
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/c;->d:Lcom/mob/tools/utils/Hashon;

    .line 70
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/c;->e:Ljava/util/Random;

    const-string v0, "d"

    .line 71
    invoke-static {v0, p0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/c;->b:Landroid/os/Handler;

    .line 73
    invoke-direct {p0}, Lcom/mob/commons/c;->b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .line 74
    invoke-direct {p0}, Lcom/mob/commons/c;->c()V

    return-void
.end method

.method private a(Landroid/util/SparseArray;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, ")"

    const-string v1, "time in ("

    const/4 v2, 0x0

    .line 532
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 535
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, ", "

    .line 536
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v6, 0x27

    .line 538
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 541
    :try_start_1
    invoke-direct {p0}, Lcom/mob/commons/c;->b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/mob/tools/utils/SQLiteHelper;->delete(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p1

    :catchall_0
    move-exception v4

    .line 543
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 545
    invoke-direct {p0}, Lcom/mob/commons/c;->b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p1}, Lcom/mob/tools/utils/SQLiteHelper;->delete(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    .line 548
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return v2
.end method

.method static synthetic a(Lcom/mob/commons/c;Landroid/util/SparseArray;)I
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/mob/commons/c;->a(Landroid/util/SparseArray;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/mob/commons/c;[[Ljava/lang/String;)I
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/mob/commons/c;->a([[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a([[Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "time"

    const-string v2, "data"

    .line 301
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-direct {p0}, Lcom/mob/commons/c;->b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v3}, Lcom/mob/tools/utils/SQLiteHelper;->query(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 307
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    .line 312
    :cond_1
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x0

    :cond_2
    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    .line 314
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v6, -0x1

    .line 317
    :try_start_2
    aget-object v8, v5, v0

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    cmp-long v8, v6, v2

    if-gtz v8, :cond_3

    .line 320
    :try_start_3
    aput-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    .line 323
    :cond_3
    array-length v5, p1

    if-ge v4, v5, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 324
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    move v0, v4

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 326
    :goto_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move v4, v0

    :goto_2
    return v4
.end method

.method static synthetic a(Lcom/mob/commons/c;[[Ljava/lang/String;I)Landroid/util/SparseArray;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/c;->a([[Ljava/lang/String;I)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method private a([[Ljava/lang/String;I)Landroid/util/SparseArray;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 333
    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 335
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 336
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    const-string v4, "plat"

    .line 337
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "device"

    .line 338
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "mac"

    .line 339
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "model"

    .line 340
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "duid"

    .line 341
    invoke-static {v0}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "imei"

    .line 342
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "serialno"

    .line 343
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "networktype"

    .line 344
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "dataNetworkType"

    .line 345
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getDataNtType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_1

    .line 351
    aget-object v7, p1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x1

    .line 353
    :try_start_1
    aget-object v8, v7, v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 354
    invoke-static {v3, v8}, Lcom/mob/tools/utils/Data;->AES128Decode([B[B)[B

    move-result-object v8

    .line 355
    new-instance v9, Ljava/lang/String;

    const-string v10, "utf-8"

    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 357
    iget-object v9, p0, Lcom/mob/commons/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v9, v8}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 358
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "type"

    .line 359
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 360
    invoke-direct {p0, v9}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    aget-object v7, v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    .line 368
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 372
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    return-object p1

    :cond_2
    const-string p1, "datas"

    .line 374
    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "token"

    .line 375
    invoke-static {}, Lcom/mob/commons/l;->a()Lcom/mob/commons/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/commons/l;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 379
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string p2, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string p2, "m"

    iget-object v3, p0, Lcom/mob/commons/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v3, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mob/commons/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p2, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 384
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string p2, "User-Identity"

    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getUserIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p2, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const/16 p2, 0x44

    invoke-static {p2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/commons/b/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p2, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v8}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 p1, 0x7530

    .line 389
    iput p1, v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 390
    iput p1, v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 392
    new-instance v3, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v3}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 393
    invoke-static {}, Lcom/mob/commons/c;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    .line 394
    iget-object p2, p0, Lcom/mob/commons/c;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "200"

    const-string v2, "status"

    .line 395
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 397
    invoke-static {v0}, Lcom/mob/commons/i;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    return-object v0

    :catchall_1
    move-exception p1

    .line 406
    invoke-static {v0}, Lcom/mob/commons/i;->e(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/mob/commons/c;
    .locals 2

    const-class v0, Lcom/mob/commons/c;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/mob/commons/c;->a:Lcom/mob/commons/c;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/mob/commons/c;

    invoke-direct {v1}, Lcom/mob/commons/c;-><init>()V

    sput-object v1, Lcom/mob/commons/c;->a:Lcom/mob/commons/c;

    .line 65
    :cond_0
    sget-object v1, Lcom/mob/commons/c;->a:Lcom/mob/commons/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/mob/commons/c;)Lcom/mob/tools/utils/Hashon;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mob/commons/c;->d:Lcom/mob/tools/utils/Hashon;

    return-object p0
.end method

.method static synthetic a(Lcom/mob/commons/c;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/mob/commons/c;->f:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    const/16 v0, 0x13

    .line 414
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-static {}, Lcom/mob/commons/b;->i()Z

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 417
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-static {}, Lcom/mob/commons/b;->h()Z

    move-result p1

    return p1

    :cond_1
    const/16 v0, 0x15

    .line 420
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-static {}, Lcom/mob/commons/b;->j()Z

    move-result p1

    return p1

    :cond_2
    const/16 v0, 0x16

    .line 423
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result p1

    return p1

    :cond_3
    const/16 v0, 0x17

    .line 426
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    invoke-static {}, Lcom/mob/commons/b;->m()Z

    move-result p1

    return p1

    :cond_4
    const/16 v0, 0x18

    .line 429
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 430
    invoke-static {}, Lcom/mob/commons/b;->n()Z

    move-result p1

    return p1

    :cond_5
    const/16 v0, 0x19

    .line 432
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    invoke-static {}, Lcom/mob/commons/b;->p()Z

    move-result p1

    return p1

    :cond_6
    const/16 v0, 0x1a

    .line 435
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 436
    invoke-static {}, Lcom/mob/commons/b;->A()Z

    move-result p1

    return p1

    :cond_7
    const/16 v0, 0x1b

    .line 438
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 439
    invoke-static {}, Lcom/mob/commons/b;->r()Z

    move-result p1

    return p1

    :cond_8
    const/16 v0, 0x1c

    .line 441
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 442
    invoke-static {}, Lcom/mob/commons/b;->t()Z

    move-result p1

    return p1

    :cond_9
    const/16 v0, 0x1d

    .line 444
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 445
    invoke-static {}, Lcom/mob/commons/b;->z()Z

    move-result p1

    return p1

    :cond_a
    const/16 v0, 0x1e

    .line 447
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_c

    .line 448
    invoke-static {}, Lcom/mob/commons/b;->D()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_c
    const/16 v0, 0x1f

    .line 450
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 451
    invoke-static {}, Lcom/mob/commons/b;->E()Z

    move-result p1

    return p1

    :cond_d
    const/16 v0, 0x20

    .line 453
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 454
    invoke-static {}, Lcom/mob/commons/b;->I()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_e

    goto :goto_1

    :cond_e
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_f
    const/16 v0, 0x21

    .line 456
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 457
    invoke-static {}, Lcom/mob/commons/b;->K()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_10

    goto :goto_2

    :cond_10
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_11
    const/16 v0, 0x22

    .line 459
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 460
    invoke-static {}, Lcom/mob/commons/b;->P()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_12

    goto :goto_3

    :cond_12
    const/4 v1, 0x0

    :goto_3
    return v1

    :cond_13
    const/16 v0, 0x23

    .line 462
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 463
    invoke-static {}, Lcom/mob/commons/b;->Q()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_14

    goto :goto_4

    :cond_14
    const/4 v1, 0x0

    :goto_4
    return v1

    :cond_15
    const/16 v0, 0x24

    .line 465
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 466
    invoke-static {}, Lcom/mob/commons/b;->R()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_16

    goto :goto_5

    :cond_16
    const/4 v1, 0x0

    :goto_5
    return v1

    :cond_17
    const/16 v0, 0x25

    .line 468
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 469
    invoke-static {}, Lcom/mob/commons/b;->T()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_18

    goto :goto_6

    :cond_18
    const/4 v1, 0x0

    :goto_6
    return v1

    :cond_19
    const/16 v0, 0x26

    .line 471
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 472
    invoke-static {}, Lcom/mob/commons/b;->V()Z

    move-result p1

    return p1

    :cond_1a
    const/16 v0, 0x27

    .line 474
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 475
    invoke-static {}, Lcom/mob/commons/b;->W()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_1b

    goto :goto_7

    :cond_1b
    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_1c
    const/16 v0, 0x28

    .line 477
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 478
    invoke-static {}, Lcom/mob/commons/b;->Y()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_1d

    goto :goto_8

    :cond_1d
    const/4 v1, 0x0

    :cond_1e
    :goto_8
    return v1
.end method

.method private declared-synchronized b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .locals 6

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/c;->c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "comm/dbs/.dh"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xc800000

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 84
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "comm/dbs/.dh"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataHeap_1"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/SQLiteHelper;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/c;->c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "time"

    const-string v2, "text"

    const/4 v3, 0x1

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    iget-object v0, p0, Lcom/mob/commons/c;->c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "data"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/mob/commons/c;->c:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/mob/commons/c;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/mob/commons/c;->b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object p0

    return-object p0
.end method

.method private varargs b([Ljava/lang/Object;)Ljava/io/File;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 171
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x4

    .line 172
    aget-object v4, p1, v3

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x5

    .line 173
    aget-object v6, p1, v5

    check-cast v6, Ljava/lang/String;

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 176
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-static {v5}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 177
    aget-object v5, p1, v5

    check-cast v5, [B

    check-cast v5, [B

    const/4 v9, 0x3

    .line 180
    :try_start_0
    aget-object p1, p1, v9

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    const/16 v9, 0xe

    if-eqz v5, :cond_0

    if-lez p1, :cond_0

    .line 182
    array-length v10, v5

    if-lt v10, p1, :cond_0

    invoke-static {v5, v0, p1}, Lcom/mob/tools/utils/Data;->MD5([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 183
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v5, v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_1

    .line 185
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-static {v9}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_1

    .line 190
    :cond_1
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v0

    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Lcom/mob/commons/d;->a(I)V

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-object v10, v8

    :goto_1
    if-eqz v10, :cond_4

    .line 195
    new-instance v8, Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 197
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 199
    :cond_2
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 201
    invoke-static {v2, v10, v0}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 202
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 203
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 205
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const/16 v2, 0x11

    .line 207
    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkADBModel(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->checkUA()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object p1

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/mob/commons/d;->a(I)V

    goto :goto_2

    .line 210
    :cond_3
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/mob/commons/d;->a(I)V

    .line 211
    invoke-static {v1, p1, v4, v6}, Lcom/mob/commons/a/d;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    :goto_2
    :try_start_2
    invoke-static {v8}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 214
    :try_start_3
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/mob/commons/d;->a(ILjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 217
    :try_start_4
    invoke-static {v8}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 219
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/mob/commons/d;->a(ILjava/lang/Throwable;)V

    goto :goto_4

    :catchall_3
    move-exception p1

    .line 217
    :try_start_5
    invoke-static {v8}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    .line 219
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/mob/commons/d;->a(ILjava/lang/Throwable;)V

    .line 220
    :goto_3
    throw p1

    :cond_4
    :goto_4
    return-object v8
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 487
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 488
    iget-object v2, p0, Lcom/mob/commons/c;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 489
    iget-object v2, p0, Lcom/mob/commons/c;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 490
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 491
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 492
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 495
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 496
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 497
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "utf-8"

    .line 498
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 499
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 500
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 501
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 504
    invoke-static {v0, p1}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object p1

    .line 507
    new-instance v1, Lcom/mob/tools/utils/MobRSA;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Lcom/mob/tools/utils/MobRSA;-><init>(I)V

    .line 508
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 511
    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd"

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 516
    invoke-virtual {v1, v0, v2, v3}, Lcom/mob/tools/utils/MobRSA;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 519
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 520
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 521
    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 522
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 523
    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 524
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 525
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 526
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 527
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(JLjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "comm/locks/.dhlock"

    .line 228
    invoke-static {v0}, Lcom/mob/commons/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/c$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mob/commons/c$1;-><init>(Lcom/mob/commons/c;JLjava/util/HashMap;)V

    invoke-static {v0, v1}, Lcom/mob/commons/e;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataHeap add log error data type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "type"

    .line 256
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_0
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", updateTime = "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method private c()V
    .locals 4

    .line 137
    invoke-static {}, Lcom/mob/commons/b;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/mob/commons/b;->N()J

    move-result-wide v0

    .line 141
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "none"

    .line 144
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-wide/32 v0, 0x927c0

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/mob/commons/c;->b:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private d()Z
    .locals 4

    .line 261
    invoke-static {}, Lcom/mob/commons/b;->L()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 265
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 269
    :cond_1
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "none"

    .line 270
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 273
    :cond_2
    iput-boolean v1, p0, Lcom/mob/commons/c;->f:Z

    const-string v0, "comm/locks/.dhlock"

    .line 274
    invoke-static {v0}, Lcom/mob/commons/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v3, Lcom/mob/commons/c$2;

    invoke-direct {v3, p0}, Lcom/mob/commons/c$2;-><init>(Lcom/mob/commons/c;)V

    invoke-static {v0, v3}, Lcom/mob/commons/e;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)Z

    move-result v0

    .line 295
    iget-boolean v3, p0, Lcom/mob/commons/c;->f:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private static e()Ljava/lang/String;
    .locals 3

    .line 556
    :try_start_0
    invoke-static {}, Lcom/mob/commons/i;->g()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 557
    :try_start_1
    invoke-static {v0}, Lcom/mob/commons/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    .line 559
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 562
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/commons/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v5/gcl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(JLjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->ad()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 97
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 100
    iput v1, v0, Landroid/os/Message;->what:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 103
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type"

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/mob/commons/c;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x4

    .line 155
    :try_start_0
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/mob/commons/d;->a(I)V

    .line 156
    invoke-direct {p0, p1}, Lcom/mob/commons/c;->b([Ljava/lang/Object;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :try_start_1
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    .line 158
    :try_start_2
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1}, Lcom/mob/commons/d;->a(ILjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 161
    :try_start_3
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 163
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/mob/commons/d;->a(ILjava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_2
    move-exception p1

    .line 161
    :try_start_4
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    .line 163
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mob/commons/d;->a(ILjava/lang/Throwable;)V

    .line 164
    :goto_1
    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 123
    aget-object v0, p1, v1

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 126
    aget-object p1, p1, v2

    check-cast p1, Ljava/util/HashMap;

    .line 127
    invoke-direct {p0, v3, v4, p1}, Lcom/mob/commons/c;->b(JLjava/util/HashMap;)V

    .line 128
    invoke-direct {p0}, Lcom/mob/commons/c;->c()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/mob/commons/c;->b:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    invoke-direct {p0}, Lcom/mob/commons/c;->d()Z

    move-result p1

    :cond_2
    :goto_0
    return v1
.end method
