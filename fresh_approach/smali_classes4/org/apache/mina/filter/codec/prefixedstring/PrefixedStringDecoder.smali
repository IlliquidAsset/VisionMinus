.class public Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;
.super Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.source "PrefixedStringDecoder.java"


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0x800

.field public static final DEFAULT_PREFIX_LENGTH:I = 0x4


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private maxDataLength:I

.field private prefixLength:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x4

    .line 64
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;-><init>(Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 1

    const/16 v0, 0x800

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;-><init>(Ljava/nio/charset/Charset;II)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;II)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;-><init>()V

    const/4 v0, 0x4

    .line 44
    iput v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    const/16 v0, 0x800

    .line 46
    iput v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->maxDataLength:I

    .line 54
    iput-object p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->charset:Ljava/nio/charset/Charset;

    .line 55
    iput p2, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    .line 56
    iput p3, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->maxDataLength:I

    return-void
.end method


# virtual methods
.method protected doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    iget p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->maxDataLength:I

    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->prefixedDataAvailable(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-interface {p3, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMaxDataLength()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->maxDataLength:I

    return v0
.end method

.method public getPrefixLength()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    return v0
.end method

.method public setMaxDataLength(I)V
    .locals 0

    .line 97
    iput p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->maxDataLength:I

    return-void
.end method

.method public setPrefixLength(I)V
    .locals 0

    .line 73
    iput p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->prefixLength:I

    return-void
.end method
