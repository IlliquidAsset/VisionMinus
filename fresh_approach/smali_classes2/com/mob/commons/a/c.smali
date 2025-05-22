.class public Lcom/mob/commons/a/c;
.super Lcom/mob/commons/a/d;
.source "AtClt.java"


# instance fields
.field private a:J

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mob/commons/a/d;-><init>()V

    return-void
.end method

.method private h()V
    .locals 10

    .line 51
    iget-object v0, p0, Lcom/mob/commons/a/c;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/a/c;->b:Ljava/util/HashMap;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mob/commons/a/c;->a:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/mob/commons/a/c;->i()V

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mob/commons/a/c;->a:J

    sub-long/2addr v0, v2

    .line 65
    iget-object v4, p0, Lcom/mob/commons/a/c;->b:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v2, p0, Lcom/mob/commons/a/c;->b:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/mob/commons/i;->b(Ljava/util/HashMap;)V

    .line 68
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "AtClt"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache AT: {\"launchAt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/mob/commons/a/c;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", \"duration\": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "[%s] %s"

    invoke-virtual {v2, v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 71
    invoke-static {}, Lcom/mob/commons/i;->s()J

    move-result-wide v2

    .line 73
    invoke-static {}, Lcom/mob/commons/b;->ab()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    cmp-long v4, v0, v6

    if-ltz v4, :cond_3

    .line 74
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_3

    .line 75
    invoke-direct {p0}, Lcom/mob/commons/a/c;->i()V

    .line 78
    :cond_3
    invoke-static {}, Lcom/mob/commons/b;->Z()J

    move-result-wide v0

    mul-long v0, v0, v8

    invoke-virtual {p0, v5, v0, v1}, Lcom/mob/commons/a/c;->a(IJ)V

    return-void
.end method

.method private i()V
    .locals 12

    const-string v0, "AtClt"

    const-string v1, "[%s] %s"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 83
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 84
    iget-object v6, p0, Lcom/mob/commons/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    if-eqz v7, :cond_0

    const-string v8, "launchAt"

    .line 86
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "duration"

    .line 87
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v6

    .line 92
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "type"

    const-string v10, "APP_RUNTIMES_STATS"

    .line 93
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "data"

    .line 94
    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "datetime"

    .line 95
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v8}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    .line 97
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Push AT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v11}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v11, v5}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 100
    invoke-static {}, Lcom/mob/commons/b;->ab()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/mob/commons/i;->h(J)V

    .line 102
    iget-object v5, p0, Lcom/mob/commons/a/c;->b:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    .line 103
    iget-object v5, p0, Lcom/mob/commons/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_2
    const/4 v5, 0x0

    .line 106
    invoke-static {v5}, Lcom/mob/commons/i;->b(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 108
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v0, "Push error"

    aput-object v0, v4, v2

    invoke-virtual {v6, v5, v1, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 1

    const-string v0, "comm/locks/.at_lock"

    .line 30
    invoke-static {v0}, Lcom/mob/commons/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 4

    .line 40
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Lcom/mob/commons/b;->Z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 43
    invoke-direct {p0}, Lcom/mob/commons/a/c;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b_()Z
    .locals 5

    .line 26
    invoke-static {}, Lcom/mob/commons/b;->Z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected d()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/commons/a/c;->a:J

    .line 35
    invoke-static {}, Lcom/mob/commons/i;->t()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/a/c;->b:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/c;->b(I)V

    return-void
.end method
