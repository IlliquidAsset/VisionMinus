.class public abstract Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.super Lorg/apache/mina/filter/codec/ProtocolDecoderAdapter;
.source "CumulativeProtocolDecoder.java"


# instance fields
.field private final BUFFER:Lorg/apache/mina/core/session/AttributeKey;

.field private transportMetadataFragmentation:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 113
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolDecoderAdapter;-><init>()V

    .line 103
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "buffer"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->transportMetadataFragmentation:Z

    return-void
.end method

.method private removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private storeRemainingInSession(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    .line 242
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 245
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 247
    iget-object p1, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, p1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->transportMetadataFragmentation:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void

    .line 140
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->isAutoExpand()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    nop

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-object p2, v0

    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 164
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 165
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 166
    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 167
    invoke-virtual {v1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 168
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 172
    iget-object p2, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v1

    :goto_1
    const/4 v1, 0x1

    .line 180
    :cond_5
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    .line 181
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 183
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    if-eq v2, v0, :cond_6

    .line 187
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 184
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "doDecode() can\'t return true when buffer is not consumed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_7
    :goto_2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_9

    if-eqz v1, :cond_8

    .line 199
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->isAutoExpand()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 200
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_3

    .line 202
    :cond_8
    invoke-direct {p0, p2, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->storeRemainingInSession(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    .line 206
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 234
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method protected abstract doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setTransportMetadataFragmentation(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->transportMetadataFragmentation:Z

    return-void
.end method
