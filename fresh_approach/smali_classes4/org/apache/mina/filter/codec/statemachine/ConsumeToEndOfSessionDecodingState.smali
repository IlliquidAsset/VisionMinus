.class public abstract Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;
.super Ljava/lang/Object;
.source "ConsumeToEndOfSessionDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private buffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final maxLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->maxLength:I

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez p2, :cond_0

    const/16 p2, 0x100

    .line 54
    invoke-static {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 57
    :cond_0
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->maxLength:I

    if-gt p2, v0, :cond_1

    .line 60
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0

    .line 58
    :cond_1
    new-instance p1, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received data exceeds "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->maxLength:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " byte(s)."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
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

    const/4 v0, 0x0

    .line 69
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 70
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 72
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 73
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, v1, p1}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1
.end method
