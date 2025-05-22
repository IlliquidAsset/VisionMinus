.class public Lcom/mob/commons/a/a;
.super Lcom/mob/commons/a/d;
.source "ActClt.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/mob/tools/utils/SharePrefrenceHelper;

.field private b:Lcom/mob/commons/FBListener;

.field private c:J

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/mob/commons/a/d;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/mob/commons/a/a;->b:Lcom/mob/commons/FBListener;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/mob/commons/a/a;->c:J

    .line 34
    new-instance v0, Lcom/mob/commons/a/a$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/a/a$1;-><init>(Lcom/mob/commons/a/a;)V

    .line 38
    invoke-virtual {v0}, Lcom/mob/commons/a/a$1;->start()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/a/a;J)J
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/mob/commons/a/a;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mob/commons/a/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/mob/commons/a/a;->g:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/commons/a/a;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/mob/commons/a/a;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/mob/commons/a/a;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/mob/commons/a/a;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/mob/commons/a/a;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/mob/commons/a/a;->f:Z

    return p0
.end method

.method static synthetic d(Lcom/mob/commons/a/a;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mob/commons/a/a;->h()V

    return-void
.end method

.method static synthetic e(Lcom/mob/commons/a/a;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mob/commons/a/a;->j()V

    return-void
.end method

.method static synthetic f(Lcom/mob/commons/a/a;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mob/commons/a/a;->k()V

    return-void
.end method

.method private h()V
    .locals 4

    .line 97
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "PV"

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "datetime"

    .line 99
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object v1

    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 102
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private declared-synchronized i()V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/a/a;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/commons/a/a;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "top_time"

    .line 109
    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .locals 6

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    .line 144
    :cond_0
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    .line 145
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[cache] foregndAt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/mob/commons/a/a;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/mob/commons/a/a;->c:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 146
    iget-object v2, p0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    iget-wide v3, p0, Lcom/mob/commons/a/a;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/mob/commons/a/a;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 149
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 10

    monitor-enter p0

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/a/a;->i()V

    .line 159
    invoke-virtual {p0}, Lcom/mob/commons/a/a;->c()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v6, v4, v2

    .line 166
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "foregndAt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", until: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", runtimes: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 169
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "BACK_INFO"

    .line 170
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "datetime"

    .line 171
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "until"

    .line 173
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "runtimes"

    .line 174
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    .line 175
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object v2

    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    goto/16 :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/a;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 187
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 5

    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/mob/commons/a/a;->j()V

    .line 83
    iget-object p1, p0, Lcom/mob/commons/a/a;->g:Landroid/os/Handler;

    invoke-static {}, Lcom/mob/commons/b;->F()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/mob/commons/a/a;->k()V

    .line 78
    iget-object p1, p0, Lcom/mob/commons/a/a;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/mob/commons/a/a;->i()V

    const-string v0, "key_active_log"

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/mob/commons/a/a;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v1, v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 130
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mob/commons/a/a;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected a_()V
    .locals 2

    .line 42
    invoke-static {}, Lcom/mob/commons/b;->E()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mob/commons/a/a;->e:Z

    .line 43
    invoke-static {}, Lcom/mob/commons/b;->z()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mob/commons/a/a;->f:Z

    .line 44
    iget-boolean v1, p0, Lcom/mob/commons/a/a;->e:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    new-instance v0, Lcom/mob/commons/a/a$2;

    invoke-direct {v0, p0}, Lcom/mob/commons/a/a$2;-><init>(Lcom/mob/commons/a/a;)V

    iput-object v0, p0, Lcom/mob/commons/a/a;->b:Lcom/mob/commons/FBListener;

    .line 70
    invoke-static {}, Lcom/mob/commons/a/m;->a()Lcom/mob/commons/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/a/a;->b:Lcom/mob/commons/FBListener;

    invoke-virtual {v0, v1}, Lcom/mob/commons/a/m;->a(Lcom/mob/commons/FBListener;)V

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/mob/commons/a/a;->b:Lcom/mob/commons/FBListener;

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/mob/commons/a/m;->a()Lcom/mob/commons/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/a/a;->b:Lcom/mob/commons/FBListener;

    invoke-virtual {v0, v1}, Lcom/mob/commons/a/m;->b(Lcom/mob/commons/FBListener;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/a/a;->i()V

    .line 117
    iget-object v0, p0, Lcom/mob/commons/a/a;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "key_active_log"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 119
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method
