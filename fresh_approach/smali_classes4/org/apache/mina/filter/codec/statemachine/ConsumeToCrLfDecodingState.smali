.class public abstract Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;
.super Ljava/lang/Object;
.source "ConsumeToCrLfDecodingState.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private lastIsCR:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
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

    .line 55
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    .line 56
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    .line 60
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    .line 62
    iput-boolean v4, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 64
    iget-boolean v5, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    if-eqz v5, :cond_1

    goto :goto_2

    .line 68
    :cond_1
    iput-boolean v3, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_2
    if-ltz v2, :cond_6

    add-int/lit8 v5, v2, -0x1

    const/4 v6, 0x0

    if-ge v0, v5, :cond_4

    .line 78
    invoke-virtual {p1, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 80
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_3

    .line 81
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    goto :goto_3

    .line 83
    :cond_3
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 84
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 85
    iput-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 88
    :goto_3
    invoke-virtual {p1, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_4

    .line 91
    :cond_4
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_5

    .line 92
    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    goto :goto_4

    .line 94
    :cond_5
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 95
    iput-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_4
    add-int/2addr v2, v4

    .line 98
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 99
    invoke-virtual {p0, v0, p2}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1

    .line 102
    :cond_6
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 104
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez p2, :cond_7

    .line 105
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p2

    invoke-static {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 106
    invoke-virtual {p2, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 109
    :cond_7
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 111
    iget-boolean p1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->lastIsCR:Z

    if-eqz p1, :cond_8

    .line 112
    iget-object p1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-virtual {p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_8
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

    .line 124
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 125
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 130
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToCrLfDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1
.end method
