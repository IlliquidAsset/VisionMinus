.class Lorg/apache/mina/transport/vmpipe/VmPipe;
.super Ljava/lang/Object;
.source "VmPipe.java"


# instance fields
.field private final acceptor:Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

.field private final address:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

.field private final handler:Lorg/apache/mina/core/service/IoHandler;

.field private final listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;


# direct methods
.method constructor <init>(Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;Lorg/apache/mina/transport/vmpipe/VmPipeAddress;Lorg/apache/mina/core/service/IoHandler;Lorg/apache/mina/core/service/IoServiceListenerSupport;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->acceptor:Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

    .line 41
    iput-object p2, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->address:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .line 42
    iput-object p3, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->handler:Lorg/apache/mina/core/service/IoHandler;

    .line 43
    iput-object p4, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    return-void
.end method


# virtual methods
.method public getAcceptor()Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->acceptor:Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

    return-object v0
.end method

.method public getAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->address:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/core/service/IoHandler;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->handler:Lorg/apache/mina/core/service/IoHandler;

    return-object v0
.end method

.method public getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    return-object v0
.end method
