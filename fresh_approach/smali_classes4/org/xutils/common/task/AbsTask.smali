.class public abstract Lorg/xutils/common/task/AbsTask;
.super Ljava/lang/Object;
.source "AbsTask.java"

# interfaces
.implements Lorg/xutils/common/Callback$Cancelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/common/task/AbsTask$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$Cancelable;"
    }
.end annotation


# instance fields
.field private final cancelHandler:Lorg/xutils/common/Callback$Cancelable;

.field private volatile isCancelled:Z

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultType;"
        }
    .end annotation
.end field

.field private volatile state:Lorg/xutils/common/task/AbsTask$State;

.field private taskProxy:Lorg/xutils/common/task/TaskProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lorg/xutils/common/task/AbsTask;-><init>(Lorg/xutils/common/Callback$Cancelable;)V

    return-void
.end method

.method public constructor <init>(Lorg/xutils/common/Callback$Cancelable;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->isCancelled:Z

    .line 22
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->IDLE:Lorg/xutils/common/task/AbsTask$State;

    iput-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    .line 30
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->cancelHandler:Lorg/xutils/common/Callback$Cancelable;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 89
    iget-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->isCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    monitor-enter p0

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->isCancelled:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->isCancelled:Z

    .line 93
    invoke-virtual {p0}, Lorg/xutils/common/task/AbsTask;->cancelWorks()V

    .line 94
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->cancelHandler:Lorg/xutils/common/Callback$Cancelable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->cancelHandler:Lorg/xutils/common/Callback$Cancelable;

    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->cancelHandler:Lorg/xutils/common/Callback$Cancelable;

    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->cancel()V

    .line 97
    :cond_2
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->WAITING:Lorg/xutils/common/task/AbsTask$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/xutils/common/task/AbsTask;->isCancelFast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    :cond_3
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "cancelled by user"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskProxy;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    .line 100
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    goto :goto_0

    .line 101
    :cond_4
    instance-of v0, p0, Lorg/xutils/common/task/TaskProxy;

    if-eqz v0, :cond_5

    .line 102
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled by user"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/AbsTask;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    .line 103
    invoke-virtual {p0}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    .line 106
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected cancelWorks()V
    .locals 0

    return-void
.end method

.method public customLooper()Landroid/os/Looper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract doBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final getState()Lorg/xutils/common/task/AbsTask$State;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    return-object v0
.end method

.method protected isCancelFast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 111
    iget-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->isCancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->CANCELLED:Lorg/xutils/common/task/AbsTask$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->cancelHandler:Lorg/xutils/common/Callback$Cancelable;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isFinished()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask$State;->value()I

    move-result v0

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask$State;->value()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 0

    return-void
.end method

.method protected abstract onError(Ljava/lang/Throwable;Z)V
.end method

.method protected onFinished()V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 0

    return-void
.end method

.method protected abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation
.end method

.method protected varargs onUpdate(I[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onWaiting()V
    .locals 0

    return-void
.end method

.method final setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->result:Ljava/lang/Object;

    return-void
.end method

.method setState(Lorg/xutils/common/task/AbsTask$State;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    return-void
.end method

.method final setTaskProxy(Lorg/xutils/common/task/TaskProxy;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    return-void
.end method

.method protected final varargs update(I[Ljava/lang/Object;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1, p2}, Lorg/xutils/common/task/TaskProxy;->onUpdate(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
