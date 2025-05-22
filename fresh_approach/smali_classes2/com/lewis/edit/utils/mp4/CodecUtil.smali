.class public Lcom/lewis/edit/utils/mp4/CodecUtil;
.super Ljava/lang/Object;
.source "CodecUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static getOutputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method
