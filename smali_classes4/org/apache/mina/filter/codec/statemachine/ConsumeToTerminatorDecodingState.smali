.class public abstract Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;
.super Ljava/lang/Object;
.source "ConsumeToTerminatorDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private buffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final terminator:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-byte p1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->terminator:B

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iget-byte v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->terminator:B

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->indexOf(B)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_3

    .line 53
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v2

    .line 56
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    const/4 v4, 0x0

    if-ge v3, v0, :cond_1

    .line 57
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 59
    iget-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v3, :cond_0

    .line 60
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v3, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 63
    iget-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 64
    iput-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 67
    :goto_0
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 70
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 71
    invoke-static {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 74
    iput-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_1
    add-int/2addr v0, v1

    .line 77
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 78
    invoke-virtual {p0, v3, p2}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1

    .line 81
    :cond_3
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez p2, :cond_4

    .line 82
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p2

    invoke-static {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 83
    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 86
    :cond_4
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0
.end method

.method protected abstract finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 97
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 102
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToTerminatorDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1
.end method
