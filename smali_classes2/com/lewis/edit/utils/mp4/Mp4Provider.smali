.class public Lcom/lewis/edit/utils/mp4/Mp4Provider;
.super Ljava/lang/Object;
.source "Mp4Provider.java"

# interfaces
.implements Lcom/lewis/edit/utils/mp4/ITextureProvider;


# static fields
.field private static final TIME_OUT:I = 0x2710


# instance fields
.field private final Extractor_LOCK:Ljava/lang/Object;

.field private isUserWantToStop:Z

.field private isVideoExtractorEnd:Z

.field private mAudioDecodeTrack:I

.field private mAudioEncodeTrack:I

.field private mDecodeSem:Ljava/util/concurrent/Semaphore;

.field private mExtractor:Landroid/media/MediaExtractor;

.field private mFrameSem:Ljava/util/concurrent/Semaphore;

.field private mInputPath:Ljava/lang/String;

.field private mIsOpenAudio:Z

.field private mNowTimeStamp:J

.field private mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

.field private mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mVideoDecodeTrack:I

.field private mVideoDecoder:Landroid/media/MediaCodec;

.field private mVideoProvideEndFlag:Z

.field private mVideoRotation:I

.field private mVideoSize:Landroid/graphics/Point;

.field private mVideoStopTimeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeTrack:I

    .line 28
    iput v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mAudioDecodeTrack:I

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->Extractor_LOCK:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->isVideoExtractorEnd:Z

    .line 36
    iput-boolean v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->isUserWantToStop:Z

    .line 39
    iput-boolean v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoProvideEndFlag:Z

    const-wide/16 v2, -0x1

    .line 44
    iput-wide v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mNowTimeStamp:J

    .line 45
    iput v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mAudioEncodeTrack:I

    .line 50
    iput v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoRotation:I

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mIsOpenAudio:Z

    .line 56
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mInputPath:Ljava/lang/String;

    .line 57
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoSize:Landroid/graphics/Point;

    .line 58
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 59
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/Mp4Provider;->workMediaInfo()V

    return-void
.end method

.method private audioDecodeStep()Z
    .locals 12

    const/high16 v0, 0x10000

    .line 248
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 250
    iget-boolean v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mIsOpenAudio:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 251
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 252
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    iget v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mAudioDecodeTrack:I

    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 253
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 255
    :goto_0
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x4

    if-eq v4, v5, :cond_4

    .line 257
    iget-object v5, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    .line 258
    iget-object v7, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoStopTimeStamp:J

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 259
    :goto_1
    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v6, v5

    .line 260
    :goto_2
    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 261
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 262
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 263
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoStopTimeStamp:J

    cmp-long v6, v4, v8

    if-lez v6, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 264
    :goto_3
    iget-object v5, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

    iget v6, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mAudioEncodeTrack:I

    new-instance v8, Lcom/lewis/edit/utils/mp4/HardMediaData;

    invoke-direct {v8, v0, v1}, Lcom/lewis/edit/utils/mp4/HardMediaData;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-interface {v5, v6, v8}, Lcom/lewis/edit/utils/mp4/IHardStore;->addData(ILjava/lang/Object;)I

    if-eqz v7, :cond_3

    move v2, v4

    goto :goto_4

    .line 277
    :cond_3
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 269
    :cond_4
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 270
    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const-wide/16 v4, 0x0

    .line 271
    iput-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 272
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 273
    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

    iget v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mAudioEncodeTrack:I

    new-instance v5, Lcom/lewis/edit/utils/mp4/HardMediaData;

    invoke-direct {v5, v0, v1}, Lcom/lewis/edit/utils/mp4/HardMediaData;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-interface {v3, v4, v5}, Lcom/lewis/edit/utils/mp4/IHardStore;->addData(ILjava/lang/Object;)I

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    return v2
.end method

.method private extractMedia()Z
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mInputPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mInputPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 87
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    .line 88
    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mInputPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 91
    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    .line 92
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 94
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    iput v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mAudioDecodeTrack:I

    goto :goto_1

    :cond_1
    const-string v5, "video"

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    iput v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeTrack:I

    .line 109
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoSize:Landroid/graphics/Point;

    const-string v5, "width"

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 110
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoSize:Landroid/graphics/Point;

    const-string v5, "height"

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sur-open-2-error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    :goto_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "sur-open-1-false"

    .line 83
    invoke-static {v2, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private startDecodeThread()V
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lewis/edit/utils/mp4/-$$Lambda$Mp4Provider$IwIPN4oOoP-ZwETLVbHHBetYpwY;

    invoke-direct {v1, p0}, Lcom/lewis/edit/utils/mp4/-$$Lambda$Mp4Provider$IwIPN4oOoP-ZwETLVbHHBetYpwY;-><init>(Lcom/lewis/edit/utils/mp4/Mp4Provider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 241
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private videoDecodeStep()Z
    .locals 13

    .line 140
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 142
    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-static {v3, v0}, Lcom/lewis/edit/utils/mp4/CodecUtil;->getInputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 144
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 145
    iget-object v10, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->Extractor_LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 146
    :try_start_0
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    iget v5, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeTrack:I

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 147
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v3, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    if-gez v11, :cond_0

    .line 150
    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    move v4, v0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 152
    iput-boolean v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->isVideoExtractorEnd:Z

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sur-de-in-1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---readSampleData = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 156
    :goto_0
    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoStopTimeStamp:J

    .line 158
    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    if-eqz v12, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    move v4, v0

    move v6, v11

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 160
    iput-boolean v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->isVideoExtractorEnd:Z

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sur-de-in-2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---readSampleData = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---videoStopTime = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoStopTimeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "---isKeyFrame = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :goto_2
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 165
    monitor-exit v10

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_3
    const/4 v0, 0x0

    .line 171
    :cond_4
    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    if-ltz v3, :cond_7

    .line 174
    :try_start_1
    iget-boolean v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->isUserWantToStop:Z

    if-nez v4, :cond_5

    .line 175
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mDecodeSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    .line 178
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 180
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mNowTimeStamp:J

    .line 185
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecoder:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v4, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sur-de-out-1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "---nowTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mNowTimeStamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "---infoSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mFrameSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_6

    :cond_7
    const/4 v4, -0x2

    if-ne v3, v4, :cond_8

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sur-de-out-2 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "---nowTime = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mNowTimeStamp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "---infoSize = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sur-de-out-3 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "---nowTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mNowTimeStamp:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "---infoSize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 199
    :cond_9
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sur-de-out-4 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "---nowTime = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mNowTimeStamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "---infoSize = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "---outFlag = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    .line 202
    :goto_7
    iget-boolean v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->isVideoExtractorEnd:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->isUserWantToStop:Z

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_8
    return v1
.end method

.method private workMediaInfo()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mInputPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mInputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mInputPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v1, 0x18

    .line 69
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoRotation:I

    .line 73
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->isUserWantToStop:Z

    return-void
.end method

.method public frame()Z
    .locals 3

    .line 321
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sur-frame-sem-3---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoProvideEndFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mFrameSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sur-frame-sem-4---"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoProvideEndFlag:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mDecodeSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 329
    iget-boolean v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoProvideEndFlag:Z

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 334
    iget-wide v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mNowTimeStamp:J

    return-wide v0
.end method

.method public isOpenAudioFun(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mIsOpenAudio:Z

    return-void
.end method

.method public synthetic lambda$startDecodeThread$0$Mp4Provider()V
    .locals 4

    .line 210
    :goto_0
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/Mp4Provider;->videoDecodeStep()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sur-de-step-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->isVideoExtractorEnd:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "---flag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 214
    iput-boolean v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoProvideEndFlag:Z

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sur-de-flag-1-flag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sur-de-flag-2-1-flag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 221
    :cond_1
    iput-boolean v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoProvideEndFlag:Z

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sur-de-flag-2-2-flag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :goto_1
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mFrameSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sur-de-flag-3-flag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 228
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecoder:Landroid/media/MediaCodec;

    .line 232
    iget v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mAudioDecodeTrack:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 233
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/Mp4Provider;->audioDecodeStep()Z

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 238
    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    .line 239
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

    invoke-interface {v0}, Lcom/lewis/edit/utils/mp4/IHardStore;->close()V

    return-void
.end method

.method public open(Landroid/graphics/SurfaceTexture;)Landroid/graphics/Point;
    .locals 6

    .line 286
    :try_start_0
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/Mp4Provider;->extractMedia()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "sur-open-3-false"

    new-array v0, v1, [Ljava/lang/Object;

    .line 287
    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    :cond_0
    const-string v0, "sur-frame-sem-1"

    new-array v2, v1, [Ljava/lang/Object;

    .line 290
    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mFrameSem:Ljava/util/concurrent/Semaphore;

    .line 292
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mDecodeSem:Ljava/util/concurrent/Semaphore;

    const-string v0, "sur-frame-sem-2"

    new-array v3, v1, [Ljava/lang/Object;

    .line 293
    invoke-static {v0, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iput-boolean v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoProvideEndFlag:Z

    .line 295
    iput-boolean v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->isUserWantToStop:Z

    .line 297
    iget v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mAudioDecodeTrack:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    .line 298
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    iget v5, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mAudioDecodeTrack:I

    invoke-virtual {v3, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/lewis/edit/utils/mp4/IHardStore;->addTrack(ZLjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mAudioEncodeTrack:I

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

    invoke-interface {v0, v1, v4}, Lcom/lewis/edit/utils/mp4/IHardStore;->addTrack(ZLjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mAudioEncodeTrack:I

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecodeTrack:I

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "mime"

    .line 303
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecoder:Landroid/media/MediaCodec;

    .line 304
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 305
    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 306
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/Mp4Provider;->startDecodeThread()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 310
    :goto_1
    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mVideoSize:Landroid/graphics/Point;

    return-object p1
.end method

.method public setStore(Lcom/lewis/edit/utils/mp4/IHardStore;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/Mp4Provider;->mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

    return-void
.end method
