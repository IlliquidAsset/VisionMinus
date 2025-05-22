.class public abstract Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;
.super Ljava/lang/Object;
.source "ShortIntegerDecodingState.java"

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    iget v2, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    .line 49
    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    shl-int/lit8 v0, v1, 0x8

    .line 50
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result p1

    or-int/2addr p1, v0

    int-to-short p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->finishDecode(SLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v1

    .line 56
    iget v2, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    new-instance p1, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    const-string v0, "Unexpected end of session while waiting for a short integer."

    invoke-direct {p1, v0}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract finishDecode(SLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
