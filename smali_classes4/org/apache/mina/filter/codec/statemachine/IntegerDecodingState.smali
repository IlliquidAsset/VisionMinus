.class public abstract Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;
.super Ljava/lang/Object;
.source "IntegerDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private counter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 43
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 44
    iget v4, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v5, :cond_2

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 58
    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    shl-int/lit8 v0, v1, 0x18

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    .line 59
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result p1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->finishDecode(ILorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    .line 54
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v3

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v2

    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v1

    .line 65
    :goto_1
    iget v4, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/mina/filter/codec/statemachine/IntegerDecodingState;->counter:I

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method protected abstract finishDecode(ILorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    new-instance p1, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    const-string v0, "Unexpected end of session while waiting for an integer."

    invoke-direct {p1, v0}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
