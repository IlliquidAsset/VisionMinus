.class Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;
.super Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;
.source "ProtocolCodecFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProtocolEncoderOutputImpl"
.end annotation


# instance fields
.field private final destination:Ljava/net/SocketAddress;

.field private final nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

.field private final session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 411
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;-><init>()V

    .line 412
    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->session:Lorg/apache/mina/core/session/IoSession;

    .line 413
    iput-object p2, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 416
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->destination:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public flush()Lorg/apache/mina/core/future/WriteFuture;
    .locals 7

    .line 420
    invoke-virtual {p0}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->getMessageQueue()Ljava/util/Queue;

    move-result-object v0

    const/4 v1, 0x0

    .line 423
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 424
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 431
    :cond_1
    instance-of v3, v2, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    :cond_2
    new-instance v1, Lorg/apache/mina/core/future/DefaultWriteFuture;

    iget-object v3, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, v3}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 433
    iget-object v3, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v5, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;

    iget-object v6, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->destination:Ljava/net/SocketAddress;

    invoke-direct {v5, v2, v1, v6}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 439
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v1, Lorg/apache/mina/core/write/NothingWrittenException;

    sget-object v2, Lorg/apache/mina/core/session/AbstractIoSession;->MESSAGE_SENT_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

    invoke-direct {v1, v2}, Lorg/apache/mina/core/write/NothingWrittenException;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-static {v0, v1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    :cond_4
    return-object v1
.end method
