.class Lcom/powervision/gcs/mina/ConnectionManager$1;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/mina/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/mina/ConnectionManager$1$MyIoFilterAdapter;,
        Lcom/powervision/gcs/mina/ConnectionManager$1$DefaultHandler;
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lcom/powervision/gcs/mina/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/mina/ConnectionManager;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-static {v2}, Lcom/powervision/gcs/mina/ConnectionManager;->access$100(Lcom/powervision/gcs/mina/ConnectionManager;)Lcom/powervision/gcs/mina/ConnectionConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/gcs/mina/ConnectionConfig;->getIp()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-static {v3}, Lcom/powervision/gcs/mina/ConnectionManager;->access$100(Lcom/powervision/gcs/mina/ConnectionManager;)Lcom/powervision/gcs/mina/ConnectionConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/gcs/mina/ConnectionConfig;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/powervision/gcs/mina/ConnectionManager;->access$002(Lcom/powervision/gcs/mina/ConnectionManager;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    .line 114
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    new-instance v1, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-direct {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;-><init>()V

    iput-object v1, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    .line 115
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-static {v1}, Lcom/powervision/gcs/mina/ConnectionManager;->access$100(Lcom/powervision/gcs/mina/ConnectionManager;)Lcom/powervision/gcs/mina/ConnectionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/mina/ConnectionConfig;->getReadBufferSize()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setReadBufferSize(I)V

    .line 117
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-interface {v0, v1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setReaderIdleTime(I)V

    .line 118
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setWriterIdleTime(I)V

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setBothIdleTime(I)V

    .line 120
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-interface {v0, v1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setSendBufferSize(I)V

    .line 121
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setTcpNoDelay(Z)V

    .line 122
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/mina/ConnectionManager$1$MyIoFilterAdapter;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/mina/ConnectionManager$1$MyIoFilterAdapter;-><init>(Lcom/powervision/gcs/mina/ConnectionManager$1;)V

    const-string v2, "reconnection"

    invoke-virtual {v0, v2, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 125
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v0

    new-instance v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    new-instance v2, Lcom/powervision/gcs/mina/SonarCodecFactory;

    invoke-direct {v2}, Lcom/powervision/gcs/mina/SonarCodecFactory;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecFactory;)V

    const-string v2, "mycoder"

    invoke-virtual {v0, v2, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 127
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    iget-object v1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-static {v1}, Lcom/powervision/gcs/mina/ConnectionManager;->access$200(Lcom/powervision/gcs/mina/ConnectionManager;)Lorg/apache/mina/core/service/IoHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->setHandler(Lorg/apache/mina/core/service/IoHandler;)V

    .line 128
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    iget-object v1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-static {v1}, Lcom/powervision/gcs/mina/ConnectionManager;->access$000(Lcom/powervision/gcs/mina/ConnectionManager;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->setDefaultRemoteAddress(Ljava/net/InetSocketAddress;)V

    .line 129
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    iget-object v1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v1, v1, Lcom/powervision/gcs/mina/ConnectionManager;->ioServiceListener:Lorg/apache/mina/core/service/IoServiceListener;

    invoke-virtual {v0, v1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->addListener(Lorg/apache/mina/core/service/IoServiceListener;)V

    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 4

    const-string v0, "ConnectionManager"

    const-string v1, "connect()"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v1, v1, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-virtual {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->connect()Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 141
    invoke-interface {v1, v2, v3}, Lorg/apache/mina/core/future/ConnectFuture;->awaitUninterruptibly(J)Z

    .line 142
    iget-object v2, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-interface {v1}, Lorg/apache/mina/core/future/ConnectFuture;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/powervision/gcs/mina/ConnectionManager;->access$302(Lcom/powervision/gcs/mina/ConnectionManager;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/session/IoSession;

    .line 143
    iget-object v1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-static {v1}, Lcom/powervision/gcs/mina/ConnectionManager;->access$300(Lcom/powervision/gcs/mina/ConnectionManager;)Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-static {v1}, Lcom/powervision/gcs/mina/ConnectionManager;->access$300(Lcom/powervision/gcs/mina/ConnectionManager;)Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/powervision/gcs/mina/SessionManager;->getInstance()Lcom/powervision/gcs/mina/SessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-static {v2}, Lcom/powervision/gcs/mina/ConnectionManager;->access$300(Lcom/powervision/gcs/mina/ConnectionManager;)Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    new-instance v3, Lcom/powervision/gcs/mina/ConnectionManager$1$1;

    invoke-direct {v3, p0}, Lcom/powervision/gcs/mina/ConnectionManager$1$1;-><init>(Lcom/powervision/gcs/mina/ConnectionManager$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/powervision/gcs/mina/SessionManager;->setSession(Lorg/apache/mina/core/session/IoSession;Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;)V

    const/4 v0, 0x1

    return v0

    .line 157
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/mina/SessionManager;->getInstance()Lcom/powervision/gcs/mina/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/mina/SessionManager;->removeSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public disConnect()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object v0, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->dispose()V

    .line 172
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    .line 173
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-static {v0, v1}, Lcom/powervision/gcs/mina/ConnectionManager;->access$302(Lcom/powervision/gcs/mina/ConnectionManager;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/session/IoSession;

    .line 174
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-static {v0, v1}, Lcom/powervision/gcs/mina/ConnectionManager;->access$002(Lcom/powervision/gcs/mina/ConnectionManager;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    .line 175
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    invoke-static {v0, v1}, Lcom/powervision/gcs/mina/ConnectionManager;->access$402(Lcom/powervision/gcs/mina/ConnectionManager;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public serviceActivated(Lorg/apache/mina/core/service/IoService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public serviceDeactivated(Lorg/apache/mina/core/service/IoService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Lorg/apache/mina/core/service/IoService;->isActive()Z

    :cond_0
    return-void
.end method

.method public serviceIdle(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Lorg/apache/mina/core/service/IoService;->isActive()Z

    :cond_0
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1;->this$0:Lcom/powervision/gcs/mina/ConnectionManager;

    iget-object p1, p1, Lcom/powervision/gcs/mina/ConnectionManager;->mConnection:Lorg/apache/mina/transport/socket/nio/NioSocketConnector;

    if-nez p1, :cond_0

    :cond_1
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    :cond_0
    return-void
.end method

.method public sessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    :cond_0
    return-void
.end method
