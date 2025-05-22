.class public Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;
.super Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;
.source "PrefixedStringEncoder.java"


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0x800

.field public static final DEFAULT_PREFIX_LENGTH:I = 0x4


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private maxDataLength:I

.field private prefixLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x4

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;-><init>(Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 1

    const/16 v0, 0x800

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;-><init>(Ljava/nio/charset/Charset;II)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;II)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;-><init>()V

    const/4 v0, 0x4

    .line 44
    iput v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    const/16 v0, 0x800

    .line 46
    iput v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    .line 49
    iput-object p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->charset:Ljava/nio/charset/Charset;

    .line 50
    iput p2, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    .line 51
    iput p3, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    check-cast p2, Ljava/lang/String;

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    .line 114
    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    iget-object v1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->putPrefixedString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 115
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p2

    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    if-gt p2, v0, :cond_0

    .line 118
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 119
    invoke-interface {p3, p1}, Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;->write(Ljava/lang/Object;)V

    return-void

    .line 116
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data length: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getMaxDataLength()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    return v0
.end method

.method public getPrefixLength()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    return v0
.end method

.method public setMaxDataLength(I)V
    .locals 0

    .line 99
    iput p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    return-void
.end method

.method public setPrefixLength(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefixLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    return-void
.end method
