.class public Lcom/lewis/edit/utils/mp4/MediaInfoConfig;
.super Ljava/lang/Object;
.source "MediaInfoConfig.java"


# static fields
.field public static final AUDIO_TYPE:Ljava/lang/String; = "audio"

.field public static final VIDEO_MUX_TYPE:Ljava/lang/String; = "video/avc"

.field public static final VIDEO_TYPE:Ljava/lang/String; = "video"


# instance fields
.field private bitrate:I

.field private frameRate:I

.field private height:I

.field private iFrame:I

.field private mime:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "video/avc"

    .line 14
    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->mime:Ljava/lang/String;

    const/16 v0, 0x780

    .line 15
    iput v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->width:I

    const/16 v0, 0x438

    .line 16
    iput v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->height:I

    const/16 v0, 0x1e

    .line 17
    iput v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->frameRate:I

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->iFrame:I

    const v0, 0x11f800

    .line 19
    iput v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->bitrate:I

    return-void
.end method

.method public static getInputMediaConfig(Ljava/lang/String;)Lcom/lewis/edit/utils/mp4/MediaInfoConfig;
    .locals 5

    .line 27
    new-instance v0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;

    invoke-direct {v0}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;-><init>()V

    .line 28
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 29
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x14

    .line 30
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x12

    .line 31
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x13

    .line 32
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->setBitrate(I)V

    .line 36
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    and-int/lit8 v3, p0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 p0, p0, -0x1

    :cond_1
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 45
    :cond_2
    invoke-virtual {v0, p0}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->setWidth(I)V

    .line 46
    invoke-virtual {v0, v2}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->setHeight(I)V

    .line 48
    :cond_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v0
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->bitrate:I

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->frameRate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->height:I

    return v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->width:I

    return v0
.end method

.method public getiFrame()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->iFrame:I

    return v0
.end method

.method public setBitrate(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->bitrate:I

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->frameRate:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->height:I

    return-void
.end method

.method public setMime(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->mime:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->width:I

    return-void
.end method

.method public setiFrame(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->iFrame:I

    return-void
.end method
