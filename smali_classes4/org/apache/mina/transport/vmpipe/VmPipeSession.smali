.class Lorg/apache/mina/transport/vmpipe/VmPipeSession;
.super Lorg/apache/mina/core/session/AbstractIoSession;
.source "VmPipeSession.java"


# static fields
.field static final METADATA:Lorg/apache/mina/core/service/TransportMetadata;


# instance fields
.field private final filterChain:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

.field private final localAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field final receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

.field private final remoteSession:Lorg/apache/mina/transport/vmpipe/VmPipeSession;

.field private final serviceAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

.field private final serviceListeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 45
    new-instance v8, Lorg/apache/mina/core/service/DefaultTransportMetadata;

    const-class v5, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    const-class v6, Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/Object;

    aput-object v1, v7, v0

    const-string v1, "mina"

    const-string v2, "vmpipe"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/core/service/DefaultTransportMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v8, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-void
.end method

.method constructor <init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoServiceListenerSupport;Lorg/apache/mina/transport/vmpipe/VmPipeAddress;Lorg/apache/mina/core/service/IoHandler;Lorg/apache/mina/transport/vmpipe/VmPipe;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession;-><init>(Lorg/apache/mina/core/service/IoService;)V

    .line 70
    new-instance p1, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;

    invoke-direct {p1}, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    .line 71
    iput-object p2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->serviceListeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    .line 72
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->lock:Ljava/util/concurrent/locks/Lock;

    .line 73
    iput-object p3, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->localAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .line 74
    invoke-virtual {p5}, Lorg/apache/mina/transport/vmpipe/VmPipe;->getAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->serviceAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->remoteAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .line 75
    new-instance p1, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-direct {p1, p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;-><init>(Lorg/apache/mina/core/session/AbstractIoSession;)V

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->filterChain:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    .line 76
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 78
    new-instance p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-direct {p1, p0, p5}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeSession;Lorg/apache/mina/transport/vmpipe/VmPipe;)V

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/transport/vmpipe/VmPipeSession;Lorg/apache/mina/transport/vmpipe/VmPipe;)V
    .locals 1

    .line 85
    invoke-virtual {p2}, Lorg/apache/mina/transport/vmpipe/VmPipe;->getAcceptor()Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;-><init>(Lorg/apache/mina/core/service/IoService;)V

    .line 86
    new-instance v0, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    .line 87
    invoke-virtual {p2}, Lorg/apache/mina/transport/vmpipe/VmPipe;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->serviceListeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    .line 88
    iget-object p2, p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->lock:Ljava/util/concurrent/locks/Lock;

    iput-object p2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->lock:Ljava/util/concurrent/locks/Lock;

    .line 89
    iget-object p2, p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->remoteAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    iput-object p2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->serviceAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    iput-object p2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->localAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .line 90
    iget-object p2, p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->localAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    iput-object p2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->remoteAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .line 91
    new-instance p2, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-direct {p2, p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;-><init>(Lorg/apache/mina/core/session/AbstractIoSession;)V

    iput-object p2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->filterChain:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    .line 92
    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .line 93
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    return-object v0
.end method

.method public getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->filterChain:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->localAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public getProcessor()Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/vmpipe/VmPipeSession;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->filterChain:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->remoteAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    return-object v0
.end method

.method public bridge synthetic getServiceAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getServiceAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->serviceAddress:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method getServiceListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->serviceListeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .line 118
    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method getWriteRequestQueue0()Lorg/apache/mina/core/write/WriteRequestQueue;
    .locals 1

    .line 139
    invoke-super {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    return-object v0
.end method

.method increaseWrittenBytes0(IJ)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    return-void
.end method
