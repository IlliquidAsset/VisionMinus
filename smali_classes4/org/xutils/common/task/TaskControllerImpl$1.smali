.class Lorg/xutils/common/task/TaskControllerImpl$1;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl;->startTasks(Lorg/xutils/common/Callback$GroupCallback;[Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/Callback$Cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lorg/xutils/common/task/TaskControllerImpl;

.field private final total:I

.field final synthetic val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

.field final synthetic val$tasks:[Lorg/xutils/common/task/AbsTask;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$tasks:[Lorg/xutils/common/task/AbsTask;

    iput-object p3, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iget-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$tasks:[Lorg/xutils/common/task/AbsTask;

    array-length p1, p1

    iput p1, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->total:I

    .line 83
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 87
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->total:I

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {v0}, Lorg/xutils/common/Callback$GroupCallback;->onAllFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 93
    :try_start_1
    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lorg/xutils/common/Callback$GroupCallback;->onError(Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
