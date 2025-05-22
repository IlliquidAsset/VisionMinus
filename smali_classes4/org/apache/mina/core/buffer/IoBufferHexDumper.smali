.class Lorg/apache/mina/core/buffer/IoBufferHexDumper;
.super Ljava/lang/Object;
.source "IoBufferHexDumper.java"


# static fields
.field private static final highDigits:[B

.field private static final lowDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 43
    fill-array-data v0, :array_0

    const/16 v1, 0x100

    new-array v2, v1, [B

    new-array v3, v1, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    ushr-int/lit8 v5, v4, 0x4

    .line 50
    aget-byte v5, v0, v5

    aput-byte v5, v2, v4

    and-int/lit8 v5, v4, 0xf

    .line 51
    aget-byte v5, v0, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    :cond_0
    sput-object v2, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->highDigits:[B

    .line 55
    sput-object v3, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->lowDigits:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHexdump(Lorg/apache/mina/core/buffer/IoBuffer;I)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_5

    .line 70
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    :goto_1
    if-nez p1, :cond_2

    const-string p0, "empty"

    return-object p0

    .line 82
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 84
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    .line 87
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 88
    sget-object v4, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->highDigits:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    sget-object v4, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->lowDigits:[B

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_3

    const/16 v3, 0x20

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 96
    sget-object v4, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->highDigits:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    sget-object v4, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->lowDigits:[B

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_4

    const-string p0, "..."

    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lengthLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 1+)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
