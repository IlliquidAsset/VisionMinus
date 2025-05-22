.class public abstract Lorg/apache/mina/transport/socket/nio/NioSession;
.super Lorg/apache/mina/core/session/AbstractIoSession;
.source "NioSession.java"


# instance fields
.field protected final channel:Ljava/nio/channels/Channel;

.field private final filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

.field private key:Ljava/nio/channels/SelectionKey;

.field protected final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/service/IoProcessor;Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/Channel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Lorg/apache/mina/core/service/IoService;",
            "Ljava/nio/channels/Channel;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p2}, Lorg/apache/mina/core/session/AbstractIoSession;-><init>(Lorg/apache/mina/core/service/IoService;)V

    .line 63
    iput-object p3, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->channel:Ljava/nio/channels/Channel;

    .line 64
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 65
    new-instance p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-direct {p1, p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;-><init>(Lorg/apache/mina/core/session/AbstractIoSession;)V

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

    return-void
.end method


# virtual methods
.method abstract getChannel()Ljava/nio/channels/ByteChannel;
.end method

.method public getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->filterChain:Lorg/apache/mina/core/filterchain/IoFilterChain;

    return-object v0
.end method

.method public getProcessor()Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object v0
.end method

.method getSelectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->key:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    return v0
.end method

.method setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->key:Ljava/nio/channels/SelectionKey;

    return-void
.end method
