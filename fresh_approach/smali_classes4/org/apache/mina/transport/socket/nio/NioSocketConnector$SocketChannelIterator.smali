.class Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;
.super Ljava/lang/Object;
.source "NioSocketConnector.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/socket/nio/NioSocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketChannelIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/channels/SocketChannel;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;->i:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/mina/transport/socket/nio/NioSocketConnector$1;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;->next()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 329
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
