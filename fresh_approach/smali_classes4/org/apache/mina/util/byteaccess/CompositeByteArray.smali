.class public final Lorg/apache/mina/util/byteaccess/CompositeByteArray;
.super Lorg/apache/mina/util/byteaccess/AbstractByteArray;
.source "CompositeByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;
    }
.end annotation


# instance fields
.field private final bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

.field private final byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

.field private order:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;-><init>()V

    .line 83
    new-instance v0, Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-direct {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    .line 110
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/util/byteaccess/CompositeByteArray;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->checkBounds(II)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayFactory;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method private addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 3

    .line 432
    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result v0

    if-nez v0, :cond_2

    .line 436
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    if-nez v0, :cond_0

    .line 437
    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 438
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 439
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add byte array with different byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add byte array that doesn\'t start from 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkBounds(II)V
    .locals 3

    add-int/2addr p2, p1

    .line 260
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v0

    const-string v1, "."

    const-string v2, "Index "

    if-lt p1, v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result p1

    if-gt p2, p1, :cond_0

    return-void

    .line 265
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " greater than length "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " less than start "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1

    .line 132
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 133
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    return-void
.end method

.method public addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1

    .line 229
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 230
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    return-void
.end method

.method public cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .line 341
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V

    return-object v0
.end method

.method public cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .line 348
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V

    return-object v0
.end method

.method public cursor(ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .line 370
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    return-object v0
.end method

.method public cursor(Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .line 359
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    return-object v0
.end method

.method public first()I
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte()I

    move-result v0

    return v0
.end method

.method public free()V
    .locals 1

    .line 249
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->free()V

    .line 252
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)B
    .locals 0

    .line 384
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result p1

    return p1
.end method

.method public get(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0

    .line 398
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method

.method public getChar(I)C
    .locals 0

    .line 542
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getChar()C

    move-result p1

    return p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 528
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFirst()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 0

    .line 514
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getFloat()F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 0

    .line 486
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result p1

    return p1
.end method

.method public getIoBuffers()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->getIoBuffers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 281
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->hasNextNode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->getIoBuffers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 288
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getLong(I)J
    .locals 2

    .line 500
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 0

    .line 472
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getShort()S

    move-result p1

    return p1
.end method

.method public getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4

    .line 299
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayFactory;->create(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v1

    sub-int/2addr v0, v1

    .line 312
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    .line 315
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 316
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0

    .line 321
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    invoke-interface {v1, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayFactory;->create(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 323
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v2

    .line 324
    invoke-interface {v2, v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 326
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 327
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v2

    .line 328
    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    .line 329
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 330
    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->free()V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v2, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    return-object v1

    .line 300
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get single buffer from CompositeByteArray unless it has a ByteArrayFactory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public last()I
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte()I

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 2

    .line 447
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    if-eqz v0, :cond_0

    return-object v0

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Byte order not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public order(Ljava/nio/ByteOrder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 457
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    .line 460
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->hasNextNode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order(Ljava/nio/ByteOrder;)V

    .line 461
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(IB)V
    .locals 0

    .line 391
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(B)V

    return-void
.end method

.method public put(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0

    .line 405
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method

.method public putChar(IC)V
    .locals 0

    .line 549
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putChar(C)V

    return-void
.end method

.method public putDouble(ID)V
    .locals 0

    .line 535
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putDouble(D)V

    return-void
.end method

.method public putFloat(IF)V
    .locals 0

    .line 521
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putFloat(F)V

    return-void
.end method

.method public putInt(II)V
    .locals 0

    .line 493
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putInt(I)V

    return-void
.end method

.method public putLong(IJ)V
    .locals 0

    .line 507
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putLong(J)V

    return-void
.end method

.method public putShort(IS)V
    .locals 0

    .line 479
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putShort(S)V

    return-void
.end method

.method public removeFirst()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public removeLast()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public removeTo(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 5

    .line 158
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 163
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    invoke-direct {v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    .line 164
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v1

    :goto_0
    sub-int/2addr p1, v1

    :goto_1
    if-lez p1, :cond_1

    .line 167
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeFirst()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    .line 169
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 171
    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 172
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v1

    goto :goto_0

    .line 178
    :cond_0
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v3

    const/4 v4, 0x0

    .line 182
    invoke-virtual {v2, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 184
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 186
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 188
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 190
    invoke-virtual {v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 192
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 194
    new-instance v3, Lorg/apache/mina/util/byteaccess/CompositeByteArray$1;

    invoke-direct {v3, p0, v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$1;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 202
    invoke-virtual {v0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 203
    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v3

    sub-int/2addr p1, v3

    .line 207
    new-instance v3, Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;

    invoke-direct {v3, p0, v2, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 214
    invoke-virtual {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_1

    :cond_1
    return-object v0

    .line 159
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public slice(II)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object p1

    return-object p1
.end method
