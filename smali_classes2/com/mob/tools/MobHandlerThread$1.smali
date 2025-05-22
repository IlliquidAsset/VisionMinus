.class final Lcom/mob/tools/MobHandlerThread$1;
.super Lcom/mob/tools/MobHandlerThread;
.source "MobHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$beforeRun:Ljava/lang/Runnable;

.field final synthetic val$callback:Landroid/os/Handler$Callback;

.field final synthetic val$handler:[Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;[Landroid/os/Handler;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/mob/tools/MobHandlerThread$1;->val$beforeRun:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/mob/tools/MobHandlerThread$1;->val$handler:[Landroid/os/Handler;

    iput-object p3, p0, Lcom/mob/tools/MobHandlerThread$1;->val$callback:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Lcom/mob/tools/MobHandlerThread;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared(Landroid/os/Looper;)V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/mob/tools/MobHandlerThread$1;->val$handler:[Landroid/os/Handler;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/MobHandlerThread$1;->val$handler:[Landroid/os/Handler;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/mob/tools/MobHandlerThread$1;->val$callback:Landroid/os/Handler$Callback;

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    aput-object v3, v1, v2

    .line 142
    iget-object p1, p0, Lcom/mob/tools/MobHandlerThread$1;->val$handler:[Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mob/tools/MobHandlerThread$1;->val$beforeRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 136
    :cond_0
    invoke-super {p0}, Lcom/mob/tools/MobHandlerThread;->run()V

    return-void
.end method
