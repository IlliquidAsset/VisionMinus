.class public Lcom/powervision/gcs/mina/SonarDataDecoder;
.super Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.source "SonarDataDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    .line 23
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 25
    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v2, 0x1

    .line 26
    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xaa

    if-ne p1, v3, :cond_2

    const/16 p1, 0x55

    if-ne v2, p1, :cond_2

    const/16 p1, 0x9

    .line 29
    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v0

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    .line 30
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    add-int/lit8 p1, p1, 0xb

    if-ge v0, p1, :cond_1

    .line 32
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    return v1

    .line 37
    :cond_1
    new-array v0, p1, [B

    .line 38
    invoke-virtual {p2, v0, v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 39
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 40
    invoke-interface {p3, v0}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    return v1

    .line 45
    :cond_2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    return v1
.end method
