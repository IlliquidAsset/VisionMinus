.class Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "DefaultIoFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TailFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 772
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V
    .locals 0

    .line 772
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 825
    check-cast p2, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 828
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/service/IoHandler;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 831
    invoke-virtual {p2, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerFailedReadFuture(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 830
    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    invoke-virtual {p2, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerFailedReadFuture(Ljava/lang/Throwable;)V

    :cond_1
    throw p1
.end method

.method public filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 886
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 881
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public inputClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 838
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/service/IoHandler;->inputClosed(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 843
    move-object p1, p2

    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 845
    instance-of v0, p3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    .line 846
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadMessages(J)V

    goto :goto_0

    .line 847
    :cond_0
    move-object v0, p3

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadMessages(J)V

    .line 852
    :cond_1
    :goto_0
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_2

    .line 853
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/core/service/IoServiceStatistics;->updateThroughput(J)V

    .line 858
    :cond_2
    :try_start_0
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lorg/apache/mina/core/service/IoHandler;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 861
    invoke-virtual {p1, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerReadFuture(Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p2

    .line 860
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 861
    invoke-virtual {p1, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->offerReadFuture(Ljava/lang/Object;)V

    :cond_4
    throw p2
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 868
    move-object p1, p2

    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenMessages(Lorg/apache/mina/core/write/WriteRequest;J)V

    .line 871
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object p1

    instance-of p1, p1, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz p1, :cond_0

    .line 872
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {p1}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/mina/core/service/IoServiceStatistics;->updateThroughput(J)V

    .line 876
    :cond_0
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/service/IoHandler;->messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 794
    move-object p1, p2

    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 797
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/core/service/IoHandler;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 800
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 803
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 807
    :try_start_3
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_1
    throw p2

    :catchall_1
    move-exception v0

    .line 807
    :try_start_4
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_2
    throw v0

    :catchall_2
    move-exception p2

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_3
    throw p2

    :catchall_3
    move-exception v0

    .line 803
    :try_start_5
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 807
    :try_start_6
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_4
    throw v0

    :catchall_4
    move-exception p2

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_5
    throw p2

    :catchall_5
    move-exception v0

    .line 807
    :try_start_7
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_6
    throw v0

    :catchall_6
    move-exception p2

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_7
    throw p2

    :catchall_7
    move-exception v0

    .line 800
    :try_start_8
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 803
    :try_start_9
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 807
    :try_start_a
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_8
    throw v0

    :catchall_8
    move-exception p2

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_9
    throw p2

    :catchall_9
    move-exception v0

    .line 807
    :try_start_b
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_a
    throw v0

    :catchall_a
    move-exception p2

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_b
    throw p2

    :catchall_b
    move-exception v0

    .line 803
    :try_start_c
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    .line 807
    :try_start_d
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_c
    throw v0

    :catchall_c
    move-exception p2

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_d
    throw p2

    :catchall_d
    move-exception v0

    .line 807
    :try_start_e
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_e
    throw v0

    :catchall_e
    move-exception p2

    .line 809
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 810
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->offerClosedReadFuture()V

    :cond_f
    throw p2
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 776
    :try_start_0
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/service/IoHandler;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    sget-object p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, p1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/ConnectFuture;

    if-eqz p1, :cond_0

    .line 782
    invoke-interface {p1, p2}, Lorg/apache/mina/core/future/ConnectFuture;->setSession(Lorg/apache/mina/core/session/IoSession;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 779
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    if-eqz v0, :cond_1

    .line 782
    invoke-interface {v0, p2}, Lorg/apache/mina/core/future/ConnectFuture;->setSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 784
    :cond_1
    throw p1
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 820
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/service/IoHandler;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 789
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/service/IoHandler;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method
