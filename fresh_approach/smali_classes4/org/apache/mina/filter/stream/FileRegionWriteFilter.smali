.class public Lorg/apache/mina/filter/stream/FileRegionWriteFilter;
.super Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;
.source "FileRegionWriteFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<",
        "Lorg/apache/mina/core/file/FileRegion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMessageClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lorg/apache/mina/core/file/FileRegion;",
            ">;"
        }
    .end annotation

    .line 59
    const-class v0, Lorg/apache/mina/core/file/FileRegion;

    return-object v0
.end method

.method protected bridge synthetic getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    check-cast p1, Lorg/apache/mina/core/file/FileRegion;

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/stream/FileRegionWriteFilter;->getNextBuffer(Lorg/apache/mina/core/file/FileRegion;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected getNextBuffer(Lorg/apache/mina/core/file/FileRegion;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/FileRegionWriteFilter;->getWriteBufferSize()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 71
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 74
    invoke-interface {p1}, Lorg/apache/mina/core/file/FileRegion;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/mina/core/file/FileRegion;->getPosition()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v1

    int-to-long v1, v1

    .line 75
    invoke-interface {p1, v1, v2}, Lorg/apache/mina/core/file/FileRegion;->update(J)V

    .line 78
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method
