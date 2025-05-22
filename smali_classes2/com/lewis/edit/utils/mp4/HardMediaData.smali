.class public Lcom/lewis/edit/utils/mp4/HardMediaData;
.super Ljava/lang/Object;
.source "HardMediaData.java"


# instance fields
.field private bufferData:Ljava/nio/ByteBuffer;

.field private bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private index:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->index:I

    .line 16
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferData:Ljava/nio/ByteBuffer;

    .line 17
    iput-object p2, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method


# virtual methods
.method public copy()Lcom/lewis/edit/utils/mp4/HardMediaData;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 54
    new-instance v2, Lcom/lewis/edit/utils/mp4/HardMediaData;

    invoke-direct {v2, v0, v1}, Lcom/lewis/edit/utils/mp4/HardMediaData;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/lewis/edit/utils/mp4/HardMediaData;->copyTo(Lcom/lewis/edit/utils/mp4/HardMediaData;)V

    return-object v2
.end method

.method public copyTo(Lcom/lewis/edit/utils/mp4/HardMediaData;)V
    .locals 8

    .line 45
    iget v0, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->index:I

    iput v0, p1, Lcom/lewis/edit/utils/mp4/HardMediaData;->index:I

    .line 46
    iget-object v0, p1, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    iget-object v0, p1, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferData:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 48
    iget-object v2, p1, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-void
.end method

.method public getBufferData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getBufferInfo()Landroid/media/MediaCodec$BufferInfo;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->index:I

    return v0
.end method

.method public setBufferData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setBufferInfo(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/lewis/edit/utils/mp4/HardMediaData;->index:I

    return-void
.end method
