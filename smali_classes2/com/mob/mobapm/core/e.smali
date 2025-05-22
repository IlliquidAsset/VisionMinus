.class public Lcom/mob/mobapm/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/mob/mobapm/core/e;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mobapm/core/e;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static b()Lcom/mob/mobapm/core/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/mobapm/core/e;->b:Lcom/mob/mobapm/core/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/mobapm/core/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/mobapm/core/e;->b:Lcom/mob/mobapm/core/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/mobapm/core/e;

    invoke-direct {v1}, Lcom/mob/mobapm/core/e;-><init>()V

    sput-object v1, Lcom/mob/mobapm/core/e;->b:Lcom/mob/mobapm/core/e;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mobapm/core/e;->b:Lcom/mob/mobapm/core/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/core/e;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mob/mobapm/core/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
