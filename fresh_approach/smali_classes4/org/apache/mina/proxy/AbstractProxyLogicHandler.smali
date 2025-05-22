.class public abstract Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
.super Ljava/lang/Object;
.source "AbstractProxyLogicHandler.java"

# interfaces
.implements Lorg/apache/mina/proxy/ProxyLogicHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private handshakeComplete:Z

.field private proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field private writeRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    .line 72
    iput-object p1, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-void
.end method


# virtual methods
.method protected closeSession(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 189
    sget-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    iget-object p1, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setAuthenticationFailed(Z)V

    goto :goto_0

    .line 192
    :cond_0
    sget-object p2, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 195
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    return-void
.end method

.method public declared-synchronized enqueueWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;

    invoke-direct {v1, p1, p2}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized flushPendingWriteRequests()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 153
    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " flushPendingWriteRequests()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 156
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;

    if-eqz v0, :cond_1

    .line 161
    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Flushing buffered write request: {}"

    invoke-static {v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$000(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$100(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$000(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v0

    return-object v0
.end method

.method public getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-object v0
.end method

.method protected getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    return-object v0
.end method

.method public isHandshakeComplete()Z
    .locals 1

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final setHandshakeComplete()V
    .locals 3

    .line 129
    monitor-enter p0

    const/4 v0, 0x1

    .line 130
    :try_start_0
    iput-boolean v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getConnector()Lorg/apache/mina/proxy/ProxyConnector;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/ProxyConnector;->fireConnected(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/future/ConnectFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;

    .line 136
    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "  handshake completed"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 140
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->flushPendingSessionEvents()V

    .line 141
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->flushPendingWriteRequests()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Unable to flush pending write requests"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 131
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 4

    .line 105
    new-instance v0, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;

    invoke-direct {v0, p2}, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;-><init>(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 107
    sget-object p2, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "   session write: {}"

    invoke-interface {p2, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    new-instance p2, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 110
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    new-instance v3, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v3, v0, p2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V

    return-object p2
.end method
