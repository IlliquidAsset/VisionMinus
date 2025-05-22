.class public Lorg/apache/mina/filter/keepalive/KeepAliveFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "KeepAliveFilter.java"


# instance fields
.field private final IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

.field private final WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

.field private volatile forwardEvent:Z

.field private final interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

.field private final messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

.field private volatile requestInterval:I

.field private volatile requestTimeout:I

.field private volatile requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;)V
    .locals 2

    .line 189
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->CLOSE:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 6

    .line 205
    sget-object v3, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->CLOSE:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 6

    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 238
    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V
    .locals 3

    .line 251
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 160
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "waitingForResponse"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    .line 162
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ignoreReaderIdleOnce"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 264
    iput-object p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    .line 265
    iput-object p2, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    .line 266
    iput-object p3, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    .line 268
    invoke-virtual {p0, p4}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->setRequestInterval(I)V

    .line 269
    invoke-virtual {p0, p5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->setRequestTimeout(I)V

    return-void

    .line 261
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "policy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "interestedIdleStatus"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "messageFactory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 6

    .line 221
    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    return-void
.end method

.method private handlePingTimeout(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 470
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    .line 471
    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    move-result-object v0

    .line 472
    sget-object v1, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->DEAF_SPEAKER:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    if-ne v0, v1, :cond_0

    return-void

    .line 476
    :cond_0
    invoke-interface {v0, p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->keepAliveRequestTimedOut(Lorg/apache/mina/filter/keepalive/KeepAliveFilter;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method private isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z
    .locals 1

    .line 493
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isRequest(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private markStatus(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    .line 480
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 481
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeout()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setReaderIdleTime(I)V

    .line 482
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resetStatus(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    .line 486
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setReaderIdleTime(I)V

    .line 487
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setWriterIdleTime(I)V

    .line 488
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 489
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getInterestedIdleStatus()Lorg/apache/mina/core/session/IdleStatus;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    return-object v0
.end method

.method public getMessageFactory()Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    return-object v0
.end method

.method public getRequestInterval()I
    .locals 1

    .line 302
    iget v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestInterval:I

    return v0
.end method

.method public getRequestTimeout()I
    .locals 1

    .line 323
    iget v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeout:I

    return v0
.end method

.method public getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    return-object v0
.end method

.method public isForwardEvent()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 400
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isRequest(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->getResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 412
    invoke-direct {p0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 413
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 425
    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_0
    return-void
.end method

.method public onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 373
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You can\'t add the same filter instance more than once. Create another instance and add it."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p3, v0, :cond_2

    .line 436
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->getRequest(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 440
    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 444
    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->DEAF_SPEAKER:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    if-eq v0, v1, :cond_0

    .line 445
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->markStatus(Lorg/apache/mina/core/session/IoSession;)V

    .line 446
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne v0, v1, :cond_3

    .line 447
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 450
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 454
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->handlePingTimeout(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 456
    :cond_2
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p3, v0, :cond_3

    .line 457
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 458
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->handlePingTimeout(Lorg/apache/mina/core/session/IoSession;)V

    .line 464
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    if-eqz v0, :cond_4

    .line 465
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    :cond_4
    return-void
.end method

.method public setForwardEvent(Z)V
    .locals 0

    .line 364
    iput-boolean p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    return-void
.end method

.method public setRequestInterval(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 316
    iput p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestInterval:I

    return-void

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveRequestInterval must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestTimeout(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 337
    iput p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeout:I

    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveRequestTimeout must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestTimeoutHandler(Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 295
    iput-object p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    return-void

    .line 293
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeoutHandler"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
