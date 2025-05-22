.class public Lcom/lewis/edit/utils/mp4/SurfaceEncoder;
.super Lcom/lewis/edit/utils/mp4/SurfaceShower;
.source "SurfaceEncoder.java"

# interfaces
.implements Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;


# static fields
.field private static final TIME_OUT:I = 0x2710


# instance fields
.field private isEncodeStarted:Z

.field private mInfoConfig:Lcom/lewis/edit/utils/mp4/MediaInfoConfig;

.field private mListener:Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;

.field private mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

.field private mVideoEncoder:Landroid/media/MediaCodec;

.field private mVideoTrack:I

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/SurfaceShower;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->isEncodeStarted:Z

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoTrack:I

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->startTime:J

    .line 29
    invoke-super {p0, p0}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->setOnDrawEndListener(Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;)V

    return-void
.end method

.method private closeVideoEncoder()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 94
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    :cond_0
    return-void
.end method

.method private convertVideoConfigToFormat(Lcom/lewis/edit/utils/mp4/MediaInfoConfig;)Landroid/media/MediaFormat;
    .locals 3

    .line 58
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getMime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getBitrate()I

    move-result v1

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getFrameRate()I

    move-result v1

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getiFrame()I

    move-result v1

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 62
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getFrameRate()I

    move-result v1

    const-string v2, "capture-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getFrameRate()I

    move-result p1

    const v1, 0xf4240

    div-int/2addr v1, p1

    const-string p1, "repeat-previous-frame-after"

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "color-format"

    const v1, 0x7f000789

    .line 64
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sur-en-format = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private openVideoEncoder()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mInfoConfig:Lcom/lewis/edit/utils/mp4/MediaInfoConfig;

    invoke-direct {p0, v0}, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->convertVideoConfigToFormat(Lcom/lewis/edit/utils/mp4/MediaInfoConfig;)Landroid/media/MediaFormat;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mInfoConfig:Lcom/lewis/edit/utils/mp4/MediaInfoConfig;

    invoke-virtual {v1}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getMime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 78
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->setSurface(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mInfoConfig:Lcom/lewis/edit/utils/mp4/MediaInfoConfig;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mInfoConfig:Lcom/lewis/edit/utils/mp4/MediaInfoConfig;

    invoke-virtual {v1}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getHeight()I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->setOutputSize(II)V

    .line 80
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 81
    iput-boolean v2, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->isEncodeStarted:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized videoEncodeStep(Z)V
    .locals 7

    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->isEncodeStarted:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const-string v1, "sur-en-end"

    new-array v2, v0, [Ljava/lang/Object;

    .line 106
    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 110
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-nez p1, :cond_2

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sur-en-out-1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    const/4 v3, -0x2

    if-ne v2, v3, :cond_4

    .line 118
    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 119
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

    if-eqz v4, :cond_3

    .line 120
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v3}, Lcom/lewis/edit/utils/mp4/IHardStore;->addTrack(ZLjava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoTrack:I

    .line 122
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sur-en-out-2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "---format = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-gez v2, :cond_5

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sur-en-out-3 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_5
    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-static {v3, v2}, Lcom/lewis/edit/utils/mp4/CodecUtil;->getOutputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sur-en-out-4 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "---buffer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    .line 131
    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sur-en-out-5 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_6
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_8

    .line 136
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

    if-eqz v4, :cond_7

    .line 137
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

    iget v5, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoTrack:I

    new-instance v6, Lcom/lewis/edit/utils/mp4/HardMediaData;

    invoke-direct {v6, v3, v1}, Lcom/lewis/edit/utils/mp4/HardMediaData;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-interface {v4, v5, v6}, Lcom/lewis/edit/utils/mp4/IHardStore;->addData(ILjava/lang/Object;)I

    .line 139
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sur-en-out-6 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "---track = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoTrack:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "---bufferInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    .line 139
    invoke-static {v3, v4}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_8
    iget-object v3, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 145
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sur-en-out-7 = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "---bufferInfo = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->closeVideoEncoder()V

    .line 148
    iput-boolean v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->isEncodeStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_9
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 167
    invoke-super {p0}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->close()V

    const/4 v0, 0x1

    .line 168
    invoke-direct {p0, v0}, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->videoEncodeStep(Z)V

    const-wide/16 v0, -0x1

    .line 169
    iput-wide v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->startTime:J

    return-void
.end method

.method public onCall(Lcom/lewis/edit/utils/mp4/RenderBean;)V
    .locals 2

    .line 34
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->isEndFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sur-en-rb-1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, v0}, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->videoEncodeStep(Z)V

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->onCall(Lcom/lewis/edit/utils/mp4/RenderBean;)V

    return-void
.end method

.method public bridge synthetic onCall(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/lewis/edit/utils/mp4/RenderBean;

    invoke-virtual {p0, p1}, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->onCall(Lcom/lewis/edit/utils/mp4/RenderBean;)V

    return-void
.end method

.method public onDrawEnd(Landroid/opengl/EGLSurface;Lcom/lewis/edit/utils/mp4/RenderBean;)V
    .locals 8

    .line 189
    invoke-virtual {p2}, Lcom/lewis/edit/utils/mp4/RenderBean;->getTimeStamp()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const-string v4, "---startTime = "

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 190
    invoke-virtual {p2}, Lcom/lewis/edit/utils/mp4/RenderBean;->getEgl()Lcom/lewis/edit/utils/mp4/EglHelper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lewis/edit/utils/mp4/RenderBean;->getTimeStamp()J

    move-result-wide v1

    const-wide/16 v6, 0x3e8

    mul-long v1, v1, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/lewis/edit/utils/mp4/EglHelper;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sur-en-draw-rb-1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-wide v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->startTime:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    .line 194
    invoke-virtual {p2}, Lcom/lewis/edit/utils/mp4/RenderBean;->getTextureTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->startTime:J

    .line 196
    :cond_1
    invoke-virtual {p2}, Lcom/lewis/edit/utils/mp4/RenderBean;->getEgl()Lcom/lewis/edit/utils/mp4/EglHelper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lewis/edit/utils/mp4/RenderBean;->getTextureTime()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->startTime:J

    sub-long/2addr v1, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/lewis/edit/utils/mp4/EglHelper;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sur-en-draw-rb-2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :goto_0
    invoke-direct {p0, v5}, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->videoEncodeStep(Z)V

    .line 200
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mListener:Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;

    if-eqz v0, :cond_2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sur-en-draw-rb-3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mListener:Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;

    invoke-interface {v0, p1, p2}, Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;->onDrawEnd(Landroid/opengl/EGLSurface;Lcom/lewis/edit/utils/mp4/RenderBean;)V

    :cond_2
    return-void
.end method

.method public open()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->openVideoEncoder()V

    .line 159
    invoke-super {p0}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->open()V

    return-void
.end method

.method public setConfig(Lcom/lewis/edit/utils/mp4/MediaInfoConfig;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mInfoConfig:Lcom/lewis/edit/utils/mp4/MediaInfoConfig;

    return-void
.end method

.method public setOnDrawEndListener(Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mListener:Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;

    return-void
.end method

.method public setOutputSize(II)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->setOutputSize(II)V

    return-void
.end method

.method public setStore(Lcom/lewis/edit/utils/mp4/IHardStore;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->mStore:Lcom/lewis/edit/utils/mp4/IHardStore;

    return-void
.end method

.method public setSurface(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
