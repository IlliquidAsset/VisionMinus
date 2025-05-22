.class public Lcom/mob/mobapm/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static c:Lcom/mob/mobapm/a/a;

.field private static d:Z


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/mobapm/a/a;->a:Ljava/util/HashMap;

    const/16 v0, 0x8

    .line 4
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mobapm/a/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/mob/mobapm/a/a;
    .locals 2

    const-class v0, Lcom/mob/mobapm/a/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/mobapm/a/a;->c:Lcom/mob/mobapm/a/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mob/mobapm/a/a;

    invoke-direct {v1}, Lcom/mob/mobapm/a/a;-><init>()V

    sput-object v1, Lcom/mob/mobapm/a/a;->c:Lcom/mob/mobapm/a/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/mob/mobapm/a/a;->c:Lcom/mob/mobapm/a/a;
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
    .locals 5

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/a/a;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/mob/mobapm/b/a;->j()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/mob/mobapm/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    iget-object v3, p0, Lcom/mob/mobapm/a/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/mob/mobapm/a/a$a;

    invoke-direct {v4, p0, v0, v2}, Lcom/mob/mobapm/a/a$a;-><init>(Lcom/mob/mobapm/a/a;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 13
    sput-boolean p1, Lcom/mob/mobapm/a/a;->d:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
