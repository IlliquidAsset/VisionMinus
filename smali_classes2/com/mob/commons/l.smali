.class public Lcom/mob/commons/l;
.super Ljava/lang/Object;
.source "TokenFetcher.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/mob/commons/l;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/mob/tools/utils/DeviceHelper;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/commons/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/openid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/l;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/l;->f:Landroid/content/Context;

    .line 60
    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    const/16 v0, 0x9b

    .line 61
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/l;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/mob/commons/l;
    .locals 2

    .line 65
    sget-object v0, Lcom/mob/commons/l;->c:Lcom/mob/commons/l;

    if-nez v0, :cond_1

    .line 66
    const-class v0, Lcom/mob/commons/l;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/mob/commons/l;->c:Lcom/mob/commons/l;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/mob/commons/l;

    invoke-direct {v1}, Lcom/mob/commons/l;-><init>()V

    sput-object v1, Lcom/mob/commons/l;->c:Lcom/mob/commons/l;

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/commons/l;->c:Lcom/mob/commons/l;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 544
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge p1, v1, :cond_3

    .line 547
    :cond_0
    iget-object p1, p0, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 548
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 549
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Mob/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 552
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 554
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 557
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 559
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    .line 566
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "TokenFetcher"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Get MDID error"

    aput-object v2, v0, v1

    const-string v1, "[%s] %s"

    invoke-virtual {p2, p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "androidId"

    const-string v3, "maaId"

    const-string v4, "mvaId"

    const-string v5, "moId"

    const-string v6, "mdId"

    const-string v7, "duid"

    const-string v8, "deviceId"

    const-string v9, "appInstallTime"

    const-string v10, "firstLaunchTime"

    const-string v11, "appver"

    const-string v12, "pkg"

    const-string v13, "adsid"

    const-string v14, "serialNo"

    const-string v15, "imei"

    const-string v1, "sysver"

    move-object/from16 v16, v2

    const-string v2, "model"

    move-object/from16 v17, v3

    const-string v3, "factory"

    const-string v18, "TokenFetcher"

    move-object/from16 v19, v4

    const-string v4, "[%s] %s"

    const/16 v20, 0x0

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual/range {p1 .. p1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v23, v4

    .line 581
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v24, v5

    .line 582
    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-virtual {v0, v15}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-virtual {v0, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-virtual {v0, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-virtual {v0, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    invoke-virtual {v0, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-virtual {v0, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-virtual {v0, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-virtual {v0, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-virtual {v0, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-virtual {v0, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v24

    .line 595
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v19

    .line 596
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    .line 597
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    .line 598
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "macArray"

    const-string v2, "macArray"

    .line 599
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imeiArray"

    const-string v2, "imeiArray"

    .line 600
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imsiArray"

    const-string v2, "imsiArray"

    .line 601
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "al"

    const-string v2, "al"

    .line 602
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v4}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 607
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "m"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v4, p0

    :try_start_1
    invoke-direct {v4, v1}, Lcom/mob/commons/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 610
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "User-Identity"

    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getUserIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const/16 v3, 0x44

    invoke-static {v3}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/commons/b/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v10, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v10}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v2, 0x7530

    .line 615
    iput v2, v10, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 v2, 0x7530

    .line 616
    iput v2, v10, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 618
    new-instance v5, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 619
    sget-object v6, Lcom/mob/commons/l;->a:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v7, v0

    move-object v9, v1

    invoke-virtual/range {v5 .. v10}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v2

    .line 620
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v18, v6, v22

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/mob/commons/l;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nvaluesEn: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nheaders: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nResponse: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v1, v23

    :try_start_2
    invoke-virtual {v3, v1, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 622
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "200"

    const-string v3, "code"

    .line 623
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data"

    .line 625
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const-string v2, "token"

    .line 627
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 629
    :try_start_3
    sget-object v0, Lcom/mob/commons/l;->c:Lcom/mob/commons/l;

    iput-object v2, v0, Lcom/mob/commons/l;->d:Ljava/lang/String;

    .line 631
    invoke-direct {v4, v2}, Lcom/mob/commons/l;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v20, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v20, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object/from16 v4, p0

    :goto_0
    move-object/from16 v1, v23

    .line 635
    :goto_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v18, v3, v22

    const-string v5, "Fetch token from server error."

    aput-object v5, v3, v21

    invoke-virtual {v2, v0, v1, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_0
    move-object/from16 v4, p0

    :cond_1
    :goto_2
    return-object v20
.end method

.method private a(Ljava/lang/String;[B)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 803
    :try_start_0
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 804
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 805
    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 808
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "TokenFetcher"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Decrypt data error"

    aput-object v2, v0, v1

    const-string v1, "[%s] %s"

    invoke-virtual {p2, p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 810
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    const-string v0, "Close stream error"

    const-string v1, "TokenFetcher"

    const-string v2, "[%s] %s"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 465
    :try_start_0
    iget-object v7, p0, Lcom/mob/commons/l;->f:Landroid/content/Context;

    const-string v8, ".mdid"

    invoke-direct {p0, v7, v8}, Lcom/mob/commons/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 466
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 467
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 468
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 469
    :try_start_1
    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v7

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v6, v7

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 476
    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 477
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 479
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object v0, v5, v3

    invoke-virtual {v6, p1, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 472
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v1, v8, v4

    const-string v9, "Cache mdid error"

    aput-object v9, v8, v3

    invoke-virtual {v7, p1, v2, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v6, :cond_1

    .line 476
    :try_start_4
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 477
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 479
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object v0, v5, v3

    invoke-virtual {v6, p1, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_2
    return-void

    :catchall_2
    move-exception p1

    if-eqz v6, :cond_2

    .line 476
    :try_start_5
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 477
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v6

    .line 479
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object v0, v5, v3

    invoke-virtual {v7, v6, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 480
    :cond_2
    :goto_3
    throw p1
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "generalMd5"

    const-string v3, "pkg"

    const-string v4, "TokenFetcher"

    const-string v5, "[%s] %s"

    .line 150
    :try_start_0
    iget-object v9, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v10, "factory"

    iget-object v11, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v11}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v9, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v10, "model"

    iget-object v11, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v11}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v9, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v10, "sysver"

    iget-object v11, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v11}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v9, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v10, "imei"

    iget-object v11, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v11}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v9, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v10, "serialNo"

    iget-object v11, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v11}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v9, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v10, "adsid"

    iget-object v11, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v11}, Lcom/mob/tools/utils/DeviceHelper;->getAdvertisingID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v9, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    iget-object v10, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v10}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v9, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v10, "appver"

    iget-object v11, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v11}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Lcom/mob/commons/i;->G()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_0

    .line 160
    iget-object v13, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v14, "firstLaunchTime"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v13, v14, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/mob/commons/l;->d()J

    move-result-wide v9

    cmp-long v13, v9, v11

    if-lez v13, :cond_1

    .line 164
    iget-object v11, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v12, "appInstallTime"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_1
    iget-object v9, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v10, "deviceId"

    iget-object v11, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v11}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v9, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v10, "duid"

    invoke-static {}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorizeForOnce()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v9, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v10, "androidId"

    iget-object v11, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v11}, Lcom/mob/tools/utils/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/mob/commons/l;->e()Ljava/lang/String;

    move-result-object v9

    .line 179
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 180
    iget-object v10, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v11, "mdId"

    invoke-virtual {v10, v11, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_2
    new-instance v9, Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 184
    invoke-static {v9}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/mob/commons/l;->h()Ljava/lang/String;

    move-result-object v10

    .line 189
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 190
    iget-object v11, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v12, "moId"

    invoke-virtual {v11, v12, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/mob/commons/l;->i()Ljava/lang/String;

    move-result-object v10

    .line 195
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 196
    iget-object v11, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v12, "mvaId"

    invoke-virtual {v11, v12, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_4
    const-string v10, "maaid"

    if-eqz v0, :cond_5

    .line 201
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 202
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_0

    .line 204
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/mob/commons/l;->j()Ljava/lang/String;

    move-result-object v11

    .line 206
    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 207
    iget-object v12, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const-string v13, "maaId"

    invoke-virtual {v12, v13, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_6
    iget-object v12, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v12}, Lcom/mob/tools/utils/DeviceHelper;->listNetworkHardware()Ljava/util/HashMap;

    move-result-object v12

    .line 211
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v14, "mac"

    const-string v15, "macArray"

    if-eqz v12, :cond_8

    .line 212
    :try_start_2
    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_8

    .line 214
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 215
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v6, "ss"

    .line 216
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    :cond_7
    iget-object v6, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    invoke-virtual {v6, v15, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_8
    iget-object v6, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v6}, Lcom/mob/tools/utils/DeviceHelper;->queryIMEI()[Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v7, "imeiArray"

    if-eqz v6, :cond_9

    .line 223
    :try_start_3
    array-length v8, v6

    if-lez v8, :cond_9

    .line 224
    iget-object v8, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    invoke-virtual {v8, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_9
    iget-object v8, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v8}, Lcom/mob/tools/utils/DeviceHelper;->queryIMSI()[Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v12, "imsiArray"

    if-eqz v8, :cond_a

    move-object/from16 v16, v3

    .line 227
    :try_start_4
    array-length v3, v8

    if-lez v3, :cond_b

    .line 228
    iget-object v3, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    invoke-virtual {v3, v12, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    move-object/from16 v16, v3

    .line 230
    :cond_b
    :goto_2
    iget-object v3, v1, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    move-object/from16 v17, v14

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/mob/tools/utils/DeviceHelper;->getIA(Z)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v14, "al"

    if-eqz v3, :cond_c

    .line 231
    :try_start_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v18, :cond_c

    move-object/from16 v18, v5

    .line 232
    :try_start_6
    iget-object v5, v1, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    invoke-virtual {v5, v14, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    move-object/from16 v18, v5

    .line 245
    :goto_3
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 246
    invoke-virtual {v5, v2, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v5, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {v5, v15, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v5, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {v5, v12, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v5, v14, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-direct {v1, v5}, Lcom/mob/commons/l;->b(Ljava/util/TreeMap;)V

    if-eqz v0, :cond_2a

    .line 256
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 258
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 260
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v3, v2

    const-string v2, "generalMd5 changed"

    const/4 v5, 0x1

    aput-object v2, v3, v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v2, v18

    :try_start_7
    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v5

    :cond_d
    move-object/from16 v2, v18

    .line 264
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 265
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v9, :cond_16

    const-string v9, "macArray changed"

    if-eqz v5, :cond_15

    .line 266
    :try_start_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    goto/16 :goto_7

    .line 270
    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eq v10, v11, :cond_f

    .line 271
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v9, v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 274
    :cond_f
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    if-eqz v13, :cond_10

    .line 276
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    move-object/from16 v15, v17

    .line 277
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    move-object/from16 v15, v17

    :goto_5
    move-object/from16 v17, v15

    goto :goto_4

    :cond_11
    move-object/from16 v15, v17

    .line 280
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    if-eqz v13, :cond_12

    .line 282
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_12

    .line 283
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 286
    :cond_13
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 287
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 288
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v9, v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 267
    :cond_15
    :goto_7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v9, v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 294
    :cond_16
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_1b

    .line 295
    array-length v7, v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-lez v7, :cond_1b

    const-string v7, "imeiArray changed"

    if-eqz v5, :cond_1a

    .line 296
    :try_start_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_17

    goto :goto_9

    .line 300
    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    array-length v10, v6

    if-eq v9, v10, :cond_18

    .line 301
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 304
    :cond_18
    array-length v9, v6

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v9, :cond_1b

    aget-object v11, v6, v10

    .line 305
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    .line 306
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    :cond_19
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 297
    :cond_1a
    :goto_9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 312
    :cond_1b
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v8, :cond_20

    .line 313
    array-length v6, v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-lez v6, :cond_20

    const-string v6, "imsiArray changed"

    if-eqz v5, :cond_1f

    .line 314
    :try_start_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_b

    .line 318
    :cond_1c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v9, v8

    if-eq v7, v9, :cond_1d

    .line 319
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 322
    :cond_1d
    array-length v7, v8

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v7, :cond_20

    aget-object v10, v8, v9

    .line 323
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    .line 324
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    :cond_1e
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 315
    :cond_1f
    :goto_b
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 330
    :cond_20
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v3, :cond_29

    .line 331
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v5, :cond_29

    const-string v5, "al changed"

    if-eqz v0, :cond_28

    .line 332
    :try_start_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_21

    goto/16 :goto_f

    .line 336
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v6, v7, :cond_22

    .line 337
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v5, v6, v3

    invoke-virtual {v0, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 340
    :cond_22
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 341
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    if-eqz v7, :cond_23

    .line 342
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_23

    move-object/from16 v8, v16

    .line 343
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    move-object/from16 v8, v16

    :goto_d
    move-object/from16 v16, v8

    goto :goto_c

    :cond_24
    move-object/from16 v8, v16

    .line 346
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    if-eqz v7, :cond_25

    .line 348
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_25

    .line 349
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 352
    :cond_26
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 353
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 354
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v5, v6, v3

    invoke-virtual {v0, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 333
    :cond_28
    :goto_f
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v5, v6, v3

    invoke-virtual {v0, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 359
    :cond_29
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const-string v6, "No changes"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    :cond_2a
    move-object/from16 v2, v18

    .line 363
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const-string v3, "No openids cache, treat as changed"

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v0, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return v6

    :catchall_0
    move-exception v0

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v2, v5

    .line 367
    :goto_10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-string v4, "Fetch token from server error."

    const/4 v7, 0x1

    aput-object v4, v5, v7

    invoke-virtual {v3, v0, v2, v5}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    return v6
.end method

.method private a(Ljava/lang/String;Ljava/util/TreeMap;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 792
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 793
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 794
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 796
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "TokenFetcher"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Encypt data error"

    aput-object v2, v0, v1

    const-string v1, "[%s] %s"

    invoke-virtual {p2, p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 643
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 644
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 645
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 646
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 647
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 648
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 649
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 650
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 653
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 654
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 655
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "utf-8"

    .line 656
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 657
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 658
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 659
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 662
    invoke-static {v0, p1}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object p1

    .line 665
    new-instance v1, Lcom/mob/tools/utils/MobRSA;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Lcom/mob/tools/utils/MobRSA;-><init>(I)V

    .line 666
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 668
    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd"

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 672
    invoke-virtual {v1, v0, v2, v3}, Lcom/mob/tools/utils/MobRSA;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 675
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 676
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 677
    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 678
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 679
    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 680
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 681
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 682
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 683
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/util/TreeMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Close stream error"

    const-string v1, "TokenFetcher"

    const-string v2, "[%s] %s"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 739
    :try_start_0
    iget-object v7, p0, Lcom/mob/commons/l;->f:Landroid/content/Context;

    const-string v8, ".opdn"

    invoke-static {v7, v8}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 740
    sget-object v8, Lcom/mob/commons/l;->b:Ljava/lang/String;

    invoke-direct {p0, v8, p1}, Lcom/mob/commons/l;->a(Ljava/lang/String;Ljava/util/TreeMap;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 741
    array-length v8, p1

    if-lez v8, :cond_0

    .line 742
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 743
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 744
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 745
    invoke-virtual {v6, v5}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    .line 752
    :try_start_1
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 754
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v0, v4, v5

    invoke-virtual {v6, p1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 748
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v3

    const-string v9, "Write openid cache error"

    aput-object v9, v8, v5

    invoke-virtual {v7, p1, v2, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_1

    .line 752
    :try_start_3
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 754
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v0, v4, v5

    invoke-virtual {v6, p1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    if-eqz v6, :cond_2

    .line 752
    :try_start_4
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v6

    .line 754
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v0, v4, v5

    invoke-virtual {v7, v6, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 755
    :cond_2
    :goto_1
    throw p1
.end method

.method private c()Ljava/lang/String;
    .locals 12

    const-string v0, "TokenFetcher"

    const-string v1, "[%s] %s"

    .line 109
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/l;->k()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-direct {p0}, Lcom/mob/commons/l;->l()Ljava/util/HashMap;

    move-result-object v7

    .line 117
    invoke-direct {p0, v7}, Lcom/mob/commons/l;->a(Ljava/util/HashMap;)Z

    move-result v7

    .line 118
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cachedToken: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 120
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 121
    iget-object v6, p0, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    invoke-direct {p0, v6}, Lcom/mob/commons/l;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isChanged: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez v7, :cond_1

    move-object v5, v6

    goto :goto_0

    .line 130
    :cond_1
    iget-object v6, p0, Lcom/mob/commons/l;->g:Ljava/util/TreeMap;

    invoke-direct {p0, v6}, Lcom/mob/commons/l;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v5

    .line 134
    :goto_0
    sget-object v6, Lcom/mob/commons/l;->c:Lcom/mob/commons/l;

    iput-object v5, v6, Lcom/mob/commons/l;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    .line 136
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v0, "Sync token from cache & net error"

    aput-object v0, v4, v2

    invoke-virtual {v7, v6, v1, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-object v5
.end method

.method private c(Ljava/lang/String;)V
    .locals 10

    const-string v0, "Close stream error"

    .line 687
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TokenFetcher"

    aput-object v5, v3, v4

    const-string v6, "Write token cache"

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const-string v6, "[%s] %s"

    invoke-virtual {v1, v6, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    .line 691
    :try_start_0
    iget-object v3, p0, Lcom/mob/commons/l;->f:Landroid/content/Context;

    const-string v8, ".optn"

    invoke-static {v3, v8}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 694
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 695
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 696
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 703
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 704
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 706
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v4

    aput-object v0, v2, v7

    invoke-virtual {v1, p1, v6, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 699
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v5, v8, v4

    const-string v9, "Cache token error"

    aput-object v9, v8, v7

    invoke-virtual {v3, p1, v6, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_1

    .line 703
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 704
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 706
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v4

    aput-object v0, v2, v7

    invoke-virtual {v1, p1, v6, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_2
    return-void

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_2

    .line 703
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 704
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 706
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v4

    aput-object v0, v2, v7

    invoke-virtual {v3, v1, v6, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 707
    :cond_2
    :goto_3
    throw p1
.end method

.method private d()J
    .locals 5

    const/4 v0, 0x0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/l;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v2, p0, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 379
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 380
    iget-wide v0, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v1

    .line 385
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "TokenFetcher"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const-string v4, "Get ins time error"

    aput-object v4, v3, v0

    const-string v0, "[%s] %s"

    invoke-virtual {v2, v1, v0, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .line 396
    invoke-direct {p0}, Lcom/mob/commons/l;->f()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/mob/commons/l;->g()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    invoke-direct {p0, v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 13

    const-string v0, "Close stream error"

    const-string v1, "TokenFetcher"

    const-string v2, "[%s] %s"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 419
    :try_start_0
    iget-object v7, p0, Lcom/mob/commons/l;->f:Landroid/content/Context;

    const-string v8, ".mdid"

    invoke-direct {p0, v7, v8}, Lcom/mob/commons/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 420
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 421
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 422
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 423
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v7

    move-object v7, v3

    move-object v3, v12

    goto :goto_0

    :catchall_0
    move-exception v8

    goto :goto_2

    :cond_0
    move-object v7, v3

    :goto_0
    if-eqz v3, :cond_1

    .line 430
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 432
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v8, v3, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_1
    move-object v3, v7

    goto :goto_3

    :catchall_1
    move-exception v8

    move-object v7, v3

    .line 426
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v1, v10, v5

    const-string v11, "Read mdid cache error"

    aput-object v11, v10, v4

    invoke-virtual {v9, v8, v2, v10}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_2

    .line 430
    :try_start_4
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    .line 432
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v8, v7, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_3
    return-object v3

    :catchall_2
    move-exception v3

    if-eqz v7, :cond_3

    .line 430
    :try_start_5
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v7

    .line 432
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v8, v7, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 433
    :cond_3
    :goto_4
    throw v3
.end method

.method private g()Ljava/lang/String;
    .locals 5

    .line 448
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .line 450
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 452
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TokenFetcher"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Generate mdid error"

    aput-object v4, v2, v3

    const-string v3, "[%s] %s"

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/mob/commons/l;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/b/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 5

    .line 513
    :try_start_0
    invoke-static {}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorizeForOnce()Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getSignMD5()Ljava/lang/String;

    move-result-object v1

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .line 516
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 518
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TokenFetcher"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Generate mvaid error"

    aput-object v4, v2, v3

    const-string v3, "[%s] %s"

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 5

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/l;->e:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .line 534
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 536
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TokenFetcher"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Generate mvaid error"

    aput-object v4, v2, v3

    const-string v3, "[%s] %s"

    invoke-virtual {v1, v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 13

    const-string v0, "Close stream error"

    const-string v1, "TokenFetcher"

    const-string v2, "[%s] %s"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 716
    :try_start_0
    iget-object v7, p0, Lcom/mob/commons/l;->f:Landroid/content/Context;

    const-string v8, ".optn"

    invoke-static {v7, v8}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 717
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 718
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 719
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 720
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v7

    move-object v7, v3

    move-object v3, v12

    goto :goto_0

    :catchall_0
    move-exception v8

    goto :goto_2

    :cond_0
    move-object v7, v3

    :goto_0
    if-eqz v3, :cond_1

    .line 727
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 729
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v8, v3, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_1
    move-object v3, v7

    goto :goto_3

    :catchall_1
    move-exception v8

    move-object v7, v3

    .line 723
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v1, v10, v5

    const-string v11, "Read token cache error"

    aput-object v11, v10, v4

    invoke-virtual {v9, v8, v2, v10}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_2

    .line 727
    :try_start_4
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    .line 729
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v8, v7, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_3
    return-object v3

    :catchall_2
    move-exception v3

    if-eqz v7, :cond_3

    .line 727
    :try_start_5
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v7

    .line 729
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v8, v7, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 730
    :cond_3
    :goto_4
    throw v3
.end method

.method private l()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "Close stream error"

    const-string v1, "TokenFetcher"

    const-string v2, "[%s] %s"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 764
    :try_start_0
    iget-object v7, p0, Lcom/mob/commons/l;->f:Landroid/content/Context;

    const-string v8, ".opdn"

    invoke-static {v7, v8}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 765
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 766
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 767
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 768
    :try_start_1
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 769
    :goto_0
    invoke-virtual {v7, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v9

    if-lez v9, :cond_0

    goto :goto_0

    .line 773
    :cond_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 774
    sget-object v9, Lcom/mob/commons/l;->b:Ljava/lang/String;

    invoke-direct {p0, v9, v8}, Lcom/mob/commons/l;->a(Ljava/lang/String;[B)Ljava/util/HashMap;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v7

    move-object v7, v3

    move-object v3, v12

    goto :goto_1

    :catchall_0
    move-exception v8

    goto :goto_3

    :cond_1
    move-object v7, v3

    :goto_1
    if-eqz v3, :cond_2

    .line 781
    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 783
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v8, v3, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_2
    move-object v3, v7

    goto :goto_4

    :catchall_1
    move-exception v8

    move-object v7, v3

    .line 777
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v1, v10, v5

    const-string v11, "Read openid cache error"

    aput-object v11, v10, v4

    invoke-virtual {v9, v8, v2, v10}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_3

    .line 781
    :try_start_4
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v7

    .line 783
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v8, v7, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_3
    :goto_4
    return-object v3

    :catchall_2
    move-exception v3

    if-eqz v7, :cond_4

    .line 781
    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v7

    .line 783
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v8, v7, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 784
    :cond_4
    :goto_5
    throw v3
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 6

    .line 88
    invoke-static {}, Lcom/mob/commons/b;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TokenFetcher"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mem token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mob/commons/l;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 93
    iget-object v0, p0, Lcom/mob/commons/l;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const-class v0, Lcom/mob/commons/l;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/l;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/mob/commons/l;->c()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 98
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 100
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mob/commons/l;->d:Ljava/lang/String;

    return-object v0
.end method
