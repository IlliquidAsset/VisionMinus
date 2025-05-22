.class public Lcom/powervision/base/utils/MediaInfoUtil;
.super Ljava/lang/Object;
.source "MediaInfoUtil.java"


# static fields
.field public static final MEDIA_VIDEO_TYPE_4K:I = 0x2

.field public static final MEDIA_VIDEO_TYPE_BAD:I = 0x1

.field public static final MEDIA_VIDEO_TYPE_FIT:I = 0x3

.field private static mMediaInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;


# instance fields
.field private mAudioLength:J

.field private mAudioRetriever:Landroid/media/MediaMetadataRetriever;

.field private mDataRetriever:Landroid/media/MediaMetadataRetriever;

.field private mVideoLength:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 38
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mAudioRetriever:Landroid/media/MediaMetadataRetriever;

    return-void
.end method

.method private getAudioLength()Ljava/lang/String;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mAudioRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAudioTrack(Ljava/lang/String;)I
    .locals 4

    .line 178
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 180
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 183
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 184
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/"

    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 190
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 p1, -0x1

    return p1

    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    throw p1
.end method

.method public static getInstance()Lcom/powervision/base/utils/MediaInfoUtil;
    .locals 2

    .line 45
    sget-object v0, Lcom/powervision/base/utils/MediaInfoUtil;->mMediaInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/powervision/base/utils/MediaInfoUtil;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/powervision/base/utils/MediaInfoUtil;->mMediaInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-direct {v1}, Lcom/powervision/base/utils/MediaInfoUtil;-><init>()V

    sput-object v1, Lcom/powervision/base/utils/MediaInfoUtil;->mMediaInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/utils/MediaInfoUtil;->mMediaInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    return-object v0
.end method

.method private getVideoLength()Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAudioTime()J
    .locals 5

    .line 109
    iget-wide v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mAudioLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\u672a\u83b7\u53d6\u5230\u97f3\u9891\u6587\u4ef6\u65f6\u957f"

    .line 110
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_0
    iget-wide v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mAudioLength:J

    return-wide v0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDimen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 229
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u89c6\u9891\u4e0d\u5b58\u5728"

    .line 231
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoHeight()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoWidth()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    .line 205
    :goto_0
    iget-wide v1, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mVideoLength:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    .line 206
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v1, 0x3e8

    mul-long v3, p1, v1

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/16 p2, 0x8c

    .line 208
    invoke-static {v0, p1, p1, p2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    add-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbAtTime(J)Landroid/graphics/Bitmap;
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getVideoHeight()Ljava/lang/String;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u89c6\u9891\u4e0d\u5b58\u5728"

    .line 128
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 132
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "-1"

    return-object p1
.end method

.method public getVideoLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 305
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 307
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x17

    .line 312
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 309
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public getVideoRotationDegree()I
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVideoTime()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mVideoLength:J

    return-wide v0
.end method

.method public getVideoWidth()Ljava/lang/String;
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is4K()I
    .locals 4

    .line 249
    invoke-virtual {p0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoHeight()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoWidth()Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------> width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x780

    if-gt v1, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public isHaveAudio(Ljava/lang/String;)Z
    .locals 1

    .line 168
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->getAudioTrack(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public judgeVideoDirection()Z
    .locals 5

    .line 321
    invoke-virtual {p0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoWidth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 322
    invoke-virtual {p0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoHeight()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 323
    invoke-virtual {p0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoRotationDegree()I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    move v4, v1

    move v1, v0

    move v0, v4

    :cond_0
    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mAudioRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_1
    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 2

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u97f3\u9891\u9891\u4e0d\u5b58\u5728"

    .line 86
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mAudioRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/powervision/base/utils/MediaInfoUtil;->getAudioLength()Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u97f3\u9891\u65f6\u957fms\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mAudioLength:J

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 3

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u89c6\u9891\u4e0d\u5b58\u5728"

    .line 63
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoPath = = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mDataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "eeeeeeeeeeeeeeeeeeeeee"

    .line 70
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 73
    :goto_0
    invoke-direct {p0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoLength()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  \u89c6\u9891\u65f6\u957fms\uff1a"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/powervision/base/utils/MediaInfoUtil;->mVideoLength:J

    return-void
.end method
