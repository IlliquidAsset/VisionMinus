.class public abstract Lorg/apache/mina/core/buffer/AbstractIoBuffer;
.super Lorg/apache/mina/core/buffer/IoBuffer;
.source "AbstractIoBuffer.java"


# static fields
.field private static final BYTE_MASK:J = 0xffL

.field private static final INT_MASK:J = 0xffffffffL

.field private static final SHORT_MASK:J = 0xffffL


# instance fields
.field private autoExpand:Z

.field private autoShrink:Z

.field private final derived:Z

.field private mark:I

.field private minimumCapacity:I

.field private recapacityAllowed:Z


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Lorg/apache/mina/core/buffer/IoBuffer;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    const/4 v1, -0x1

    .line 86
    iput v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 108
    invoke-static {}, Lorg/apache/mina/core/buffer/IoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->setAllocator(Lorg/apache/mina/core/buffer/IoBufferAllocator;)V

    const/4 v1, 0x0

    .line 109
    iput-boolean v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 110
    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    .line 111
    iget p1, p1, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    iput p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/buffer/IoBufferAllocator;I)V
    .locals 2

    .line 94
    invoke-direct {p0}, Lorg/apache/mina/core/buffer/IoBuffer;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    const/4 v1, -0x1

    .line 86
    iput v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 95
    invoke-static {p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->setAllocator(Lorg/apache/mina/core/buffer/IoBufferAllocator;)V

    .line 96
    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    .line 98
    iput p2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    return-void
.end method

.method private autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2756
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2757
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_0
    return-object p0
.end method

.method private autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2767
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2768
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_0
    return-object p0
.end method

.method private static checkFieldSize(I)V
    .locals 3

    if-ltz p0, :cond_0

    return-void

    .line 2775
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldSize cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2573
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-string p1, "%s.%s has an ordinal value too large for a %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 271
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_3

    add-int/2addr p1, p2

    if-eqz p3, :cond_0

    .line 279
    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->normalizeCapacity(I)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p1

    .line 283
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result p3

    if-le p2, p3, :cond_1

    .line 285
    invoke-virtual {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 288
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result p2

    if-le p1, p2, :cond_2

    .line 290
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_2
    return-object p0

    .line 272
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private expand(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 259
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method private getMediumInt(BBB)I
    .locals 2

    shl-int/lit8 v0, p1, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shl-int/lit8 p2, p2, 0x8

    const v1, 0xff00

    and-int/2addr p2, v1

    or-int/2addr p2, v0

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p2, p3

    const/16 p3, 0x80

    and-int/2addr p1, p3

    if-ne p1, p3, :cond_0

    const/high16 p1, -0x1000000

    or-int/2addr p2, p1

    :cond_0
    return p2
.end method

.method private toEnum(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I)TE;"
        }
    .end annotation

    .line 2564
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    .line 2565
    array-length v1, v0

    if-gt p2, v1, :cond_0

    .line 2569
    aget-object p1, v0, p2

    return-object p1

    .line 2566
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2567
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "%d is too large of an ordinal to convert to the enum %s"

    .line 2566
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;J)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2641
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2643
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    array-length v1, p1

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    and-long v6, v2, p2

    cmp-long v8, v6, v2

    if-nez v8, :cond_0

    .line 2645
    invoke-virtual {v0, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v5, 0x1

    shl-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private toLong(Ljava/util/Set;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)J"
        }
    .end annotation

    .line 2742
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 2743
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    const-wide/16 v4, 0x1

    .line 2746
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    goto :goto_0

    .line 2744
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The enum set is too large to fit in a bit vector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-wide v1
.end method


# virtual methods
.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .line 760
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    .line 1140
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 1096
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1503
    new-instance v0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V

    return-object v0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    .line 1052
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1564
    new-instance v0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V

    return-object v0
.end method

.method public final asReadOnlyBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 1148
    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 1149
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asReadOnlyBuffer0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract asReadOnlyBuffer0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .line 804
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract buf(Ljava/nio/ByteBuffer;)V
.end method

.method public final capacity()I
    .locals 1

    .line 162
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public final capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6

    .line 170
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 179
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    .line 180
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 183
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 184
    invoke-static {}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v5

    invoke-interface {v4, p1, v5}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 185
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 186
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    .line 190
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 191
    iget p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-ltz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    iget v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 195
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_1
    return-object p0

    .line 171
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clear()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, -0x1

    .line 434
    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0
.end method

.method public final compact()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5

    .line 654
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    .line 655
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 661
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoShrink()Z

    move-result v2

    if-eqz v2, :cond_4

    ushr-int/lit8 v2, v1, 0x2

    if-gt v0, v2, :cond_4

    iget v2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    if-le v1, v2, :cond_4

    shl-int/lit8 v3, v0, 0x1

    .line 663
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v1

    :goto_0
    ushr-int/lit8 v4, v3, 0x1

    if-ge v4, v2, :cond_3

    .line 671
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v1, :cond_1

    return-object p0

    .line 679
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    if-gt v0, v2, :cond_2

    .line 688
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 689
    invoke-static {}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v4

    invoke-interface {v3, v2, v4}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 690
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 691
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    .line 694
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 683
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The amount of the remaining bytes is greater than the new capacity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 696
    :cond_4
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :goto_1
    const/4 v0, -0x1

    .line 698
    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 57
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->compareTo(Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 5

    .line 1293
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1294
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1295
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v3

    .line 1296
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ge v3, v4, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 1306
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final duplicate()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 1165
    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 1166
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->duplicate0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract duplicate0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1269
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1273
    :cond_0
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1274
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 1278
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 1279
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_0
    if-lt v2, v0, :cond_3

    .line 1280
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v5

    .line 1281
    invoke-virtual {p1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v6

    if-eq v5, v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final expand(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 255
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final expand(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 8

    .line 2355
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    ushr-int/lit8 v0, p2, 0x3

    and-int/lit8 p2, p2, 0x7

    const/high16 v1, 0xff0000

    const v2, 0xff00

    if-lez v0, :cond_0

    and-int/lit16 v3, p1, 0xff

    shl-int/lit8 v4, p1, 0x8

    and-int/2addr v4, v2

    or-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x10

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v3, v7

    or-long/2addr v3, v5

    :goto_0
    if-lez v0, :cond_0

    .line 2364
    invoke-virtual {p0, v3, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p2, 0x2

    and-int/lit8 p2, p2, 0x3

    if-lez v0, :cond_1

    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v3, p1, 0x8

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shl-int/lit8 v2, p1, 0x10

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    .line 2373
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_1
    shr-int/lit8 v0, p2, 0x1

    and-int/lit8 p2, p2, 0x1

    if-lez v0, :cond_2

    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 2381
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_2
    if-lez p2, :cond_3

    .line 2385
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_3
    return-object p0
.end method

.method public fill(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    .line 2411
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    :goto_0
    if-lez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 2416
    invoke-virtual {p0, v1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x2

    and-int/lit8 p1, p1, 0x3

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2423
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_1
    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    if-lez v0, :cond_2

    .line 2430
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_2
    if-lez p1, :cond_3

    .line 2434
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_3
    return-object p0
.end method

.method public fillAndReset(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2396
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2397
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 2399
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2401
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1
.end method

.method public fillAndReset(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2445
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2446
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 2448
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(I)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2450
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1
.end method

.method public final flip()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 461
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v0, -0x1

    .line 462
    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0
.end method

.method public final get()B
    .locals 1

    .line 501
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .locals 1

    .line 599
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public get([B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 1337
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final get([BII)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final getChar()C
    .locals 1

    .line 724
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method public final getChar(I)C
    .locals 1

    .line 742
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result p1

    return p1
.end method

.method public final getDouble()D
    .locals 2

    .line 1104
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(I)D
    .locals 2

    .line 1122
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEnum(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2469
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public getEnum(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2461
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public getEnumInt(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2500
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public getEnumInt(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2493
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public getEnumSet(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2589
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSet(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2581
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetInt(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2621
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetInt(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2613
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetLong(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2637
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetLong(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2629
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetShort(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2605
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort(I)S

    move-result p1

    int-to-long v0, p1

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumSetShort(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2597
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public getEnumShort(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2485
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort(I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public getEnumShort(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2477
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public final getFloat()F
    .locals 1

    .line 1060
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public final getFloat(I)F
    .locals 1

    .line 1078
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getHexDump()Ljava/lang/String;
    .locals 1

    const v0, 0x7fffffff

    .line 1582
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getHexDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHexDump(I)Ljava/lang/String;
    .locals 0

    .line 1590
    invoke-static {p0, p1}, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->getHexdump(Lorg/apache/mina/core/buffer/IoBuffer;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getInt()I
    .locals 1

    .line 812
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .locals 1

    .line 990
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final getLong()J
    .locals 2

    .line 1016
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(I)J
    .locals 2

    .line 1034
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediumInt()I
    .locals 5

    .line 1385
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    .line 1386
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v1

    .line 1387
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v2

    .line 1388
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1389
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v0

    return v0

    .line 1392
    :cond_0
    invoke-direct {p0, v2, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v0

    return v0
.end method

.method public getMediumInt(I)I
    .locals 4

    .line 1415
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 1416
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v1

    add-int/lit8 p1, p1, 0x2

    .line 1417
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result p1

    .line 1418
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1419
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result p1

    return p1

    .line 1422
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result p1

    return p1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2152
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 2160
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2164
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 2169
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v0

    .line 2170
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    .line 2174
    :try_start_0
    new-instance v2, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2209
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2215
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2221
    :catch_0
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 2211
    :goto_0
    :try_start_3
    new-instance v2, Lorg/apache/mina/core/buffer/BufferDataException;

    invoke-direct {v2, p1}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v1, :cond_0

    .line 2215
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2221
    :catch_3
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1

    .line 2166
    :cond_1
    new-instance p1, Lorg/apache/mina/core/buffer/BufferDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object length should be greater than 4: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2161
    :cond_2
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1
.end method

.method public getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1935
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1949
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    goto :goto_0

    .line 1946
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort()I

    move-result v0

    goto :goto_0

    .line 1943
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    const-string p1, ""

    return-object p1

    .line 1957
    :cond_3
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-16"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    and-int/lit8 p1, v0, 0x1

    if-nez p1, :cond_4

    goto :goto_1

    .line 1960
    :cond_4
    new-instance p1, Lorg/apache/mina/core/buffer/BufferDataException;

    const-string p2, "fieldSize is not even for a UTF-16 string."

    invoke-direct {p1, p2}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1963
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result p1

    .line 1964
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    if-lt p1, v2, :cond_9

    .line 1970
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1971
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1973
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 1974
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 1977
    :goto_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1978
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p2, v4, v3, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    goto :goto_3

    .line 1980
    :cond_6
    invoke-virtual {p2, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 1983
    :goto_3
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1998
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1999
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2000
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1987
    :cond_7
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1988
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 1989
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1990
    invoke-virtual {v4, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-object v3, v4

    goto :goto_2

    .line 1995
    :cond_8
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_2

    .line 1967
    :cond_9
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1

    .line 1936
    :cond_a
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1
.end method

.method public getPrefixedString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1920
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getShort()S
    .locals 1

    .line 768
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public final getShort(I)S
    .locals 1

    .line 786
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public final getSlice(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4

    if-ltz p1, :cond_1

    .line 1228
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 1229
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    add-int/2addr v0, p1

    if-lt v1, v0, :cond_0

    .line 1236
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1237
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    .line 1238
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1239
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p1

    .line 1232
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position + length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is greater "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "than limit ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1226
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSlice(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    if-ltz p2, :cond_2

    .line 1195
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 1196
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    if-gt p1, v1, :cond_1

    add-int/2addr p2, p1

    if-gt p2, v1, :cond_0

    .line 1209
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1210
    invoke-virtual {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1211
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1213
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    .line 1214
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1215
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p1

    .line 1205
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index + length ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is greater "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "than limit ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1199
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1192
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1700
    invoke-static {p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->checkFieldSize(I)V

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1706
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 1710
    :cond_1
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_2

    goto :goto_0

    .line 1713
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fieldSize is not even."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1716
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    .line 1717
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v3

    add-int/2addr p1, v2

    if-lt v3, p1, :cond_10

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_5

    .line 1728
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ne v1, p1, :cond_6

    .line 1734
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_5

    .line 1736
    :cond_6
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_3
    if-ge v1, p1, :cond_9

    .line 1740
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_9
    :goto_4
    if-ne v1, p1, :cond_a

    .line 1746
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_5

    .line 1748
    :cond_a
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1752
    :goto_5
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1753
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1754
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0

    .line 1757
    :cond_b
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1759
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1760
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 1763
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1764
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p2, v5, v4, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    goto :goto_7

    .line 1766
    :cond_d
    invoke-virtual {p2, v4}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 1769
    :goto_7
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1789
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1790
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1791
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1773
    :cond_e
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1774
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 1775
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1776
    invoke-virtual {v5, v4}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-object v4, v5

    goto :goto_6

    .line 1781
    :cond_f
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1783
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1784
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1785
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_6

    .line 1721
    :cond_10
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1
.end method

.method public getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1598
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 1602
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-16"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1604
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    .line 1605
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_2

    .line 1610
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->indexOf(B)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v3

    :goto_0
    move v7, v0

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v0, 0x1

    move v7, v4

    goto :goto_3

    :cond_2
    move v0, v2

    .line 1619
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_5

    goto :goto_2

    .line 1626
    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_3

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_3

    add-int/lit8 v4, v0, -0x1

    :goto_2
    if-gez v4, :cond_7

    sub-int v0, v3, v2

    and-int/lit8 v0, v0, -0x2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v4, 0x2

    if-gt v0, v3, :cond_8

    move v7, v0

    move v0, v4

    goto :goto_3

    :cond_8
    move v0, v4

    goto :goto_0

    :goto_3
    if-ne v2, v0, :cond_9

    .line 1653
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v1

    .line 1657
    :cond_9
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1658
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1660
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/lit8 v8, v0, 0x1

    .line 1661
    invoke-static {v8}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1664
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1665
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v6}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_5

    .line 1667
    :cond_b
    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 1670
    :goto_5
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1690
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1691
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1692
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1674
    :cond_c
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1675
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, v8

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 1676
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1677
    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-object v0, v1

    goto :goto_4

    .line 1682
    :cond_d
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1684
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1685
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1686
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_4
.end method

.method public final getUnsigned()S
    .locals 1

    .line 509
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public final getUnsigned(I)S
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1
.end method

.method public getUnsignedInt()J
    .locals 4

    .line 1377
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedInt(I)J
    .locals 4

    .line 1495
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedMediumInt()I
    .locals 5

    .line 1400
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v0

    .line 1401
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v1

    .line 1402
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v2

    .line 1403
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0

    :cond_0
    shl-int/lit8 v2, v2, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public getUnsignedMediumInt(I)I
    .locals 4

    .line 1430
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 1431
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v1

    add-int/lit8 p1, p1, 0x2

    .line 1432
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result p1

    .line 1434
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1

    :cond_0
    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    or-int/2addr p1, v0

    return p1
.end method

.method public getUnsignedShort()I
    .locals 2

    .line 1361
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 1

    .line 1369
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public final hasRemaining()Z
    .locals 2

    .line 491
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1257
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 1258
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 1259
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public indexOf(B)I
    .locals 5

    .line 2316
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2317
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->arrayOffset()I

    move-result v0

    .line 2318
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    .line 2319
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    add-int/2addr v2, v0

    .line 2320
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->array()[B

    move-result-object v3

    :goto_0
    if-ge v1, v2, :cond_3

    .line 2323
    aget-byte v4, v3, v1

    if-ne v4, p1, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2328
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 2329
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    .line 2332
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v2

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public final isAutoExpand()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAutoShrink()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoShrink:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDerived()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    return v0
.end method

.method public final isDirect()Z
    .locals 1

    .line 119
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    .line 127
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public final limit()I
    .locals 1

    .line 383
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public final limit(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 392
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 393
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-le v0, p1, :cond_0

    const/4 p1, -0x1

    .line 394
    iput p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    :cond_0
    return-object p0
.end method

.method public final mark()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 404
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 406
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0
.end method

.method public final markValue()I
    .locals 1

    .line 416
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return v0
.end method

.method public final minimumCapacity()I
    .locals 1

    .line 142
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    return v0
.end method

.method public final minimumCapacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    if-ltz p1, :cond_0

    .line 153
    iput p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    return-object p0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minimumCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .line 707
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 715
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final position()I
    .locals 1

    .line 360
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public final position(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 368
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 369
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 371
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-le v0, p1, :cond_0

    const/4 p1, -0x1

    .line 372
    iput p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    :cond_0
    return-object p0
.end method

.method public prefixedDataAvailable(I)Z
    .locals 1

    const v0, 0x7fffffff

    .line 2277
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(II)Z

    move-result p1

    return p1
.end method

.method public prefixedDataAvailable(II)Z
    .locals 3

    .line 2285
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 2298
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result v2

    goto :goto_0

    .line 2301
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefixLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2295
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort(I)I

    move-result v2

    goto :goto_0

    .line 2292
    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v2

    :goto_0
    if-ltz v2, :cond_5

    if-gt v2, p2, :cond_5

    .line 2308
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result p2

    sub-int/2addr p2, p1

    if-lt p2, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 2305
    :cond_5
    new-instance p1, Lorg/apache/mina/core/buffer/BufferDataException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dataLength: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final put(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 517
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 518
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final put(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 615
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 616
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 634
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 635
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0

    .line 1345
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put([B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 1353
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final put([BII)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 644
    invoke-direct {p0, p3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 645
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putChar(C)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 732
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 733
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putChar(IC)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 750
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 751
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putDouble(D)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/16 v0, 0x8

    .line 1112
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1113
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putDouble(ID)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/16 v0, 0x8

    .line 1130
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1131
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putEnum(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2519
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2522
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    .line 2520
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byte"

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putEnum(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2508
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2511
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    .line 2509
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte"

    invoke-direct {p0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putEnumInt(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2560
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putEnumInt(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2552
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putEnumSet(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2669
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide/16 v2, -0x100

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p2, v0

    int-to-byte p2, p2

    .line 2673
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    .line 2671
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The enum set is too large to fit in a byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putEnumSet(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2657
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide/16 v2, -0x100

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p1, v0

    int-to-byte p1, p1

    .line 2661
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    .line 2659
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The enum set is too large to fit in a byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putEnumSetInt(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2717
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide v2, -0x100000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p2, v0

    .line 2721
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    .line 2719
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The enum set is too large to fit in an int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putEnumSetInt(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2705
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide v2, -0x100000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p1, v0

    .line 2709
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    .line 2707
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The enum set is too large to fit in an int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putEnumSetLong(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2737
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putEnumSetLong(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2729
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putEnumSetShort(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2693
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide/32 v2, -0x10000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p2, v0

    int-to-short p2, p2

    .line 2697
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    .line 2695
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The enum set is too large to fit in a short: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putEnumSetShort(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2681
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    const-wide/32 v2, -0x10000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    long-to-int p1, v0

    int-to-short p1, p1

    .line 2685
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    .line 2683
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The enum set is too large to fit in a short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putEnumShort(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2541
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2544
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    .line 2542
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "short"

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putEnumShort(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2530
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2533
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    .line 2531
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "short"

    invoke-direct {p0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final putFloat(F)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 1068
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1069
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putFloat(IF)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 1086
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1087
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 820
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 821
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 998
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 999
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/16 v0, 0x8

    .line 1042
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1043
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/16 v0, 0x8

    .line 1024
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1025
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putMediumInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte p1, p1

    .line 1463
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1464
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 1466
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_0
    return-object p0
.end method

.method public putMediumInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    int-to-byte p2, p2

    .line 1481
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1482
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 1484
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_0
    return-object p0
.end method

.method public putObject(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5

    .line 2230
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    .line 2231
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v2, 0x0

    .line 2235
    :try_start_0
    new-instance v3, Lorg/apache/mina/core/buffer/AbstractIoBuffer$4;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$4;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2250
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2251
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2257
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2265
    :catch_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result p1

    .line 2266
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    sub-int v0, p1, v0

    sub-int/2addr v0, v1

    .line 2267
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2268
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 2253
    :goto_0
    :try_start_3
    new-instance v0, Lorg/apache/mina/core/buffer/BufferDataException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v2, :cond_0

    .line 2257
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2261
    :catch_3
    :cond_0
    throw p1
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;IIBLjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    const v7, 0x7fffffff

    goto :goto_0

    .line 2047
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prefixLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const v7, 0xffff

    goto :goto_0

    :cond_2
    const/16 v7, 0xff

    .line 2050
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, "The specified string is too long."

    if-gt v8, v7, :cond_14

    .line 2053
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v10, 0x0

    if-nez v8, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 2062
    :cond_3
    invoke-virtual {v0, v10}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 2059
    :cond_4
    invoke-virtual {v0, v10}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 2056
    :cond_5
    invoke-virtual {v0, v10}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_1
    return-object v0

    :cond_6
    if-eqz v2, :cond_9

    if-eq v2, v6, :cond_9

    if-eq v2, v5, :cond_8

    if-ne v2, v4, :cond_7

    const/4 v8, 0x3

    goto :goto_2

    .line 2081
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "padding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const/4 v8, 0x1

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    .line 2084
    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v11

    .line 2085
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2086
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v12

    .line 2087
    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    const/4 v13, 0x0

    .line 2093
    :goto_3
    invoke-virtual {v11}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2094
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v3, v11, v14, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v14

    goto :goto_4

    .line 2096
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v14

    .line 2099
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v15

    sub-int/2addr v15, v12

    if-gt v15, v7, :cond_13

    .line 2103
    invoke-virtual {v14}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 2131
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v12

    and-int/2addr v3, v8

    sub-int/2addr v2, v3

    move/from16 v15, p4

    invoke-virtual {v0, v15, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2132
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v12

    if-eq v1, v6, :cond_d

    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_b

    goto :goto_5

    :cond_b
    sub-int/2addr v12, v4

    .line 2141
    invoke-virtual {v0, v12, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_5

    :cond_c
    sub-int/2addr v12, v5

    int-to-short v1, v2

    .line 2138
    invoke-virtual {v0, v12, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_5

    :cond_d
    sub-int/2addr v12, v6

    int-to-byte v1, v2

    .line 2135
    invoke-virtual {v0, v12, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_5
    return-object v0

    :cond_e
    move/from16 v15, p4

    .line 2106
    invoke-virtual {v14}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 2107
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v16

    if-eqz v16, :cond_11

    if-eqz v13, :cond_10

    if-ne v13, v6, :cond_f

    .line 2114
    invoke-virtual {v11}, Ljava/nio/CharBuffer;->remaining()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v16

    mul-float v14, v14, v16

    float-to-double v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    goto :goto_3

    .line 2118
    :cond_f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expanded by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    invoke-virtual {v11}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v3

    mul-float v4, v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but that wasn\'t enough for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move-object/from16 v4, p1

    .line 2110
    invoke-virtual {v11}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v14

    mul-float v5, v5, v14

    move/from16 v17, v7

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {v0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_11
    move-object/from16 v4, p1

    move/from16 v17, v7

    goto :goto_6

    :cond_12
    move-object/from16 v4, p1

    move/from16 v17, v7

    const/4 v13, 0x0

    .line 2127
    :goto_6
    invoke-virtual {v14}, Ljava/nio/charset/CoderResult;->throwException()V

    :goto_7
    move/from16 v7, v17

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 2100
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2051
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 2026
    invoke-virtual/range {v0 .. v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IIBLjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2017
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2008
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 794
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 795
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 776
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 777
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1850
    invoke-static {p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->checkFieldSize(I)V

    if-nez p2, :cond_0

    return-object p0

    .line 1856
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1858
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1861
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fieldSize is not even."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1864
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    .line 1865
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    add-int/2addr v2, p2

    if-lt v1, v2, :cond_a

    .line 1871
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_4

    if-nez v0, :cond_3

    .line 1873
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 1875
    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1876
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1878
    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0

    .line 1882
    :cond_4
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 1883
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1884
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 1888
    :goto_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1889
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v4, 0x1

    invoke-virtual {p3, p1, p2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p2

    goto :goto_3

    .line 1891
    :cond_5
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p2

    .line 1894
    :goto_3
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    .line 1897
    :cond_6
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_2

    .line 1900
    :cond_7
    :goto_4
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1902
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result p1

    if-ge p1, v2, :cond_9

    if-nez v0, :cond_8

    .line 1904
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_5

    .line 1906
    :cond_8
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1907
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1911
    :cond_9
    :goto_5
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0

    .line 1868
    :cond_a
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1799
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1803
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1804
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1810
    :goto_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1811
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    goto :goto_1

    .line 1813
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 1816
    :goto_1
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_2

    return-object p0

    .line 1819
    :cond_2
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1820
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_4

    if-ne v2, v4, :cond_3

    .line 1827
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v4

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 1831
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expanded by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result p2

    mul-float v0, v0, p2

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but that wasn\'t enough for \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1823
    :cond_4
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v4

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 1840
    :cond_6
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->throwException()V

    goto/16 :goto_0
.end method

.method public putUnsigned(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 526
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 527
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 562
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 563
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 535
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 536
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 571
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 572
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    const/4 v0, 0x1

    .line 589
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 590
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0xff

    and-long/2addr p2, v1

    long-to-int p3, p2

    int-to-byte p2, p3

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 553
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 554
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    const/4 v0, 0x1

    .line 580
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 581
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0xff

    and-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putUnsigned(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 544
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 545
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 830
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 831
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 870
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 871
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 840
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 841
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 880
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 881
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    const/4 v0, 0x4

    .line 900
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 901
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide v1, 0xffffffffL

    and-long/2addr p2, v1

    long-to-int p3, p2

    invoke-virtual {v0, p1, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    const/4 v0, 0x4

    .line 860
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 861
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    const/4 v0, 0x4

    .line 890
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 891
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, -0x1

    and-long/2addr p1, v1

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedInt(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    const/4 v0, 0x4

    .line 850
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 851
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 910
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 911
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 950
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 951
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 920
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 921
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 p2, p2, 0xff

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 960
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 961
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 980
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 981
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int p3, p2

    int-to-short p2, p3

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 940
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 941
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 970
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 971
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int p2, p1

    int-to-short p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final putUnsignedShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 930
    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 931
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final remaining()I
    .locals 2

    .line 481
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final reset()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 424
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-object p0
.end method

.method public final rewind()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 471
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, -0x1

    .line 472
    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0
.end method

.method public final setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 231
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    .line 234
    iput-boolean p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand:Z

    return-object p0

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAutoShrink(Z)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 243
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    .line 246
    iput-boolean p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoShrink:Z

    return-object p0

    .line 244
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived buffers and their parent can\'t be shrinked."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final shrink()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7

    .line 301
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_4

    .line 305
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 306
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    .line 307
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-object p0

    .line 314
    :cond_0
    iget v3, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v1

    :cond_1
    ushr-int/lit8 v5, v4, 0x1

    if-ge v5, v3, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    if-nez v3, :cond_1

    .line 328
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v3, v1, :cond_3

    return-object p0

    .line 336
    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    .line 339
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 340
    invoke-static {}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v6

    invoke-interface {v5, v3, v6}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v5, 0x0

    .line 341
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 342
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 343
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 344
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    .line 347
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 349
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 350
    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return-object p0

    .line 302
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 2346
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2347
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final slice()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 1182
    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 1183
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract slice0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public final sweep()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 443
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 444
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fillAndReset(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final sweep(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 452
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 453
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fillAndReset(BI)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DirectBuffer"

    .line 1316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "HeapBuffer"

    .line 1318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "[pos="

    .line 1320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lim="

    .line 1322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cap="

    .line 1324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 1326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    .line 1327
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getHexDump(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 1328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
