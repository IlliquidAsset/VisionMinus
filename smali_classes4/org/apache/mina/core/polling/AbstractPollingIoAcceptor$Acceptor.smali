.class Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;
.super Ljava/lang/Object;
.source "AbstractPollingIoAcceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Acceptor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 437
    const-class v0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$1;)V
    .locals 0

    .line 437
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)V

    return-void
.end method

.method private processHandles(Ljava/util/Iterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TH;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 538
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 540
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 544
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 553
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 444
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 446
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I

    move-result v2

    add-int/2addr v1, v2

    .line 460
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->select()I

    move-result v2

    if-nez v1, :cond_1

    .line 466
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 468
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3, v4, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-lez v2, :cond_2

    .line 484
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectedHandles()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->processHandles(Ljava/util/Iterator;)V

    .line 488
    :cond_2
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I

    move-result v2
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 494
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    const-wide/16 v2, 0x3e8

    .line 497
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 499
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 491
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 505
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 506
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$302(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Z)Z

    .line 508
    :try_start_2
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 509
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoProcessor;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 513
    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 514
    :try_start_4
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 515
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V

    .line 517
    :cond_5
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    .line 519
    :try_start_6
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 521
    :goto_2
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    goto :goto_6

    :goto_3
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    throw v0

    :catchall_2
    move-exception v0

    .line 513
    :try_start_7
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 514
    :try_start_8
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isDisposing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 515
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V

    .line 517
    :cond_6
    monitor-exit v1

    goto :goto_4

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    .line 519
    :try_start_a
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 521
    :goto_4
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    throw v0

    :goto_5
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    throw v0

    :cond_7
    :goto_6
    return-void
.end method
