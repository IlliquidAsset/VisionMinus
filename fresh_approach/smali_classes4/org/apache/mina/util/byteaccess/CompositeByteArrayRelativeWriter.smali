.class public Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;
.super Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;
.source "CompositeByteArrayRelativeWriter.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/IoRelativeWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$NopExpander;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;
    }
.end annotation


# instance fields
.field private final autoFlush:Z

.field private final expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

.field private final flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;Z)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V

    .line 127
    iput-object p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

    .line 128
    iput-object p3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;

    .line 129
    iput-boolean p4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->autoFlush:Z

    return-void
.end method

.method private prepareForAccess(I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->last()I

    move-result p1

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 135
    iget-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;->expand(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected cursorPassedFirstComponent()V
    .locals 2

    .line 165
    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flushTo(I)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flushTo(I)V

    return-void
.end method

.method public flushTo(I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeTo(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;->flush(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    return-void
.end method

.method public bridge synthetic order()Ljava/nio/ByteOrder;
    .locals 1

    .line 41
    invoke-super {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 1

    const/4 v0, 0x1

    .line 174
    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 175
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(B)V

    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1

    .line 182
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 183
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method

.method public putChar(C)V
    .locals 1

    const/4 v0, 0x2

    .line 230
    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 231
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putChar(C)V

    return-void
.end method

.method public putDouble(D)V
    .locals 1

    const/16 v0, 0x8

    .line 222
    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 223
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putDouble(D)V

    return-void
.end method

.method public putFloat(F)V
    .locals 1

    const/4 v0, 0x4

    .line 214
    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 215
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putFloat(F)V

    return-void
.end method

.method public putInt(I)V
    .locals 1

    const/4 v0, 0x4

    .line 198
    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 199
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putInt(I)V

    return-void
.end method

.method public putLong(J)V
    .locals 1

    const/16 v0, 0x8

    .line 206
    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 207
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putLong(J)V

    return-void
.end method

.method public putShort(S)V
    .locals 1

    const/4 v0, 0x2

    .line 190
    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 191
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putShort(S)V

    return-void
.end method

.method public skip(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->skip(I)V

    return-void
.end method
