.class public Lcom/powervision/livestreaming/core/MediaCodecHelper;
.super Ljava/lang/Object;
.source "MediaCodecHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHardVideoMediaCodec(Lcom/powervision/livestreaming/model/RESCoreParameters;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3

    const-string v0, "mime"

    const-string v1, "video/avc"

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacodecVideoWidth()I

    move-result v1

    const-string v2, "width"

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 21
    invoke-virtual {p0}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacodecVideoHeight()I

    move-result v1

    const-string v2, "height"

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "color-format"

    const v2, 0x7f000789

    .line 22
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {p0}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacdoecAVCBitRate()I

    move-result v1

    const-string v2, "bitrate"

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 24
    invoke-virtual {p0}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacodecAVCFrameRate()I

    move-result v1

    const-string v2, "frame-rate"

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 25
    invoke-virtual {p0}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacodecAVCIFrameInterval()I

    move-result p0

    const-string v1, "i-frame-interval"

    invoke-virtual {p1, v1, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "profile"

    const/16 v1, 0x8

    .line 26
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    const/16 v1, 0x200

    .line 27
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "bitrate-mode"

    const/4 v1, 0x2

    .line 28
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 31
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isArrayContain([II)Z
    .locals 4

    .line 40
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isProfileContain([Landroid/media/MediaCodecInfo$CodecProfileLevel;I)Z
    .locals 4

    .line 49
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 50
    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
