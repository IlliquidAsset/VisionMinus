.class public Lorg/apache/mina/filter/executor/WriteRequestFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "WriteRequestFilter.java"


# instance fields
.field private final queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    new-instance v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;

    invoke-direct {v0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/WriteRequestFilter;-><init>(Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "queueHandler"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/apache/mina/filter/executor/WriteRequestFilter;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object p0
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 101
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object p2, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {p2, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 108
    new-instance p2, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;

    invoke-direct {p2, p0, v0}, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;-><init>(Lorg/apache/mina/filter/executor/WriteRequestFilter;Lorg/apache/mina/core/session/IoEvent;)V

    invoke-interface {p1, p2}, Lorg/apache/mina/core/future/WriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    :cond_1
    return-void
.end method

.method public getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method
