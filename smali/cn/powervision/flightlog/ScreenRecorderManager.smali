.class public Lcn/powervision/flightlog/ScreenRecorderManager;
.super Ljava/lang/Object;
.source "ScreenRecorderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;,
        Lcn/powervision/flightlog/ScreenRecorderManager$Callback;
    }
.end annotation


# static fields
.field static final MSG_ERROR:I = 0x2

.field static final MSG_RELEASE:I = 0x1

.field static final MSG_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScreenRecorderManager"

.field static final VIDEO_AVC:Ljava/lang/String; = "video/avc"


# instance fields
.field private mCallback:Lcn/powervision/flightlog/ScreenRecorderManager$Callback;

.field private mCodecName:Ljava/lang/String;

.field private mDpi:I

.field private mDstPath:Ljava/lang/String;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mForceQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFormat:Landroid/media/MediaFormat;

.field private mHandler:Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;

.field private mHeight:I

.field private mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

.field private mSurface:Landroid/view/Surface;

.field private mVideoTrackIndex:I

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mWidth:I

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodecInfo$CodecProfileLevel;Landroid/media/projection/MediaProjection;Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d0

    .line 30
    iput v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mWidth:I

    const/16 v0, 0x500

    .line 31
    iput v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mHeight:I

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mDpi:I

    const-string v0, "OMX.google.h264.encoder"

    .line 36
    iput-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mCodecName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxerStarted:Z

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mVideoTrackIndex:I

    .line 42
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mForceQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Lcn/powervision/flightlog/ScreenRecorderManager$1;

    invoke-direct {v0, p0}, Lcn/powervision/flightlog/ScreenRecorderManager$1;-><init>(Lcn/powervision/flightlog/ScreenRecorderManager;)V

    iput-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    .line 61
    iput-object p2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 62
    iput-object p3, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mDstPath:Ljava/lang/String;

    .line 63
    iget p2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mWidth:I

    iget p3, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mHeight:I

    const-string v0, "video/avc"

    invoke-static {v0, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    iput-object p2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mFormat:Landroid/media/MediaFormat;

    const-string p3, "color-format"

    const v0, 0x7f000789

    .line 64
    invoke-virtual {p2, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    iget-object p2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mFormat:Landroid/media/MediaFormat;

    const-string p3, "bitrate"

    const v0, 0x16e360

    invoke-virtual {p2, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    iget-object p2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mFormat:Landroid/media/MediaFormat;

    const-string p3, "frame-rate"

    const/16 v0, 0x1e

    invoke-virtual {p2, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 67
    iget-object p2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mFormat:Landroid/media/MediaFormat;

    const-string p3, "i-frame-interval"

    const/16 v0, 0xa

    invoke-virtual {p2, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 69
    iget p2, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-eqz p2, :cond_0

    .line 70
    iget-object p2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mFormat:Landroid/media/MediaFormat;

    iget p3, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const-string v0, "profile"

    invoke-virtual {p2, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 71
    iget-object p2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mFormat:Landroid/media/MediaFormat;

    iget p1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const-string p3, "level"

    invoke-virtual {p2, p3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Created video format: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenRecorderManager"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/flightlog/ScreenRecorderManager;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/powervision/flightlog/ScreenRecorderManager;->record()V

    return-void
.end method

.method static synthetic access$100(Lcn/powervision/flightlog/ScreenRecorderManager;)Lcn/powervision/flightlog/ScreenRecorderManager$Callback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mCallback:Lcn/powervision/flightlog/ScreenRecorderManager$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcn/powervision/flightlog/ScreenRecorderManager;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/powervision/flightlog/ScreenRecorderManager;->stop()V

    return-void
.end method

.method static synthetic access$300(Lcn/powervision/flightlog/ScreenRecorderManager;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/powervision/flightlog/ScreenRecorderManager;->release()V

    return-void
.end method

.method static synthetic access$400(Lcn/powervision/flightlog/ScreenRecorderManager;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcn/powervision/flightlog/ScreenRecorderManager;->muxVideo(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcn/powervision/flightlog/ScreenRecorderManager;)Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mHandler:Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcn/powervision/flightlog/ScreenRecorderManager;Landroid/media/MediaFormat;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/ScreenRecorderManager;->resetOutputFormatAndStartMuxer(Landroid/media/MediaFormat;)V

    return-void
.end method

.method private createVideoEncoderAndSurface()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ScreenRecorderManager"

    .line 233
    iget-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mCodecName:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    .line 234
    new-instance v2, Lcn/powervision/flightlog/ScreenRecorderManager$2;

    invoke-direct {v2, p0}, Lcn/powervision/flightlog/ScreenRecorderManager$2;-><init>(Lcn/powervision/flightlog/ScreenRecorderManager;)V

    .line 266
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 267
    iget-object v3, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mHandler:Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 272
    :goto_0
    iget-object v2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 274
    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created input surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    iput-object v2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mSurface:Landroid/view/Surface;

    .line 282
    iput-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mEncoder:Landroid/media/MediaCodec;

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Configure encoder failure! "

    .line 278
    invoke-static {v0, v2, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    throw v1
.end method

.method private encodeToVideoTrack(Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 191
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const-string v2, "ScreenRecorderManager"

    if-eqz v0, :cond_0

    const-string v0, "Ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 195
    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iput v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 198
    :cond_0
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 199
    :cond_1
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const-string p2, "info.size == 0, drop it."

    .line 200
    invoke-static {v2, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    goto :goto_0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got buffer, info: size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", presentationTimeUs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", offset="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    .line 206
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mCallback:Lcn/powervision/flightlog/ScreenRecorderManager$Callback;

    if-eqz v0, :cond_3

    .line 207
    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {v0, v3, v4}, Lcn/powervision/flightlog/ScreenRecorderManager$Callback;->onRecording(J)V

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 211
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 212
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 213
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mVideoTrackIndex:I

    invoke-virtual {v0, v1, p2, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sent "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes to MediaMuxer..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/powervision/base/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private muxVideo(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 171
    iget-boolean v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxerStarted:Z

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mForceQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "ScreenRecorderManager"

    if-eqz v1, :cond_0

    const-string v1, "Recorder attempt to quit, signal muxer EOS"

    .line 177
    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 180
    :cond_0
    invoke-direct {p0, p2, v0}, Lcn/powervision/flightlog/ScreenRecorderManager;->encodeToVideoTrack(Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 181
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 182
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 183
    invoke-direct {p0}, Lcn/powervision/flightlog/ScreenRecorderManager;->stop()V

    const-string p1, "Stop encoder and muxer, since the buffer has been marked with EOS"

    .line 184
    invoke-static {v2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mHandler:Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    .line 172
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MediaMuxer dose not call addTrack(format) "

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private record()V
    .locals 12

    .line 145
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mForceQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    iget-object v2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mHandler:Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 156
    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mDstPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxer:Landroid/media/MediaMuxer;

    .line 158
    invoke-direct {p0}, Lcn/powervision/flightlog/ScreenRecorderManager;->createVideoEncoderAndSurface()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    iget-object v3, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget v5, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mWidth:I

    iget v6, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mHeight:I

    iget v7, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mDpi:I

    const/4 v8, 0x1

    iget-object v9, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mSurface:Landroid/view/Surface;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v4, "ScreenRecorderManager-display"

    invoke-virtual/range {v3 .. v11}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "created virtual display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenRecorderManager"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private release()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mWorker:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 304
    iput-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mWorker:Landroid/os/HandlerThread;

    .line 306
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 308
    iput-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 310
    :cond_1
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 312
    iput-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mSurface:Landroid/view/Surface;

    .line 314
    :cond_2
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 316
    iput-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mEncoder:Landroid/media/MediaCodec;

    .line 318
    :cond_3
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_4

    .line 319
    iget-object v2, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {v0, v2}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 320
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 321
    iput-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 323
    :cond_4
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_5

    .line 325
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :catch_0
    iput-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxer:Landroid/media/MediaMuxer;

    .line 331
    :cond_5
    iput-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mHandler:Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;

    return-void
.end method

.method private resetOutputFormatAndStartMuxer(Landroid/media/MediaFormat;)V
    .locals 2

    .line 220
    iget v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mVideoTrackIndex:I

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxerStarted:Z

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output format changed.\n New format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenRecorderManager"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mVideoTrackIndex:I

    .line 225
    iget-object p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxerStarted:Z

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Started media muxer, videoIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mVideoTrackIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "output format already changed!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private stop()V
    .locals 2

    .line 288
    :try_start_0
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :catch_1
    :cond_1
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    const-string v0, "ScreenRecorderManager"

    const-string v1, "release() not called!"

    .line 337
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcn/powervision/flightlog/ScreenRecorderManager;->release()V

    :cond_0
    return-void
.end method

.method public getSavedPath()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mDstPath:Ljava/lang/String;

    return-object v0
.end method

.method public final quit()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mForceQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcn/powervision/flightlog/ScreenRecorderManager;->release()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcn/powervision/flightlog/ScreenRecorderManager$Callback;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mCallback:Lcn/powervision/flightlog/ScreenRecorderManager$Callback;

    return-void
.end method

.method public start()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mWorker:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenRecorderManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mWorker:Landroid/os/HandlerThread;

    .line 89
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v0, Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;

    iget-object v1, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;-><init>(Lcn/powervision/flightlog/ScreenRecorderManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager;->mHandler:Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;->sendEmptyMessage(I)Z

    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
