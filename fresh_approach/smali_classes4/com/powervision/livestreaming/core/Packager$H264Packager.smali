.class public Lcom/powervision/livestreaming/core/Packager$H264Packager;
.super Ljava/lang/Object;
.source "Packager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/livestreaming/core/Packager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "H264Packager"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateAVCDecoderConfigurationRecord(Landroid/media/MediaFormat;)[B
    .locals 7

    const-string v0, "csd-0"

    .line 16
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x4

    .line 17
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v2, "csd-1"

    .line 18
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 19
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 21
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/lit8 v4, v2, 0xb

    add-int/2addr v4, v3

    .line 23
    new-array v4, v4, [B

    const/16 v5, 0x8

    .line 24
    invoke-virtual {v0, v4, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v2, 0x8

    add-int/lit8 v5, v0, 0x3

    .line 25
    invoke-virtual {p0, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    const/4 v5, 0x1

    .line 33
    aput-byte v5, v4, p0

    const/16 p0, 0x9

    .line 34
    aget-byte p0, v4, p0

    aput-byte p0, v4, v5

    const/16 p0, 0xa

    .line 35
    aget-byte p0, v4, p0

    const/4 v6, 0x2

    aput-byte p0, v4, v6

    const/16 p0, 0xb

    .line 36
    aget-byte p0, v4, p0

    const/4 v6, 0x3

    aput-byte p0, v4, v6

    const/4 p0, -0x1

    .line 37
    aput-byte p0, v4, v1

    const/4 p0, 0x5

    const/16 v1, -0x1f

    .line 42
    aput-byte v1, v4, p0

    const/4 p0, 0x6

    .line 43
    invoke-static {v4, p0, v2}, Lcom/powervision/livestreaming/tools/ByteArrayTools;->intToByteArrayTwoByte([BII)V

    .line 49
    aput-byte v5, v4, v0

    add-int/2addr v0, v5

    .line 50
    invoke-static {v4, v0, v3}, Lcom/powervision/livestreaming/tools/ByteArrayTools;->intToByteArrayTwoByte([BII)V

    return-object v4
.end method
