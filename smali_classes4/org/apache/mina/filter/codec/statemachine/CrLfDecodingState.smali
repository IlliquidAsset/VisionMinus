.class public abstract Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;
.super Ljava/lang/Object;
.source "CrLfDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private hasCR:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 56
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v0

    .line 58
    iget-boolean v3, p0, Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;->hasCR:Z

    const/16 v4, 0xa

    if-nez v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    .line 60
    iput-boolean v2, p0, Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;->hasCR:Z

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    if-ne v0, v4, :cond_3

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    .line 78
    :cond_3
    new-instance p1, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected LF after CR but was: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 83
    iput-boolean v1, p0, Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;->hasCR:Z

    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;->finishDecode(ZLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1

    :cond_5
    return-object p0
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/CrLfDecodingState;->finishDecode(ZLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1
.end method

.method protected abstract finishDecode(ZLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
