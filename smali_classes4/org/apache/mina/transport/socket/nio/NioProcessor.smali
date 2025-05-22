.class public final Lorg/apache/mina/transport/socket/nio/NioProcessor;
.super Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.source "NioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        ">;"
    }
.end annotation


# instance fields
.field private selector:Ljava/nio/channels/Selector;

.field private selectorProvider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 62
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 64
    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    const-string v1, "Failed to open a selector."

    invoke-direct {v0, v1, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez p2, :cond_0

    .line 81
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p2}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Lorg/apache/mina/core/RuntimeIoException;

    const-string v0, "Failed to open a selector."

    invoke-direct {p2, v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method protected allSessions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;-><init>(Ljava/util/Set;Lorg/apache/mina/transport/socket/nio/NioProcessor$1;)V

    return-object v0
.end method

.method protected bridge synthetic destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->destroy(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method protected destroy(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 145
    :cond_0
    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    :cond_1
    return-void
.end method

.method protected doDispose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    return-void
.end method

.method protected bridge synthetic getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;
    .locals 0

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->getState(Lorg/apache/mina/transport/socket/nio/NioSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object p1

    return-object p1
.end method

.method protected getState(Lorg/apache/mina/transport/socket/nio/NioSession;)Lorg/apache/mina/core/session/SessionState;
    .locals 0

    .line 222
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-nez p1, :cond_0

    .line 226
    sget-object p1, Lorg/apache/mina/core/session/SessionState;->OPENING:Lorg/apache/mina/core/session/SessionState;

    return-object p1

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 231
    sget-object p1, Lorg/apache/mina/core/session/SessionState;->OPENED:Lorg/apache/mina/core/session/SessionState;

    return-object p1

    .line 234
    :cond_1
    sget-object p1, Lorg/apache/mina/core/session/SessionState;->CLOSING:Lorg/apache/mina/core/session/SessionState;

    return-object p1
.end method

.method protected bridge synthetic init(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->init(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method protected init(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 132
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method protected isBrokenConnection()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    .line 199
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 200
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    .line 202
    instance-of v5, v4, Ljava/nio/channels/DatagramChannel;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v5}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    instance-of v5, v4, Ljava/nio/channels/SocketChannel;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/nio/channels/SocketChannel;

    .line 203
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    :cond_2
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    const/4 v2, 0x1

    goto :goto_0

    .line 212
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic isInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method protected isInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 2

    .line 254
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic isInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method protected isInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 1

    .line 261
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isReadable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method protected isReadable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 1

    .line 240
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isSelectorEmpty()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isWritable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method protected isWritable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 1

    .line 247
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->read(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result p1

    return p1
.end method

.method protected read(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    .line 317
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method protected registerNewSelector()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez v2, :cond_0

    .line 164
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    goto :goto_0

    .line 166
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v2}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v2

    .line 170
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 171
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    .line 174
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 175
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 176
    invoke-virtual {v5, v3}, Lorg/apache/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 180
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    .line 181
    iput-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected select()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method protected select(J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    return p1
.end method

.method protected selectedSessions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;-><init>(Ljava/util/Set;Lorg/apache/mina/transport/socket/nio/NioProcessor$1;)V

    return-object v0
.end method

.method protected bridge synthetic setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->setInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    return-void
.end method

.method protected setInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 273
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eqz p2, :cond_1

    or-int/lit8 p2, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 p2, v0, -0x2

    :goto_0
    if-eq v0, p2, :cond_2

    .line 287
    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_2
    :goto_1
    return-void
.end method

.method protected bridge synthetic setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    return-void
.end method

.method protected setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 298
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eqz p2, :cond_1

    or-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    and-int/lit8 p2, v0, -0x5

    .line 310
    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_2
    :goto_1
    return-void
.end method

.method protected bridge synthetic transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->transferFile(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/file/FileRegion;I)I

    move-result p1

    return p1
.end method

.method protected transferFile(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 338
    :try_start_0
    invoke-interface {p2}, Lorg/apache/mina/core/file/FileRegion;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/mina/core/file/FileRegion;->getPosition()J

    move-result-wide v1

    int-to-long v3, p3

    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p2, p1

    return p2

    :catch_0
    move-exception p1

    .line 342
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "temporarily unavailable"

    .line 343
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 347
    :cond_0
    throw p1
.end method

.method protected wakeup()V
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 114
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method protected bridge synthetic write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I

    move-result p1

    return p1
.end method

.method protected write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    if-gt v0, p3, :cond_0

    .line 323
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 326
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    .line 327
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 329
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1
.end method
