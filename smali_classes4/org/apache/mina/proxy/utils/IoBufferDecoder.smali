.class public Lorg/apache/mina/proxy/utils/IoBufferDecoder;
.super Ljava/lang/Object;
.source "IoBufferDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;
    }
.end annotation


# instance fields
.field private ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;-><init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;-><init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    return-void
.end method


# virtual methods
.method public decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 9

    .line 186
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getContentLength()I

    move-result v0

    .line 187
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getDecodedBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 189
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-le v0, v4, :cond_2

    if-nez v1, :cond_0

    .line 194
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 198
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 199
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    .line 200
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 201
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1, v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 202
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    const/4 p1, 0x0

    return-object p1

    .line 207
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    .line 208
    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 209
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 210
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 211
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 212
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->reset()V

    return-object v1

    .line 218
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    .line 219
    iget-object v4, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v4}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getMatchCount()I

    move-result v4

    .line 220
    iget-object v5, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v5}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getDelimiter()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v5

    .line 222
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 223
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v6

    .line 224
    invoke-virtual {v5, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 226
    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 228
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    .line 229
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 231
    invoke-virtual {p1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_4

    .line 234
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 237
    :cond_4
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 238
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 240
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 241
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->reset()V

    return-object v1

    .line 246
    :cond_5
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v4, 0x0

    goto :goto_0

    .line 252
    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_7

    .line 253
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 254
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 255
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 259
    :cond_7
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1, v4}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    .line 260
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1, v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-object v1
.end method

.method public setContentLength(IZ)V
    .locals 2

    if-lez p1, :cond_1

    .line 142
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v0, p1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    if-eqz p2, :cond_0

    .line 144
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    :cond_0
    return-void

    .line 139
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setDelimiter([BZ)V
    .locals 1

    if-eqz p1, :cond_1

    .line 165
    array-length v0, p1

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 167
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 169
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDelimiter(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 170
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    if-eqz p2, :cond_0

    .line 172
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    :cond_0
    return-void

    .line 161
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null delimiter not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
