.class Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;
.super Ljava/lang/Object;
.source "AbstractPollingIoConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connector"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 522
    const-class v0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$1;)V
    .locals 0

    .line 522
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 529
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x3e8

    .line 533
    :try_start_0
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->getConnectTimeoutMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 534
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->select(I)I

    move-result v4

    .line 536
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)I

    move-result v5

    add-int/2addr v1, v5

    if-nez v1, :cond_1

    .line 541
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 543
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 548
    :cond_0
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5, v6, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-lez v4, :cond_2

    .line 557
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectedHandles()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/util/Iterator;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 560
    :cond_2
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->allHandles()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/util/Iterator;)V

    .line 562
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)I

    move-result v2
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v1, v2

    goto :goto_0

    :catch_0
    move-exception v4

    .line 568
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 571
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 573
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 565
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 578
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 579
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$402(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Z)Z

    .line 581
    :try_start_2
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 582
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoProcessor;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 586
    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 587
    :try_start_4
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 588
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V

    .line 590
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

    .line 592
    :try_start_6
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 594
    :goto_2
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    goto :goto_6

    :goto_3
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    throw v0

    :catchall_2
    move-exception v0

    .line 586
    :try_start_7
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 587
    :try_start_8
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->isDisposing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 588
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V

    .line 590
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

    .line 592
    :try_start_a
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 594
    :goto_4
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    throw v0

    :goto_5
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    throw v0

    :cond_7
    :goto_6
    return-void
.end method
