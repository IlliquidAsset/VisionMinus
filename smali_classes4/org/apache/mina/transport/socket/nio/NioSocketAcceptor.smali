.class public final Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;
.super Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.source "NioSocketAcceptor.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/SocketAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        "Ljava/nio/channels/ServerSocketChannel;",
        ">;",
        "Lorg/apache/mina/transport/socket/SocketAcceptor;"
    }
.end annotation


# instance fields
.field private volatile selector:Ljava/nio/channels/Selector;

.field private volatile selectorProvider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 62
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 73
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 74
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    return-void
.end method

.method public constructor <init>(ILjava/nio/channels/spi/SelectorProvider;)V
    .locals 2

    .line 110
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 111
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    .line 112
    iput-object p2, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 97
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;)V"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 85
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    check-cast p2, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/ServerSocketChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;

    move-result-object p1

    return-object p1
.end method

.method protected accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/ServerSocketChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/ServerSocketChannel;",
            ")",
            "Lorg/apache/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 186
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2, v1}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 189
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {p2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v0

    .line 200
    :cond_2
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;-><init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/SocketChannel;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected bridge synthetic close(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    return-void
.end method

.method protected close(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 303
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->close()V

    return-void
.end method

.method protected destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    :cond_0
    return-void
.end method

.method public getDefaultLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 167
    invoke-super {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getDefaultLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 159
    invoke-super {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .line 151
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method protected init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method protected init(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez p1, :cond_0

    .line 131
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    :goto_0
    return-void
.end method

.method protected bridge synthetic localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->localAddress(Ljava/nio/channels/ServerSocketChannel;)Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method protected localAddress(Ljava/nio/channels/ServerSocketChannel;)Ljava/net/SocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method protected open(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 222
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 225
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->isReuseAddress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getBacklog()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    iget-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    return-object v0

    :catch_0
    move-exception v1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while binding on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "original message : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 242
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 244
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 252
    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    throw p1
.end method

.method protected select()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method protected selectedHandles()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/ServerSocketChannel;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;-><init>(Ljava/util/Collection;Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$1;)V

    return-object v0
.end method

.method public setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    return-void
.end method

.method protected wakeup()V
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method
