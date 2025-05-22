.class public abstract Lorg/apache/mina/filter/util/CommonEventFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "CommonEventFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/util/CommonEventFilter;->filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    return-void
.end method

.method protected abstract filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/util/CommonEventFilter;->filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    return-void
.end method

.method public final filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/util/CommonEventFilter;->filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    return-void
.end method

.method public final messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/util/CommonEventFilter;->filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    return-void
.end method

.method public final messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/util/CommonEventFilter;->filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    return-void
.end method

.method public final sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/util/CommonEventFilter;->filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    return-void
.end method

.method public final sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/util/CommonEventFilter;->filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    return-void
.end method

.method public final sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/util/CommonEventFilter;->filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    return-void
.end method

.method public final sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/util/CommonEventFilter;->filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    return-void
.end method
