.class public Lcom/mob/commons/a/p;
.super Lcom/mob/commons/a/d;
.source "PkgClt.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/BroadcastReceiver;

.field private c:Lcom/mob/tools/utils/Hashon;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    .line 37
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a/p;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mob/commons/a/d;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 159
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 162
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 167
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "first"

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 168
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v3, "pkg"

    .line 178
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 179
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0

    .line 182
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 183
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 185
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 187
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 190
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    move v5, v2

    :goto_1
    move v2, v5

    :cond_9
    if-nez v2, :cond_1

    .line 199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object v0

    :cond_b
    :goto_2
    return-object p1
.end method

.method private a(J)V
    .locals 2

    .line 237
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "comm/dbs/.nulal"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 239
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 240
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 241
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 242
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 243
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 245
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private a(JLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 150
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "list"

    .line 151
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "datetime"

    invoke-virtual {v0, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 207
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mob/commons/a/p;->b(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 209
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 212
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mob/commons/a/p;->b(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 214
    :catchall_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/p;Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/mob/commons/a/p;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .line 299
    sget-object v0, Lcom/mob/commons/a/p;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 300
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "pkg"

    .line 361
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 367
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 368
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    :cond_3
    if-nez v4, :cond_0

    .line 375
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 220
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "comm/dbs/.al"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 223
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 224
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 225
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 227
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 228
    invoke-direct {p0}, Lcom/mob/commons/a/p;->n()Lcom/mob/tools/utils/Hashon;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mob/commons/a/p;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/mob/commons/a/p;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private h()V
    .locals 12

    .line 77
    invoke-direct {p0}, Lcom/mob/commons/a/p;->i()Ljava/util/ArrayList;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    const-string v3, "APPS_ALL"

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_3

    .line 92
    :cond_0
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v5

    .line 93
    invoke-direct {p0}, Lcom/mob/commons/a/p;->j()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/mob/commons/a/p;->m()V

    goto :goto_5

    .line 97
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v7

    .line 98
    invoke-virtual {v7, v4}, Lcom/mob/tools/utils/DeviceHelper;->getIA(Z)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 100
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-eqz v4, :cond_4

    .line 103
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 107
    :cond_3
    invoke-direct {p0, v4, v0}, Lcom/mob/commons/a/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    invoke-static {}, Lcom/mob/commons/b;->x()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v3, v0}, Lcom/mob/commons/a/p;->a(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 109
    invoke-direct {p0, v0}, Lcom/mob/commons/a/p;->a(Ljava/util/ArrayList;)V

    .line 110
    invoke-static {}, Lcom/mob/commons/b;->k()J

    move-result-wide v3

    mul-long v3, v3, v1

    add-long/2addr v5, v3

    .line 111
    invoke-direct {p0, v5, v6}, Lcom/mob/commons/a/p;->a(J)V

    goto :goto_5

    :cond_4
    :goto_2
    return-void

    .line 80
    :cond_5
    :goto_3
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v4}, Lcom/mob/tools/utils/DeviceHelper;->getIA(Z)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 83
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :goto_4
    invoke-static {}, Lcom/mob/commons/b;->x()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v3, v0}, Lcom/mob/commons/a/p;->a(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 87
    invoke-direct {p0, v0}, Lcom/mob/commons/a/p;->a(Ljava/util/ArrayList;)V

    .line 88
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v3

    .line 89
    invoke-static {}, Lcom/mob/commons/b;->k()J

    move-result-wide v5

    mul-long v5, v5, v1

    add-long/2addr v3, v5

    .line 90
    invoke-direct {p0, v3, v4}, Lcom/mob/commons/a/p;->a(J)V

    :goto_5
    return-void
.end method

.method private i()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "comm/dbs/.al"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 124
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 126
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 127
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/mob/commons/a/p;->n()Lcom/mob/tools/utils/Hashon;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/p;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 139
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/p;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/mob/commons/a/p;->a(Ljava/io/Closeable;)V

    throw v1

    .line 145
    :cond_2
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private j()J
    .locals 3

    .line 250
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "comm/dbs/.nulal"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 254
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 255
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 256
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    :catchall_0
    move-exception v0

    .line 259
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private k()V
    .locals 8

    .line 266
    invoke-static {}, Lcom/mob/commons/b;->h()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mob/commons/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/mob/commons/a/p;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 268
    new-instance v0, Lcom/mob/commons/a/p$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/a/p$1;-><init>(Lcom/mob/commons/a/p;)V

    iput-object v0, p0, Lcom/mob/commons/a/p;->b:Landroid/content/BroadcastReceiver;

    .line 280
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 281
    :goto_0
    sget-object v5, Lcom/mob/commons/a/p;->a:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 282
    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "package"

    .line 284
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 287
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "registerReceiver"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mob/commons/a/p;->b:Landroid/content/BroadcastReceiver;

    aput-object v7, v6, v3

    aput-object v0, v6, v2

    new-array v0, v1, [Ljava/lang/Class;

    const-class v7, Landroid/content/BroadcastReceiver;

    aput-object v7, v0, v3

    const-class v3, Landroid/content/IntentFilter;

    aput-object v3, v0, v2

    invoke-static {v4, v5, v6, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 292
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mob/commons/a/p;->a(I)V

    .line 293
    invoke-direct {p0}, Lcom/mob/commons/a/p;->l()V

    :catchall_0
    :cond_2
    :goto_1
    const-wide/32 v2, 0x36ee80

    .line 295
    invoke-virtual {p0, v1, v2, v3}, Lcom/mob/commons/a/p;->a(IJ)V

    return-void
.end method

.method private l()V
    .locals 7

    .line 308
    iget-object v0, p0, Lcom/mob/commons/a/p;->b:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "unregisterReceiver"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mob/commons/a/p;->b:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/BroadcastReceiver;

    aput-object v5, v3, v6

    invoke-static {v0, v2, v4, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :catchall_0
    iput-object v1, p0, Lcom/mob/commons/a/p;->b:Landroid/content/BroadcastReceiver;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/p;->c:Lcom/mob/tools/utils/Hashon;

    if-eqz v0, :cond_1

    .line 317
    iput-object v1, p0, Lcom/mob/commons/a/p;->c:Lcom/mob/tools/utils/Hashon;

    :cond_1
    return-void
.end method

.method private m()V
    .locals 6

    .line 322
    invoke-direct {p0}, Lcom/mob/commons/a/p;->i()Ljava/util/ArrayList;

    move-result-object v0

    .line 325
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const/4 v2, 0x0

    .line 326
    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getIA(Z)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 328
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz v0, :cond_3

    .line 331
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 339
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/mob/commons/a/p;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 341
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v3

    const-string v5, "APPS_INCR"

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/mob/commons/a/p;->a(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 345
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/mob/commons/a/p;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 347
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v3

    const-string v5, "UNINSTALL"

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/mob/commons/a/p;->a(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 351
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/mob/commons/a/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 352
    invoke-direct {p0, v0}, Lcom/mob/commons/a/p;->a(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 332
    :cond_3
    :goto_1
    invoke-static {}, Lcom/mob/commons/b;->x()J

    move-result-wide v2

    const-string v0, "APPS_ALL"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/mob/commons/a/p;->a(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 333
    invoke-direct {p0, v1}, Lcom/mob/commons/a/p;->a(Ljava/util/ArrayList;)V

    .line 334
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    .line 335
    invoke-static {}, Lcom/mob/commons/b;->k()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 336
    invoke-direct {p0, v0, v1}, Lcom/mob/commons/a/p;->a(J)V

    :goto_2
    return-void
.end method

.method private n()Lcom/mob/tools/utils/Hashon;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/mob/commons/a/p;->c:Lcom/mob/tools/utils/Hashon;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/a/p;->c:Lcom/mob/tools/utils/Hashon;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/p;->c:Lcom/mob/tools/utils/Hashon;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 1

    const-string v0, "comm/locks/.pkg_lock"

    .line 47
    invoke-static {v0}, Lcom/mob/commons/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 1

    .line 62
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/mob/commons/a/p;->k()V

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/mob/commons/a/p;->m()V

    :goto_0
    return-void
.end method

.method protected b()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/mob/commons/a/p;->l()V

    return-void
.end method

.method protected b_()Z
    .locals 1

    .line 51
    invoke-static {}, Lcom/mob/commons/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/mob/commons/a/p;->h()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected d()V
    .locals 1

    const/4 v0, 0x2

    .line 58
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/p;->b(I)V

    return-void
.end method
