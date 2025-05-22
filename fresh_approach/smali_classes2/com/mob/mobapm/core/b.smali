.class public Lcom/mob/mobapm/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static g:Lcom/mob/mobapm/core/b;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Object;

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mob/mobapm/core/b;->b:Ljava/lang/Object;

    .line 10
    invoke-static {p0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mobapm/core/b;->a:Landroid/os/Handler;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static declared-synchronized e()Lcom/mob/mobapm/core/b;
    .locals 2

    const-class v0, Lcom/mob/mobapm/core/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/mobapm/core/b;->g:Lcom/mob/mobapm/core/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mob/mobapm/core/b;

    invoke-direct {v1}, Lcom/mob/mobapm/core/b;-><init>()V

    sput-object v1, Lcom/mob/mobapm/core/b;->g:Lcom/mob/mobapm/core/b;

    .line 4
    :cond_0
    sget-object v1, Lcom/mob/mobapm/core/b;->g:Lcom/mob/mobapm/core/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/mobapm/core/b;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/mobapm/core/b;->d:J

    .line 4
    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mob/mobapm/core/b;->f:J

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "appLaunchTime"

    .line 6
    :try_start_1
    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "appCloseTime"

    .line 7
    :try_start_2
    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "appDuration"

    .line 8
    :try_start_3
    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, "clientTime"

    .line 9
    :try_start_4
    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Lcom/mob/mobapm/b/a;->g(Ljava/util/HashMap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mob/mobapm/core/b;->d:J

    .line 3
    iget-object v1, p0, Lcom/mob/mobapm/core/b;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/32 v3, 0xc350

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->d:J

    const-wide/16 v4, 0x7530

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->c:J

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->d:J

    sub-long v2, v0, v2

    cmp-long v8, v2, v4

    if-ltz v8, :cond_0

    .line 3
    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->d:J

    iget-wide v4, p0, Lcom/mob/mobapm/core/b;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/mob/mobapm/core/b;->e:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mob/mobapm/core/b;->f:J

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "appLaunchTime"

    .line 6
    :try_start_1
    iget-wide v4, p0, Lcom/mob/mobapm/core/b;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "appCloseTime"

    .line 7
    :try_start_2
    iget-wide v4, p0, Lcom/mob/mobapm/core/b;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "appDuration"

    .line 8
    :try_start_3
    iget-wide v4, p0, Lcom/mob/mobapm/core/b;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "clientTime"

    .line 9
    :try_start_4
    iget-wide v4, p0, Lcom/mob/mobapm/core/b;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v2}, Lcom/mob/mobapm/b/a;->f(Ljava/util/HashMap;)V

    .line 12
    iput-wide v0, p0, Lcom/mob/mobapm/core/b;->c:J

    .line 13
    iput-wide v6, p0, Lcom/mob/mobapm/core/b;->d:J

    .line 14
    iput-wide v6, p0, Lcom/mob/mobapm/core/b;->e:J

    .line 15
    iput-wide v6, p0, Lcom/mob/mobapm/core/b;->f:J

    goto :goto_0

    .line 16
    :cond_0
    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->d:J

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->c:J

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->d:J

    sub-long v2, v0, v2

    cmp-long v8, v2, v4

    if-gez v8, :cond_1

    .line 17
    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->e:J

    iget-wide v4, p0, Lcom/mob/mobapm/core/b;->d:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mob/mobapm/core/b;->e:J

    .line 18
    iput-wide v0, p0, Lcom/mob/mobapm/core/b;->d:J

    goto :goto_0

    .line 19
    :cond_1
    iget-wide v2, p0, Lcom/mob/mobapm/core/b;->c:J

    cmp-long v4, v2, v6

    if-gtz v4, :cond_2

    .line 20
    iput-wide v0, p0, Lcom/mob/mobapm/core/b;->c:J

    .line 21
    iput-wide v6, p0, Lcom/mob/mobapm/core/b;->e:J

    .line 22
    iput-wide v6, p0, Lcom/mob/mobapm/core/b;->f:J

    .line 23
    iput-wide v6, p0, Lcom/mob/mobapm/core/b;->d:J

    .line 25
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mob/mobapm/core/b;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/mobapm/core/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/core/b;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APM: stop work error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-boolean p1, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/mob/mobapm/core/b;->b()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
