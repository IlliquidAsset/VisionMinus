.class public Lorg/apache/mina/proxy/filter/ProxyFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ProxyFilter.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    return-void
.end method

.method private getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;
    .locals 1

    .line 121
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 128
    invoke-interface {p1}, Lorg/apache/mina/proxy/ProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-object p1

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not managed by this filter."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setAuthenticationFailed(Z)V

    .line 111
    invoke-super {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;->exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 146
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/filter/ProxyFilter;->getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    .line 148
    monitor-enter v0

    .line 149
    :try_start_0
    check-cast p3, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 151
    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_0
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Data Read: {} ({})"

    invoke-interface {v1, v2, v0, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    :cond_1
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 161
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Pre-handshake - passing to handler"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    .line 164
    invoke-interface {v0, p1, p3}, Lorg/apache/mina/proxy/ProxyLogicHandler;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 167
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_2
    monitor-exit v0

    return-void

    .line 173
    :cond_3
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Passing remaining data to next filter"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 176
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 179
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    .line 79
    const-class p2, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "A filter chain cannot contain more than one ProxyFilter."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    .line 94
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    .line 95
    sget-object p2, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 338
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v0

    new-instance v1, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v2, Lorg/apache/mina/proxy/event/IoSessionEventType;->CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    sget-object v0, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 268
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  get proxyIoSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setProxyFilter(Lorg/apache/mina/proxy/filter/ProxyFilter;)V

    .line 272
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 277
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v1

    .line 279
    instance-of v2, v1, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    if-eqz v2, :cond_1

    .line 280
    check-cast v1, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    .line 281
    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 282
    new-instance v1, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;

    invoke-direct {v1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    goto :goto_0

    .line 284
    :cond_0
    new-instance v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-direct {v1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    goto :goto_0

    .line 287
    :cond_1
    new-instance v1, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;

    invoke-direct {v1, v0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 290
    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setHandler(Lorg/apache/mina/proxy/ProxyLogicHandler;)V

    .line 291
    invoke-interface {v1, p1}, Lorg/apache/mina/proxy/ProxyLogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 294
    :cond_2
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v0

    new-instance v1, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v2, Lorg/apache/mina/proxy/event/IoSessionEventType;->CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 323
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 324
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v0

    new-instance v1, Lorg/apache/mina/proxy/event/IoSessionEvent;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 309
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v0

    new-instance v1, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v2, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    return-void
.end method

.method public writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V
    .locals 3

    .line 206
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/filter/ProxyFilter;->getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    .line 208
    monitor-enter v0

    .line 209
    :try_start_0
    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 213
    sget-object p4, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "   handshake data: {}"

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result p2

    if-nez p2, :cond_2

    .line 221
    sget-object p1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, " Write request on closed session. Request ignored."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    sget-object p2, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string p4, " Handshaking is not complete yet. Buffering write request."

    invoke-interface {p2, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 225
    invoke-interface {v0, p1, p3}, Lorg/apache/mina/proxy/ProxyLogicHandler;->enqueueWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 228
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
