.class public Lcom/umeng/analytics/b;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lcom/umeng/analytics/pro/m;
.implements Lcom/umeng/analytics/pro/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/b$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "umsp_2"

.field private static final B:Ljava/lang/String; = "umsp_3"

.field private static final C:Ljava/lang/String; = "umsp_4"

.field private static final D:Ljava/lang/String; = "umsp_5"

.field private static a:Landroid/content/Context; = null

.field private static final h:Ljava/lang/String; = "sp_uapp"

.field private static final i:Ljava/lang/String; = "prepp_uapp"

.field private static final o:I = 0x80

.field private static final p:I = 0x100

.field private static q:Ljava/lang/String; = ""

.field private static r:Ljava/lang/String; = ""

.field private static final s:Ljava/lang/String; = "ekv_bl"

.field private static final t:Ljava/lang/String; = "ekv_bl_ver"

.field private static final v:Ljava/lang/String; = "ekv_wl"

.field private static final w:Ljava/lang/String; = "ekv_wl_ver"

.field private static final z:Ljava/lang/String; = "umsp_1"


# instance fields
.field private b:Lcom/umeng/common/ISysListener;

.field private c:Lcom/umeng/analytics/pro/o;

.field private d:Lcom/umeng/analytics/pro/u;

.field private e:Lcom/umeng/analytics/pro/j;

.field private f:Lcom/umeng/analytics/pro/t;

.field private g:Lcom/umeng/analytics/pro/k;

.field private j:Z

.field private volatile k:Lorg/json/JSONObject;

.field private volatile l:Lorg/json/JSONObject;

.field private volatile m:Lorg/json/JSONObject;

.field private n:Z

.field private u:Lcom/umeng/analytics/filter/a;

.field private x:Lcom/umeng/analytics/filter/b;

.field private y:Lcom/umeng/analytics/pro/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/umeng/analytics/pro/o;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/o;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/pro/o;

    .line 78
    new-instance v0, Lcom/umeng/analytics/pro/u;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/u;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/u;

    .line 79
    new-instance v0, Lcom/umeng/analytics/pro/j;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/j;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/j;

    .line 80
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/t;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/pro/k;

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->j:Z

    .line 85
    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 86
    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    .line 87
    iput-object v0, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    .line 88
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    .line 99
    iput-object v0, p0, Lcom/umeng/analytics/b;->u:Lcom/umeng/analytics/filter/a;

    .line 105
    iput-object v0, p0, Lcom/umeng/analytics/b;->x:Lcom/umeng/analytics/filter/b;

    .line 108
    iput-object v0, p0, Lcom/umeng/analytics/b;->y:Lcom/umeng/analytics/pro/l;

    .line 119
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/pro/o;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/s;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/b$1;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/umeng/analytics/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/b;
    .locals 1

    .line 127
    invoke-static {}, Lcom/umeng/analytics/b$a;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "context is null in onEventNoCheck, please check!"

    .line 823
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 827
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 828
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 831
    :cond_1
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_3

    .line 832
    :cond_2
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 835
    :cond_3
    invoke-direct {p0, p2}, Lcom/umeng/analytics/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "MobclickRT"

    .line 836
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "--->>> filter ekv ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, ""

    .line 841
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    .line 842
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    goto :goto_0

    .line 844
    :cond_5
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v5, p1

    .line 846
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/r;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 848
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 849
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 1319
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 1320
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 1325
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1326
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1328
    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    .line 1329
    array-length v0, p2

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    return-void

    .line 1332
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1333
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 1334
    aget-object v2, p2, v1

    if-eqz v2, :cond_2

    aget-object v2, p2, v1

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->checkStrLen(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1335
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1338
    :cond_3
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 1339
    :cond_4
    instance-of v0, p2, [J

    if-eqz v0, :cond_6

    .line 1340
    check-cast p2, [J

    check-cast p2, [J

    .line 1341
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1342
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 1343
    aget-wide v2, p2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1345
    :cond_5
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 1346
    :cond_6
    instance-of v0, p2, [I

    if-eqz v0, :cond_8

    .line 1347
    check-cast p2, [I

    check-cast p2, [I

    .line 1348
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1349
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_7

    .line 1350
    aget v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1352
    :cond_7
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 1353
    :cond_8
    instance-of v0, p2, [F

    if-eqz v0, :cond_a

    .line 1354
    check-cast p2, [F

    check-cast p2, [F

    .line 1355
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1356
    :goto_3
    array-length v2, p2

    if-ge v1, v2, :cond_9

    .line 1357
    aget v2, p2, v1

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1359
    :cond_9
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 1360
    :cond_a
    instance-of v0, p2, [D

    if-eqz v0, :cond_c

    .line 1361
    check-cast p2, [D

    check-cast p2, [D

    .line 1362
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1363
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_b

    .line 1364
    aget-wide v2, p2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1366
    :cond_b
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 1367
    :cond_c
    instance-of v0, p2, [S

    if-eqz v0, :cond_14

    .line 1368
    check-cast p2, [S

    check-cast p2, [S

    .line 1369
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1370
    :goto_5
    array-length v2, p2

    if-ge v1, v2, :cond_d

    .line 1371
    aget-short v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1373
    :cond_d
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 1378
    :cond_e
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_12

    .line 1379
    check-cast p2, Ljava/util/List;

    .line 1380
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1382
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 1383
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1384
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_f

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_f

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_f

    instance-of v3, v2, Ljava/lang/Float;

    if-nez v3, :cond_f

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_f

    instance-of v2, v2, Ljava/lang/Short;

    if-eqz v2, :cond_10

    .line 1391
    :cond_f
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1394
    :cond_11
    iget-object p2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 1395
    :cond_12
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_13

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_13

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_13

    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_13

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_13

    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_14

    .line 1402
    :cond_13
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_14
    :goto_7
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    .line 1930
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ", please check key, illegal"

    if-eqz v2, :cond_0

    .line 1931
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1936
    :cond_0
    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-le p1, v2, :cond_1

    .line 1940
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key length is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return v1

    .line 1948
    :cond_1
    instance-of p1, p2, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 1949
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    const/16 v3, 0x100

    if-le p1, v3, :cond_2

    .line 1950
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value length is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", please check value, illegal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return v1

    :cond_2
    return v2

    .line 1955
    :cond_3
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    return v2

    .line 1957
    :cond_4
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_5

    return v2

    .line 1959
    :cond_5
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_6

    return v2

    .line 1961
    :cond_6
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_7

    return v2

    .line 1964
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "value is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", please check value, type illegal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    return v1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    .line 722
    iget-object v0, p0, Lcom/umeng/analytics/b;->u:Lcom/umeng/analytics/filter/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/filter/a;->enabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/umeng/analytics/b;->u:Lcom/umeng/analytics/filter/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/filter/a;->matchHit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Lcom/umeng/analytics/filter/b;

    invoke-virtual {v0}, Lcom/umeng/analytics/filter/b;->enabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Lcom/umeng/analytics/filter/b;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/filter/b;->matchHit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> white list match! id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobclickRT"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method private i(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "unexpected null context in getNativeSuperProperties"

    .line 215
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 218
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 221
    :cond_1
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    .line 227
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    :cond_3
    const-string v0, "prepp_uapp"

    const/4 v1, 0x0

    .line 229
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 232
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :catch_0
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    if-nez p1, :cond_5

    .line 236
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method


# virtual methods
.method a(DD)V
    .locals 2

    .line 1056
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1059
    :cond_0
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "setLocation can not be called in child process"

    .line 1060
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 1063
    :cond_1
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 1064
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    .line 1067
    :cond_2
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 1068
    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 p2, 0x1

    aput-wide p3, p1, p2

    return-void
.end method

.method a(J)V
    .locals 2

    .line 1136
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1140
    :cond_0
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "setSessionContinueMillis can not be called in child process"

    .line 1141
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 1144
    :cond_1
    sput-wide p1, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 1145
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object p1

    sget-wide v0, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/x;->a(J)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 137
    :cond_0
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->u:Lcom/umeng/analytics/filter/a;

    if-nez v0, :cond_2

    .line 143
    new-instance v0, Lcom/umeng/analytics/filter/a;

    const-string v1, "ekv_bl"

    const-string v2, "ekv_bl_ver"

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/filter/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/b;->u:Lcom/umeng/analytics/filter/a;

    .line 144
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/filter/a;->register(Landroid/content/Context;)V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->x:Lcom/umeng/analytics/filter/b;

    if-nez v0, :cond_3

    .line 150
    new-instance v0, Lcom/umeng/analytics/filter/b;

    const-string v1, "ekv_wl"

    const-string v2, "ekv_wl_ver"

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/filter/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/b;->x:Lcom/umeng/analytics/filter/b;

    .line 151
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/filter/b;->register(Landroid/content/Context;)V

    .line 156
    :cond_3
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 161
    :cond_4
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 162
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->j:Z

    .line 166
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    .line 169
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v0, v2, :cond_8

    .line 170
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 171
    :try_start_1
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_7

    .line 172
    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/pro/k;

    .line 173
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/k;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 174
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    .line 178
    :cond_6
    invoke-static {}, Lcom/umeng/analytics/pro/l;->a()Lcom/umeng/analytics/pro/l;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->y:Lcom/umeng/analytics/pro/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    :try_start_2
    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->a(Landroid/content/Context;)V

    .line 181
    iget-object p1, p0, Lcom/umeng/analytics/b;->y:Lcom/umeng/analytics/pro/l;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/l;->a(Lcom/umeng/analytics/pro/m;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :catchall_0
    :cond_7
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    .line 192
    :cond_8
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    .line 195
    :goto_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "\u7edf\u8ba1SDK\u5e38\u89c1\u95ee\u9898\u7d22\u5f15\u8d34 \u8be6\u89c1\u94fe\u63a5 http://developer.umeng.com/docs/66650/cate/66650"

    const/4 v0, 0x3

    const-string v1, ""

    const/4 v2, 0x0

    .line 197
    invoke-static {p1, v0, v1, v2, v2}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 200
    :cond_9
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->registerConnStateObserver(Lcom/umeng/commonsdk/framework/UMSenderStateNotify;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "unexpected null context in setVerticalType"

    .line 299
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 303
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 307
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "setVerticalType can not be called in child process"

    .line 308
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 312
    :cond_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 313
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 315
    :cond_4
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/umeng/analytics/UMLinkListener;)V
    .locals 15

    move-object/from16 v1, p2

    const-string v0, "url="

    const-string v2, "wakeup"

    const-string v3, ""

    if-eqz v1, :cond_a

    .line 2001
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 2002
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 2003
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 2004
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v6

    .line 2008
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2011
    :try_start_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 2012
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v8, v0, 0x4

    .line 2013
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "url"

    .line 2014
    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2018
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "&"

    .line 2019
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2020
    array-length v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v2

    move-object v8, v3

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_6

    :try_start_1
    aget-object v12, v0, v10

    const-string v13, "="

    .line 2021
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_4

    .line 2023
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_4

    .line 2024
    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    .line 2025
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "_sdk_"

    .line 2026
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v3, v12

    goto :goto_1

    :cond_1
    const-string v13, "_linkid_"

    .line 2029
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v8, v12

    goto :goto_1

    :cond_2
    const-string v13, "_scene_"

    .line 2032
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v11, v12

    .line 2035
    :cond_3
    :goto_1
    invoke-virtual {v7, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v11, v2

    move-object v8, v3

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v11, v2

    move-object v8, v3

    .line 2040
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    const-string v0, "umeng.com"

    .line 2042
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    if-eqz v3, :cond_a

    const-string v0, "umeng"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2043
    :cond_8
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object v2, p0

    if-eqz v0, :cond_9

    move-object/from16 v3, p1

    .line 2044
    invoke-virtual {p0, v3, v8, v1, v11}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v1, p3

    .line 2046
    invoke-interface {v1, v5, v7}, Lcom/umeng/analytics/UMLinkListener;->onLink(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_4

    :cond_a
    move-object v2, p0

    :goto_4
    return-void
.end method

.method a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "unexpected null context in setScenarioType"

    .line 1079
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 1083
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1084
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1089
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "setScenarioType can not be called in child process"

    .line 1090
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 1094
    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result p1

    .line 1095
    sget-object p2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    .line 1097
    :cond_3
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_5

    .line 1098
    :cond_4
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    :cond_5
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/umeng/analytics/UMLinkListener;)V
    .locals 7

    const-string v0, "data"

    .line 2060
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "umlink_install_cache"

    const/4 v3, 0x0

    .line 2061
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2063
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2064
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, ""

    .line 2065
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2067
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2073
    :cond_0
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "linkId"

    .line 2074
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2075
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const-string v1, "installParams"

    .line 2079
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2080
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 2081
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2082
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2083
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "wakeupUrl"

    .line 2086
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2087
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&_scene_=install"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2091
    :cond_2
    :goto_1
    invoke-interface {p2, v2, v3}, Lcom/umeng/analytics/UMLinkListener;->onInstall(Ljava/util/HashMap;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2099
    :catch_0
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/analytics/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/umeng/analytics/b$1;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;Lcom/umeng/analytics/UMLinkListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/umeng/analytics/pro/aj;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "\\|"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 473
    sget-object p1, Lcom/umeng/analytics/pro/i;->w:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 476
    :cond_0
    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 477
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 481
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "reportError can not be called in child process"

    .line 482
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 486
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 487
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 488
    sget-object p1, Lcom/umeng/analytics/pro/i;->x:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    return-void

    .line 493
    :cond_4
    :try_start_0
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_6

    .line 494
    :cond_5
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 496
    :cond_6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ts"

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "error_source"

    const/4 v1, 0x2

    .line 498
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "context"

    .line 499
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "__ii"

    .line 500
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/t;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    sget-object p2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x100a

    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 503
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    .line 501
    invoke-static {p2, v0, v1, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 505
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_7

    .line 506
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 12

    move-object v8, p0

    const-string v0, "url="

    const-string v1, ""

    const-string v2, "\\|"

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "MobclickAgent.onDeepLinkReceived\u65b9\u6cd5Context\u53c2\u6570\u4e0d\u80fd\u4e3anull\u3002|\u53c2\u6570Context\u9700\u8981\u6307\u5b9aApplicationContext\u503c\u3002"

    .line 647
    invoke-static {v0, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 651
    :cond_0
    sget-object v4, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 652
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 661
    :cond_1
    iget-boolean v4, v8, Lcom/umeng/analytics/b;->j:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v8, Lcom/umeng/analytics/b;->n:Z

    if-nez v4, :cond_3

    .line 662
    :cond_2
    sget-object v4, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 665
    :cond_3
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 668
    invoke-virtual {p3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 672
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 673
    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 676
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "&"

    .line 677
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 678
    array-length v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_8

    :try_start_2
    aget-object v9, v0, v7

    const-string v10, "="

    .line 679
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_6

    .line 680
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_6

    .line 681
    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    .line 682
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "um_from_appkey"

    .line 683
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v1, v9

    goto :goto_1

    :cond_5
    const-string v10, "_bizType_"

    .line 686
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_6

    move-object v6, v9

    :cond_6
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_7
    move-object v6, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v1

    .line 693
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 696
    :cond_8
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 697
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "_$!link_id"

    move-object v3, p2

    .line 698
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "_$!url"

    .line 699
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "_$!scene"

    move-object/from16 v3, p4

    .line 700
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "_$!appkey"

    .line 701
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_$!bizType"

    .line 702
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const-string v3, "$$_um_link"

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JZ)V

    goto :goto_4

    :cond_9
    const-string v0, "MobclickAgent.onDeepLinkReceived\u65b9\u6cd5link\u53c2\u6570\u4e0d\u80fd\u4e3anull\uff0c\u4e5f\u4e0d\u80fd\u4e3a\u7a7a\u5b57\u7b26\u4e32\u3002|\u53c2\u6570link\u5fc5\u987b\u4e3a\u975e\u7a7a\u5b57\u7b26\u4e32\u3002"

    .line 705
    invoke-static {v0, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 709
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 710
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1169
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/i;->af:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1170
    monitor-exit p0

    return-void

    .line 1172
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1173
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1176
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "registerSuperProperty can not be called in child process"

    .line 1177
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1178
    monitor-exit p0

    return-void

    .line 1180
    :cond_2
    :try_start_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 1181
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1183
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    if-nez p3, :cond_5

    goto/16 :goto_9

    :cond_5
    const-string p1, "umsp_1"

    .line 1188
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "umsp_2"

    .line 1189
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "umsp_3"

    .line 1190
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "umsp_4"

    .line 1191
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "umsp_5"

    .line 1192
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "property name is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", please check key, must be correct!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1194
    monitor-exit p0

    return-void

    .line 1198
    :cond_6
    :try_start_3
    instance-of p1, p3, Ljava/lang/String;

    const/16 v1, 0x100

    if-eqz p1, :cond_7

    .line 1199
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->checkStrLen(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "property value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", please check value, lawless!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1201
    monitor-exit p0

    return-void

    .line 1206
    :cond_7
    :try_start_4
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez p1, :cond_8

    .line 1207
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 1212
    :cond_8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1213
    instance-of p1, p3, [Ljava/lang/String;

    const/16 v2, 0xa

    if-eqz p1, :cond_d

    .line 1214
    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    .line 1215
    array-length p1, p3

    if-le p1, v2, :cond_9

    .line 1216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1217
    monitor-exit p0

    return-void

    .line 1219
    :cond_9
    :try_start_5
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1220
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_c

    .line 1221
    aget-object v2, p3, v0

    if-eqz v2, :cond_b

    aget-object v2, p3, v0

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->checkStrLen(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    .line 1225
    :cond_a
    aget-object v2, p3, v0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1222
    :cond_b
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, length is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overlength 256!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1223
    monitor-exit p0

    return-void

    .line 1228
    :cond_c
    :try_start_6
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 1229
    :cond_d
    instance-of p1, p3, [J

    if-eqz p1, :cond_10

    .line 1230
    check-cast p3, [J

    check-cast p3, [J

    .line 1231
    array-length p1, p3

    if-le p1, v2, :cond_e

    .line 1232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1233
    monitor-exit p0

    return-void

    .line 1235
    :cond_e
    :try_start_7
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1236
    :goto_2
    array-length v1, p3

    if-ge v0, v1, :cond_f

    .line 1237
    aget-wide v1, p3, v0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1239
    :cond_f
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 1240
    :cond_10
    instance-of p1, p3, [I

    if-eqz p1, :cond_13

    .line 1241
    check-cast p3, [I

    check-cast p3, [I

    .line 1242
    array-length p1, p3

    if-le p1, v2, :cond_11

    .line 1243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1244
    monitor-exit p0

    return-void

    .line 1246
    :cond_11
    :try_start_8
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1247
    :goto_3
    array-length v1, p3

    if-ge v0, v1, :cond_12

    .line 1248
    aget v1, p3, v0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1250
    :cond_12
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 1251
    :cond_13
    instance-of p1, p3, [F

    if-eqz p1, :cond_16

    .line 1252
    check-cast p3, [F

    check-cast p3, [F

    .line 1253
    array-length p1, p3

    if-le p1, v2, :cond_14

    .line 1254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1255
    monitor-exit p0

    return-void

    .line 1257
    :cond_14
    :try_start_9
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1258
    :goto_4
    array-length v1, p3

    if-ge v0, v1, :cond_15

    .line 1259
    aget v1, p3, v0

    float-to-double v1, v1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1261
    :cond_15
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 1262
    :cond_16
    instance-of p1, p3, [D

    if-eqz p1, :cond_19

    .line 1263
    check-cast p3, [D

    check-cast p3, [D

    .line 1264
    array-length p1, p3

    if-le p1, v2, :cond_17

    .line 1265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1266
    monitor-exit p0

    return-void

    .line 1268
    :cond_17
    :try_start_a
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1269
    :goto_5
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1270
    aget-wide v1, p3, v0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1272
    :cond_18
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    .line 1273
    :cond_19
    instance-of p1, p3, [S

    if-eqz p1, :cond_1c

    .line 1274
    check-cast p3, [S

    check-cast p3, [S

    .line 1275
    array-length p1, p3

    if-le p1, v2, :cond_1a

    .line 1276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "please check value, size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", overstep 10!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1277
    monitor-exit p0

    return-void

    .line 1279
    :cond_1a
    :try_start_b
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1280
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_1b

    .line 1281
    aget-short v1, p3, v0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1283
    :cond_1b
    iget-object p3, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    :cond_1c
    const-string p1, "please check value, illegal type!"

    .line 1285
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1286
    monitor-exit p0

    return-void

    .line 1288
    :cond_1d
    :try_start_c
    instance-of p1, p3, Ljava/lang/String;

    if-nez p1, :cond_1f

    instance-of p1, p3, Ljava/lang/Long;

    if-nez p1, :cond_1f

    instance-of p1, p3, Ljava/lang/Integer;

    if-nez p1, :cond_1f

    instance-of p1, p3, Ljava/lang/Float;

    if-nez p1, :cond_1f

    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_1f

    instance-of p1, p3, Ljava/lang/Short;

    if-eqz p1, :cond_1e

    goto :goto_7

    :cond_1e
    const-string p1, "please check value, illegal type!"

    .line 1297
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1298
    monitor-exit p0

    return-void

    .line 1295
    :cond_1f
    :goto_7
    :try_start_d
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1306
    :catchall_0
    :goto_8
    :try_start_e
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x2003

    sget-object p3, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1308
    invoke-static {p3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    invoke-static {p1, p2, p3, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_a

    .line 1184
    :cond_20
    :goto_9
    sget-object p1, Lcom/umeng/analytics/pro/i;->ag:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1185
    monitor-exit p0

    return-void

    .line 1315
    :catchall_1
    :goto_a
    monitor-exit p0

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 751
    :cond_0
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 752
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 755
    :cond_1
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_3

    .line 756
    :cond_2
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 759
    :cond_3
    invoke-direct {p0, p2}, Lcom/umeng/analytics/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "MobclickRT"

    .line 760
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "--->>> filter ekv ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, ""

    .line 765
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    .line 766
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    goto :goto_0

    .line 768
    :cond_5
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v6, p1

    .line 771
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/r;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 773
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 774
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 441
    :cond_0
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 442
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 446
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onGKVEvent can not be called in child process"

    .line 447
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 450
    :cond_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 451
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    :cond_4
    const-string p1, ""

    .line 456
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    .line 457
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    goto :goto_0

    .line 459
    :cond_5
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 462
    :goto_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/r;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 464
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 465
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 817
    invoke-direct/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JZ)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 782
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "\\|"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 783
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/pro/c;->aF:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    sget-object v0, Lcom/umeng/analytics/pro/i;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 794
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    sget-object v0, Lcom/umeng/analytics/pro/i;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 799
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 800
    sget-object v4, Lcom/umeng/analytics/pro/c;->aF:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 802
    sget-object v0, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 790
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/i;->c:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 808
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 809
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    .line 813
    invoke-direct/range {v2 .. v8}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JZ)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 523
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 526
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "reportError can not be called in child process"

    .line 527
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 531
    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 532
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 534
    :cond_4
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 536
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_5

    .line 537
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void

    .line 519
    :cond_6
    :goto_1
    sget-object p1, Lcom/umeng/analytics/pro/i;->y:Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "\\|"

    invoke-static {p1, p2, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1666
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/i;->aj:Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "\\|"

    invoke-static {p1, p2, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1667
    monitor-exit p0

    return-void

    .line 1669
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1670
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1673
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "setFirstLaunchEvent can not be called in child process"

    .line 1674
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1675
    monitor-exit p0

    return-void

    .line 1677
    :cond_2
    :try_start_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 1678
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1680
    :cond_4
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/r;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/r;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1682
    :try_start_3
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1684
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1696
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/i;->al:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    monitor-exit p0

    return-void

    .line 1699
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1700
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1703
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "registerPreProperties can not be called in child process"

    .line 1704
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1705
    monitor-exit p0

    return-void

    .line 1707
    :cond_2
    :try_start_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 1708
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1710
    :cond_4
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    if-nez p1, :cond_5

    .line 1711
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    :cond_5
    if-eqz p2, :cond_c

    .line 1714
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 1722
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez p1, :cond_7

    .line 1726
    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1734
    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1736
    :catch_1
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_a

    .line 1738
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1739
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1740
    invoke-direct {p0, v1, v2}, Lcom/umeng/analytics/b;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_9

    .line 1741
    monitor-exit p0

    return-void

    .line 1743
    :cond_9
    :try_start_6
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1744
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_8

    const-string v1, "please check propertics, size overlength!"

    .line 1745
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1746
    monitor-exit p0

    return-void

    .line 1754
    :cond_a
    :try_start_7
    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    .line 1767
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_b

    .line 1768
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x2007

    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1770
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1768
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1773
    :cond_b
    monitor-exit p0

    return-void

    .line 1716
    :cond_c
    :goto_1
    :try_start_8
    sget-object p1, Lcom/umeng/analytics/pro/i;->am:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1717
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lcom/umeng/analytics/MobclickAgent$PageMode;)V
    .locals 1

    .line 1039
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1042
    :cond_0
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "setPageCollectionMode can not be called in child process"

    .line 1043
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 1046
    :cond_1
    sput-object p1, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    return-void
.end method

.method public a(Lcom/umeng/common/ISysListener;)V
    .locals 1

    .line 290
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "setSysListener can not be called in child process"

    .line 291
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 294
    :cond_0
    iput-object p1, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/common/ISysListener;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 1420
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1421
    monitor-exit p0

    return-void

    .line 1424
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "registerSuperPropertyByCoreProtocol can not be called in child process"

    .line 1425
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1426
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 1429
    :try_start_2
    check-cast p1, Ljava/lang/String;

    .line 1430
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "sp_uapp"

    .line 1432
    iget-object v1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1438
    :catchall_0
    :cond_2
    monitor-exit p0

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .line 260
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "onPageStart can not be called in child process"

    .line 261
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 265
    :cond_0
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->LEGACY_AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/u;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/u;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 948
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 951
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "onProfileSignIn can not be called in child process"

    .line 952
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 955
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 956
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "provider"

    .line 957
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    .line 958
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ts"

    .line 959
    invoke-virtual {v2, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 961
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x1005

    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 963
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    .line 961
    invoke-static {p1, p2, v0, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 965
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x1104

    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 967
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    .line 965
    invoke-static {p1, p2, v0, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 969
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_2

    const-string p2, " Excepthon  in  onProfileSignIn"

    .line 970
    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .line 898
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 902
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "onAppCrash can not be called in child process"

    .line 903
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 907
    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->enable:Z

    if-nez v0, :cond_2

    return-void

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/u;

    if-eqz v0, :cond_3

    .line 911
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/u;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/u;->b()V

    .line 913
    :cond_3
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const-string v1, "onAppCrash"

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/j;

    if-eqz v0, :cond_4

    .line 915
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/j;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 917
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/pro/k;

    if-eqz v0, :cond_5

    .line 918
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/pro/k;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/k;->c()V

    .line 921
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/t;

    if-eqz v0, :cond_6

    .line 922
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/t;

    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/pro/t;->c(Landroid/content/Context;Ljava/lang/Object;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 925
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ts"

    .line 926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "error_source"

    const/4 v2, 0x1

    .line 927
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "context"

    .line 928
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 929
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    iget-object v1, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/t;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/t;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 931
    :cond_7
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/n;->d()V

    .line 932
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;)V

    .line 934
    sget-object p1, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne p1, v0, :cond_8

    .line 935
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->c(Landroid/content/Context;)V

    .line 937
    :cond_8
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 940
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "Exception in onAppCrash"

    .line 941
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_0
    return-void
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 1026
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getGPU(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object p1

    .line 1027
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1028
    aget-object v0, p1, v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1029
    aget-object p1, p1, v0

    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 1

    .line 1007
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1010
    :cond_0
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "setCatchUncaughtExceptions can not be called in child process"

    .line 1011
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 1014
    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CHANGE_CATCH_EXCEPTION_NOTALLOW:Z

    if-nez v0, :cond_2

    .line 1016
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    :cond_2
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method b(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "unexpected null context in onResume"

    .line 337
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 341
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne v0, v1, :cond_1

    return-void

    .line 345
    :cond_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 350
    :cond_2
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "onResume can not be called in child process"

    .line 351
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 355
    :cond_3
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 359
    :cond_4
    sget-object v0, Lcom/umeng/analytics/pro/i;->o:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "\\|"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 364
    :cond_5
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_7

    .line 365
    :cond_6
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 368
    :cond_7
    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->LEGACY_MANUAL:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_8

    .line 369
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/j;->a(Ljava/lang/String;)V

    .line 372
    :cond_8
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->h()V

    .line 375
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 376
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "Exception occurred in Mobclick.onResume(). "

    .line 381
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const-string v0, "\\|"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "MobclickAgent.onDeepLinkReceived\u65b9\u6cd5Context\u53c2\u6570\u4e0d\u80fd\u4e3anull\u3002|\u53c2\u6570Context\u9700\u8981\u6307\u5b9aApplicationContext\u503c\u3002"

    .line 604
    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 608
    :cond_0
    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 609
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 613
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onDeepLinkReceived can not be called in child process"

    .line 614
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 618
    :cond_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 619
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 621
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 622
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string p1, "_$!link"

    .line 623
    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v3, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const-string v4, "_$!deep_link"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JZ)V

    goto :goto_0

    :cond_5
    const-string p1, "MobclickAgent.onDeepLinkReceived\u65b9\u6cd5link\u53c2\u6570\u4e0d\u80fd\u4e3anull\uff0c\u4e5f\u4e0d\u80fd\u4e3a\u7a7a\u5b57\u7b26\u4e32\u3002|\u53c2\u6570link\u5fc5\u987b\u4e3a\u975e\u7a7a\u5b57\u7b26\u4e32\u3002"

    .line 626
    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 630
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 631
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 1897
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1898
    monitor-exit p0

    return-void

    .line 1901
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "updateNativePrePropertiesByCoreProtocol can not be called in child process"

    .line 1902
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    monitor-exit p0

    return-void

    .line 1905
    :cond_1
    :try_start_2
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 1907
    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1908
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "prepp_uapp"

    .line 1909
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string p1, "prepp_uapp"

    .line 1913
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1918
    :catchall_0
    :cond_3
    :goto_0
    monitor-exit p0

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .line 275
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "onPageEnd can not be called in child process"

    .line 276
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 280
    :cond_0
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->LEGACY_AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/u;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/u;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    return-object v0
.end method

.method c(Landroid/content/Context;)V
    .locals 3

    const-string v0, "\\|"

    if-nez p1, :cond_0

    .line 387
    sget-object p1, Lcom/umeng/analytics/pro/i;->p:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 392
    :cond_0
    sget-object v1, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v2, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne v1, v2, :cond_1

    return-void

    .line 396
    :cond_1
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 401
    :cond_2
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "onPause can not be called in child process"

    .line 402
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 405
    :cond_3
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 406
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 409
    :cond_4
    sget-object v1, Lcom/umeng/analytics/pro/i;->q:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 413
    :cond_5
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_7

    .line 414
    :cond_6
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 417
    :cond_7
    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->LEGACY_MANUAL:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_8

    .line 418
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/j;->b(Ljava/lang/String;)V

    .line 421
    :cond_8
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 423
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "Exception occurred in Mobclick.onRause(). "

    .line 424
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    :cond_9
    :goto_1
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 428
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_a

    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->r:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string p2, "MobclickAgent.setSecret\u65b9\u6cd5\u53c2\u6570context\u4e0d\u80fd\u4e3anull|\u53c2\u6570Context\u9700\u8981\u6307\u5b9aApplicationContext\u503c\u3002"

    const-string v0, "\\|"

    .line 1112
    invoke-static {p2, p1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1115
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1120
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "setSecret can not be called in child process"

    .line 1121
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 1124
    :cond_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 1125
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1127
    :cond_4
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method d(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 859
    :cond_0
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 860
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 863
    :cond_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "onKillProcess can not be called in child process"

    .line 864
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/pro/k;

    if-eqz v0, :cond_3

    .line 868
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/pro/k;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/k;->c()V

    :cond_3
    const-string v0, "onKillProcess"

    .line 870
    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 871
    iget-object p1, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/j;

    if-eqz p1, :cond_4

    .line 872
    iget-object p1, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/j;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    .line 874
    :cond_4
    iget-object p1, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/u;

    if-eqz p1, :cond_5

    .line 875
    iget-object p1, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/u;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/u;->b()V

    .line 877
    :cond_5
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz p1, :cond_8

    .line 878
    iget-object p1, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/t;

    if-eqz p1, :cond_6

    .line 879
    iget-object p1, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/t;

    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/t;->c(Landroid/content/Context;Ljava/lang/Object;)V

    .line 881
    :cond_6
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/n;->d()V

    .line 882
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;)V

    .line 884
    sget-object p1, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne p1, v0, :cond_7

    .line 885
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->c(Landroid/content/Context;)V

    .line 887
    :cond_7
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_8
    return-void
.end method

.method public declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1454
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/i;->ah:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    monitor-exit p0

    return-void

    .line 1457
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1458
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1461
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "unregisterSuperProperty can not be called in child process"

    .line 1462
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1463
    monitor-exit p0

    return-void

    .line 1465
    :cond_2
    :try_start_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 1466
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1469
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1471
    sget-object p1, Lcom/umeng/analytics/pro/i;->ag:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1472
    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    const-string p1, "umsp_1"

    .line 1475
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "umsp_2"

    .line 1476
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "umsp_3"

    .line 1477
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "umsp_4"

    .line 1478
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "umsp_5"

    .line 1479
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "please check key or value, must be correct!"

    .line 1480
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1481
    monitor-exit p0

    return-void

    .line 1486
    :cond_6
    :try_start_4
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez p1, :cond_7

    .line 1487
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 1489
    :cond_7
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1490
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1492
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x2005

    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1494
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    .line 1492
    invoke-static {p1, v0, v1, p2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1498
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1500
    :cond_8
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1531
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/i;->ai:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1532
    monitor-exit p0

    return-object v1

    .line 1534
    :cond_0
    :try_start_1
    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 1535
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1538
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "getSuperProperty can not be called in child process"

    .line 1539
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1540
    monitor-exit p0

    return-object v1

    .line 1542
    :cond_2
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1544
    sget-object p1, Lcom/umeng/analytics/pro/i;->ag:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1545
    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_3
    const-string p1, "umsp_1"

    .line 1548
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "umsp_2"

    .line 1549
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "umsp_3"

    .line 1550
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "umsp_4"

    .line 1551
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "umsp_5"

    .line 1552
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "please check key or value, must be correct!"

    .line 1553
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1554
    monitor-exit p0

    return-object v1

    .line 1557
    :cond_4
    :try_start_4
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-eqz p1, :cond_5

    .line 1558
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1559
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1562
    :cond_5
    :try_start_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1567
    :catchall_0
    :cond_6
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1574
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/i;->ai:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\|"

    invoke-static {p1, v1, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    monitor-exit p0

    return-object v0

    .line 1577
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1578
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1581
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "getSuperProperties can not be called in child process"

    .line 1582
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1583
    monitor-exit p0

    return-object v0

    .line 1585
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    .line 1586
    iget-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1588
    :cond_3
    :try_start_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1593
    :catchall_0
    monitor-exit p0

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Lorg/json/JSONObject;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 320
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getOnResumedActivityName can not be called in child process"

    .line 321
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 324
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized f(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1623
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/i;->ah:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\\|"

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    monitor-exit p0

    return-void

    .line 1626
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1627
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1630
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "clearSuperProperties can not be called in child process"

    .line 1631
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1632
    monitor-exit p0

    return-void

    .line 1634
    :cond_2
    :try_start_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 1635
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1637
    :cond_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    .line 1638
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x2004

    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1640
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 1638
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1641
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1784
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/i;->an:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    monitor-exit p0

    return-void

    .line 1787
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1788
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1791
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "unregisterPreProperty can not be called in child process"

    .line 1792
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1793
    monitor-exit p0

    return-void

    .line 1795
    :cond_2
    :try_start_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 1796
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1798
    :cond_4
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    if-nez p1, :cond_5

    .line 1799
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    :cond_5
    if-eqz p2, :cond_9

    .line 1802
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_6

    goto :goto_1

    .line 1807
    :cond_6
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1808
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1810
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x2008

    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1812
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1810
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_0

    .line 1814
    :cond_7
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1815
    sget-object p1, Lcom/umeng/analytics/pro/i;->ao:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v0, p2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1819
    :cond_8
    :goto_0
    monitor-exit p0

    return-void

    :cond_9
    :goto_1
    :try_start_3
    const-string p1, "please check propertics, property is null!"

    .line 1803
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1804
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 328
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getOnPausedActivityName can not be called in child process"

    .line 329
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 332
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized g(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1829
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/i;->ap:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\\|"

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1830
    monitor-exit p0

    return-void

    .line 1832
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1833
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1836
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "clearPreProperties can not be called in child process"

    .line 1837
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1838
    monitor-exit p0

    return-void

    .line 1840
    :cond_2
    :try_start_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 1841
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1843
    :cond_4
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 1844
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x2009

    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1846
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 1844
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 1848
    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1850
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1862
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/i;->aq:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\|"

    invoke-static {p1, v1, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    monitor-exit p0

    return-object v0

    .line 1865
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1866
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1869
    :cond_1
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "getPreProperties can not be called in child process"

    .line 1870
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1871
    monitor-exit p0

    return-object v0

    .line 1873
    :cond_2
    :try_start_2
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->j:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez p1, :cond_4

    .line 1874
    :cond_3
    sget-object p1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 1877
    :cond_4
    iget-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    if-nez p1, :cond_5

    .line 1878
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    .line 1880
    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1881
    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v0, :cond_6

    .line 1883
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p1, v0

    .line 1887
    :catch_0
    :cond_6
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h()V
    .locals 6

    .line 544
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 546
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onStartSessionInternal can not be called in child process"

    .line 547
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 550
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u68c0\u6d4b\u5230\u8fdb\u5165\u9875\u9762\u751f\u547d\u5468\u671f\u65f6\u5c1a\u672a\u5b8c\u6210SDK\u521d\u59cb\u5316\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u672a\u5728Application.onCreate\u51fd\u6570\u4e2d\u6267\u884cSDK\u521d\u59cb\u5316\u51fd\u6570\u3002"

    const/4 v1, 0x3

    const-string v2, ""

    const/4 v3, 0x0

    .line 553
    invoke-static {v0, v1, v2, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 557
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 561
    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v3, 0x1100

    sget-object v4, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 563
    invoke-static {v4}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 561
    invoke-static {v2, v3, v4, v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 565
    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v3, 0x1007

    sget-object v4, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 567
    invoke-static {v4}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 565
    invoke-static {v2, v3, v4, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/common/ISysListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/common/ISysListener;

    invoke-interface {v0}, Lcom/umeng/common/ISysListener;->onAppResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public i()V
    .locals 5

    .line 575
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 577
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onEndSessionInternal can not be called in child process"

    .line 578
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 581
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1008

    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 583
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 581
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 584
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1004

    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 586
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 584
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 587
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1003

    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 589
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    .line 587
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 590
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1009

    sget-object v2, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 592
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    .line 590
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 597
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/common/ISysListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/umeng/common/ISysListener;->onAppPause()V

    :cond_2
    return-void
.end method

.method j()V
    .locals 4

    .line 977
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 980
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onProfileSignOff can not be called in child process"

    .line 981
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 984
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 985
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ts"

    .line 986
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 988
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1006

    sget-object v3, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 990
    invoke-static {v3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 988
    invoke-static {v0, v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 991
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1104

    sget-object v3, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 993
    invoke-static {v3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 991
    invoke-static {v0, v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 995
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, " Excepthon  in  onProfileSignOff"

    .line 996
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized k()V
    .locals 3

    monitor-enter p0

    .line 1507
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1508
    monitor-exit p0

    return-void

    .line 1511
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unregisterSuperPropertyByCoreProtocol can not be called in child process"

    .line 1512
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1513
    monitor-exit p0

    return-void

    .line 1515
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 1516
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1517
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp_uapp"

    .line 1518
    iget-object v2, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1519
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1521
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1525
    :catchall_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized l()Lorg/json/JSONObject;
    .locals 2

    monitor-enter p0

    .line 1598
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1599
    monitor-exit p0

    return-object v1

    .line 1602
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getSuperPropertiesJSONObject can not be called in child process"

    .line 1603
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1604
    monitor-exit p0

    return-object v1

    .line 1606
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 1607
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1611
    :catchall_0
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()V
    .locals 2

    monitor-enter p0

    .line 1645
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1647
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clearSuperPropertiesByCoreProtocol can not be called in child process"

    .line 1648
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    monitor-exit p0

    return-void

    .line 1652
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1653
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp_uapp"

    .line 1654
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1655
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1660
    :catchall_0
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public n()V
    .locals 4

    const-string v0, "MobclickRT"

    const-string v1, "--->>> onIntoBackground triggered."

    .line 1973
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->enable:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "header_ekv_send_on_exit"

    .line 1978
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2012

    .line 1980
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "--->>> \u9000\u51fa\u65f6\u53d1\u9001\u7b56\u7565 \u88ab\u89e6\u53d1\uff01"

    .line 1981
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 1984
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 1982
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "--->>> \u9000\u51fa\u53d1\u9001\u7b56\u7565: \u4e91\u63a7\u63a7\u5236\u5b57\u5173\u95ed\u3002\u529f\u80fd\u4e0d\u751f\u6548"

    .line 1987
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
