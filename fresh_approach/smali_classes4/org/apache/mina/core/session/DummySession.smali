.class public Lorg/apache/mina/core/session/DummySession;
.super Lorg/apache/mina/core/session/AbstractIoSession;
.source "DummySession.java"


# static fields
.field private static final ANONYMOUS_ADDRESS:Ljava/net/SocketAddress;

.field private static final TRANSPORT_METADATA:Lorg/apache/mina/core/service/TransportMetadata;


# instance fields
.field private volatile config:Lorg/apache/mina/core/session/IoSessionConfig;

.field private final filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

.field private volatile handler:Lorg/apache/mina/core/service/IoHandler;

.field private volatile localAddress:Ljava/net/SocketAddress;

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile remoteAddress:Ljava/net/SocketAddress;

.field private volatile service:Lorg/apache/mina/core/service/IoService;

.field private volatile transportMetadata:Lorg/apache/mina/core/service/TransportMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 56
    new-instance v8, Lorg/apache/mina/core/service/DefaultTransportMetadata;

    const-class v5, Ljava/net/SocketAddress;

    const-class v6, Lorg/apache/mina/core/session/IoSessionConfig;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/Object;

    aput-object v1, v7, v0

    const-string v1, "mina"

    const-string v2, "dummy"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/core/service/DefaultTransportMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v8, Lorg/apache/mina/core/session/DummySession;->TRANSPORT_METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    .line 59
    new-instance v0, Lorg/apache/mina/core/session/DummySession$1;

    invoke-direct {v0}, Lorg/apache/mina/core/session/DummySession$1;-><init>()V

    sput-object v0, Lorg/apache/mina/core/session/DummySession;->ANONYMOUS_ADDRESS:Ljava/net/SocketAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 89
    new-instance v0, Lorg/apache/mina/core/session/DummySession$5;

    new-instance v1, Lorg/apache/mina/core/session/DummySession$3;

    invoke-direct {v1}, Lorg/apache/mina/core/session/DummySession$3;-><init>()V

    new-instance v2, Lorg/apache/mina/core/session/DummySession$4;

    invoke-direct {v2}, Lorg/apache/mina/core/session/DummySession$4;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/DummySession$5;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;-><init>(Lorg/apache/mina/core/service/IoService;)V

    .line 70
    new-instance v0, Lorg/apache/mina/core/session/DummySession$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/session/DummySession$2;-><init>(Lorg/apache/mina/core/session/DummySession;)V

    iput-object v0, p0, Lorg/apache/mina/core/session/DummySession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    .line 73
    new-instance v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;-><init>(Lorg/apache/mina/core/session/AbstractIoSession;)V

    iput-object v0, p0, Lorg/apache/mina/core/session/DummySession;->filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

    .line 77
    new-instance v0, Lorg/apache/mina/core/service/IoHandlerAdapter;

    invoke-direct {v0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/DummySession;->handler:Lorg/apache/mina/core/service/IoHandler;

    .line 79
    sget-object v0, Lorg/apache/mina/core/session/DummySession;->ANONYMOUS_ADDRESS:Ljava/net/SocketAddress;

    iput-object v0, p0, Lorg/apache/mina/core/session/DummySession;->localAddress:Ljava/net/SocketAddress;

    .line 81
    sget-object v0, Lorg/apache/mina/core/session/DummySession;->ANONYMOUS_ADDRESS:Ljava/net/SocketAddress;

    iput-object v0, p0, Lorg/apache/mina/core/session/DummySession;->remoteAddress:Ljava/net/SocketAddress;

    .line 83
    sget-object v0, Lorg/apache/mina/core/session/DummySession;->TRANSPORT_METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    iput-object v0, p0, Lorg/apache/mina/core/session/DummySession;->transportMetadata:Lorg/apache/mina/core/service/TransportMetadata;

    .line 130
    new-instance v0, Lorg/apache/mina/core/session/DummySession$6;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/session/DummySession$6;-><init>(Lorg/apache/mina/core/session/DummySession;)V

    iput-object v0, p0, Lorg/apache/mina/core/session/DummySession;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 193
    invoke-super {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/session/DummySession;->service:Lorg/apache/mina/core/service/IoService;

    .line 196
    :try_start_0
    new-instance v0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;

    invoke-direct {v0}, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;-><init>()V

    .line 197
    invoke-interface {v0, p0}, Lorg/apache/mina/core/session/IoSessionDataStructureFactory;->getAttributeMap(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/session/DummySession;->setAttributeMap(Lorg/apache/mina/core/session/IoSessionAttributeMap;)V

    .line 198
    invoke-interface {v0, p0}, Lorg/apache/mina/core/session/IoSessionDataStructureFactory;->getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/DummySession;->setWriteRequestQueue(Lorg/apache/mina/core/write/WriteRequestQueue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 200
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method static synthetic access$000()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .line 54
    sget-object v0, Lorg/apache/mina/core/session/DummySession;->TRANSPORT_METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    return-object v0
.end method

.method public getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/core/service/IoHandler;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->handler:Lorg/apache/mina/core/service/IoHandler;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final getProcessor()Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getService()Lorg/apache/mina/core/service/IoService;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->service:Lorg/apache/mina/core/service/IoService;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession;->transportMetadata:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method public setConfig(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 221
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    return-void

    .line 218
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "config"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHandler(Lorg/apache/mina/core/service/IoHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 248
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->handler:Lorg/apache/mina/core/service/IoHandler;

    return-void

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "handler"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocalAddress(Ljava/net/SocketAddress;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 276
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->localAddress:Ljava/net/SocketAddress;

    return-void

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "localAddress"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRemoteAddress(Ljava/net/SocketAddress;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 289
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->remoteAddress:Ljava/net/SocketAddress;

    return-void

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "remoteAddress"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScheduledWriteBytes(I)V
    .locals 0

    .line 345
    invoke-super {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledWriteBytes(I)V

    return-void
.end method

.method public setScheduledWriteMessages(I)V
    .locals 0

    .line 353
    invoke-super {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledWriteMessages(I)V

    return-void
.end method

.method public setService(Lorg/apache/mina/core/service/IoService;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 309
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->service:Lorg/apache/mina/core/service/IoService;

    return-void

    .line 306
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "service"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransportMetadata(Lorg/apache/mina/core/service/TransportMetadata;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 337
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession;->transportMetadata:Lorg/apache/mina/core/service/TransportMetadata;

    return-void

    .line 334
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "transportMetadata"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateThroughput(Z)V
    .locals 2

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0, v0, v1, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->updateThroughput(JZ)V

    return-void
.end method
