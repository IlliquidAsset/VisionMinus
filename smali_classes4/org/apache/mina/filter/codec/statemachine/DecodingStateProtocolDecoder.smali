.class public Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;
.super Ljava/lang/Object;
.source "DecodingStateProtocolDecoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoder;


# instance fields
.field private session:Lorg/apache/mina/core/session/IoSession;

.field private final state:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

.field private final undecodedBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/codec/statemachine/DecodingState;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->undecodedBuffers:Ljava/util/Queue;

    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->state:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->session:Lorg/apache/mina/core/session/IoSession;

    if-nez v0, :cond_0

    .line 66
    iput-object p1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->session:Lorg/apache/mina/core/session/IoSession;

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_4

    .line 72
    :goto_0
    iget-object p1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->undecodedBuffers:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 74
    :goto_1
    iget-object p1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->undecodedBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez p1, :cond_1

    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p2

    .line 80
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->state:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    invoke-interface {v0, p1, p3}, Lorg/apache/mina/filter/codec/statemachine/DecodingState;->decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 81
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p2, p1, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "consume at least one byte per decode()."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_3
    iget-object p1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->undecodedBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_1

    .line 68
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is a stateful decoder.  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "You have to create one per session."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    iget-object p1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateProtocolDecoder;->state:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    invoke-interface {p1, p2}, Lorg/apache/mina/filter/codec/statemachine/DecodingState;->finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    return-void
.end method
