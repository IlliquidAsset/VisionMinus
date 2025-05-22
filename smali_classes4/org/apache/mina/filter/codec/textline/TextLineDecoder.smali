.class public Lorg/apache/mina/filter/codec/textline/TextLineDecoder;
.super Ljava/lang/Object;
.source "TextLineDecoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    }
.end annotation


# instance fields
.field private final CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

.field private bufferLength:I

.field private final charset:Ljava/nio/charset/Charset;

.field private delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field private maxLineLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    sget-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 74
    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p1}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 94
    sget-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1

    .line 105
    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "context"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    const/16 v0, 0x400

    .line 54
    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    const/16 v0, 0x80

    .line 57
    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 124
    iput-object p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->charset:Ljava/nio/charset/Charset;

    .line 125
    iput-object p2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    .line 128
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 129
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 132
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :catch_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 138
    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_0
    return-void

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "delimiter parameter should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset parameter shuld not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 1

    .line 84
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;)Ljava/nio/charset/Charset;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;)I
    .locals 0

    .line 42
    iget p0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    return p0
.end method

.method private decodeAuto(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;,
            Lorg/apache/mina/filter/codec/ProtocolDecoderException;
        }
    .end annotation

    .line 244
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getMatchCount()I

    move-result v0

    .line 247
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    .line 248
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v2

    .line 250
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_0

    .line 273
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    .line 274
    invoke-virtual {p3, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 275
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 277
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 279
    invoke-virtual {p3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 280
    invoke-virtual {p3, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 282
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result v1

    if-nez v1, :cond_3

    .line 283
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 285
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 288
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 289
    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 290
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    .line 292
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {p0, p2, v0, p4}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    move v1, v3

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1

    .line 299
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result p2

    .line 300
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->reset()V

    .line 301
    new-instance p1, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Line is too long: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 310
    :cond_4
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 311
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 313
    invoke-virtual {p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->setMatchCount(I)V

    return-void
.end method

.method private decodeNormal(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;,
            Lorg/apache/mina/filter/codec/ProtocolDecoderException;
        }
    .end annotation

    .line 321
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getMatchCount()I

    move-result v0

    .line 324
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    .line 325
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v2

    .line 327
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 328
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v3

    .line 330
    iget-object v4, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 333
    iget-object v3, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 335
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    .line 336
    invoke-virtual {p3, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 337
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 339
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 341
    invoke-virtual {p3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 342
    invoke-virtual {p3, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 344
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result v1

    if-nez v1, :cond_1

    .line 345
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 346
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 347
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 350
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p4}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1

    .line 355
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    move-result p2

    .line 356
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->reset()V

    .line 357
    new-instance p1, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Line is too long: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_2
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 371
    :cond_3
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 372
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 374
    invoke-virtual {p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->setMatchCount(I)V

    return-void
.end method

.method private getContext(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    .locals 3

    .line 211
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    iget v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;-><init>(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;ILorg/apache/mina/filter/codec/textline/TextLineDecoder$1;)V

    .line 215
    iget-object v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->getContext(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    move-result-object v0

    .line 197
    sget-object v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    iget-object v2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->decodeAuto(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->decodeNormal(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    :goto_0
    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public getBufferLength()I
    .locals 1

    .line 188
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    return v0
.end method

.method public getMaxLineLength()I
    .locals 1

    .line 149
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    return v0
.end method

.method public setBufferLength(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 180
    iput p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    return-void

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bufferLength ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") should be a positive value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLineLength(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 165
    iput p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxLineLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") should be a positive value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 0

    .line 387
    invoke-interface {p3, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    return-void
.end method
