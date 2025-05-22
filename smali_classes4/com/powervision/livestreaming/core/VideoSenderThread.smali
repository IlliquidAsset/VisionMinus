.class public Lcom/powervision/livestreaming/core/VideoSenderThread;
.super Ljava/lang/Thread;
.source "VideoSenderThread.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_TIME:J = 0x1388L


# instance fields
.field private dataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

.field private dstVideoEncoder:Landroid/media/MediaCodec;

.field private eInfo:Landroid/media/MediaCodec$BufferInfo;

.field private shouldQuit:Z

.field private final syncDstVideoEncoder:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/powervision/livestreaming/core/VideoSenderThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/livestreaming/core/VideoSenderThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/media/MediaCodec;Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->syncDstVideoEncoder:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->shouldQuit:Z

    .line 27
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->eInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 28
    iput-object p2, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->dstVideoEncoder:Landroid/media/MediaCodec;

    .line 29
    iput-object p3, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->dataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    return-void
.end method

.method private sendAVCDecoderConfigurationRecord(JLandroid/media/MediaFormat;)V
    .locals 6

    .line 98
    invoke-static {p3}, Lcom/powervision/livestreaming/core/Packager$H264Packager;->generateAVCDecoderConfigurationRecord(Landroid/media/MediaFormat;)[B

    move-result-object p3

    .line 99
    array-length v0, p3

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 101
    new-array v2, v0, [B

    .line 102
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v5, v3}, Lcom/powervision/livestreaming/core/Packager$FLVPackager;->fillFlvVideoTag([BIZZI)V

    .line 107
    array-length v3, p3

    invoke-static {p3, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    new-instance p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;

    invoke-direct {p3}, Lcom/powervision/livestreaming/rtmp/RESFlvData;-><init>()V

    .line 110
    iput-boolean v4, p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;->droppable:Z

    .line 111
    iput-object v2, p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;->byteBuffer:[B

    .line 112
    iput v0, p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;->size:I

    long-to-int p2, p1

    .line 113
    iput p2, p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;->dts:I

    const/16 p1, 0x9

    .line 114
    iput p1, p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;->flvTagType:I

    .line 115
    iput v1, p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;->videoFrameType:I

    .line 116
    iget-object p2, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->dataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    invoke-interface {p2, p3, p1}, Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;->collect(Lcom/powervision/livestreaming/rtmp/RESFlvData;I)V

    return-void
.end method

.method private sendRealData(JLjava/nio/ByteBuffer;)V
    .locals 7

    .line 120
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v1, v0, 0x9

    .line 124
    new-array v2, v1, [B

    const/16 v3, 0x9

    .line 125
    invoke-virtual {p3, v2, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 128
    aget-byte p3, v2, v3

    and-int/lit8 p3, p3, 0x1f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-ne p3, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 130
    :goto_0
    invoke-static {v2, v5, v5, v6, v0}, Lcom/powervision/livestreaming/core/Packager$FLVPackager;->fillFlvVideoTag([BIZZI)V

    .line 135
    new-instance v0, Lcom/powervision/livestreaming/rtmp/RESFlvData;

    invoke-direct {v0}, Lcom/powervision/livestreaming/rtmp/RESFlvData;-><init>()V

    .line 136
    iput-boolean v4, v0, Lcom/powervision/livestreaming/rtmp/RESFlvData;->droppable:Z

    .line 137
    iput-object v2, v0, Lcom/powervision/livestreaming/rtmp/RESFlvData;->byteBuffer:[B

    .line 138
    iput v1, v0, Lcom/powervision/livestreaming/rtmp/RESFlvData;->size:I

    long-to-int p2, p1

    .line 139
    iput p2, v0, Lcom/powervision/livestreaming/rtmp/RESFlvData;->dts:I

    .line 140
    iput v3, v0, Lcom/powervision/livestreaming/rtmp/RESFlvData;->flvTagType:I

    .line 141
    iput p3, v0, Lcom/powervision/livestreaming/rtmp/RESFlvData;->videoFrameType:I

    .line 142
    iget-object p1, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->dataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    invoke-interface {p1, v0, v3}, Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;->collect(Lcom/powervision/livestreaming/rtmp/RESFlvData;I)V

    return-void
.end method


# virtual methods
.method quit()V
    .locals 1

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->shouldQuit:Z

    .line 42
    invoke-virtual {p0}, Lcom/powervision/livestreaming/core/VideoSenderThread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 12

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 48
    :goto_0
    iget-boolean v4, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->shouldQuit:Z

    if-nez v4, :cond_5

    .line 49
    iget-object v4, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->syncDstVideoEncoder:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, -0x1

    .line 52
    :try_start_0
    iget-object v6, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->dstVideoEncoder:Landroid/media/MediaCodec;

    iget-object v7, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->eInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    const/4 v6, -0x1

    :goto_1
    const/4 v7, -0x3

    if-eq v6, v7, :cond_3

    const/4 v7, -0x2

    if-eq v6, v7, :cond_2

    if-eq v6, v5, :cond_4

    .line 68
    :try_start_1
    sget-object v5, Lcom/powervision/livestreaming/core/VideoSenderThread;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoSenderThread,MediaCode,eobIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v5, Lcom/powervision/livestreaming/core/VideoSenderThread;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "====================\u89c6\u9891\u65f6\u95f4\u6233================ eInfo.presentationTimeUs = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->eInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x3e8

    cmp-long v5, v2, v0

    if-nez v5, :cond_0

    .line 71
    iget-object v2, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->eInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v2, v7

    .line 77
    :cond_0
    iget-object v5, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->eInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x2

    if-eq v5, v9, :cond_1

    iget-object v5, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->eInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_1

    .line 78
    iget-object v5, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->dstVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v5, v5, v6

    .line 79
    iget-object v9, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->eInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/lit8 v9, v9, 0x4

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    iget-object v9, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->eInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v10, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->eInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 81
    iget-object v9, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->eInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v9, v7

    sub-long/2addr v9, v2

    .line 82
    sget-object v7, Lcom/powervision/livestreaming/core/VideoSenderThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "11111111111111111111111===========\u89c6\u9891\u65f6\u95f4\u6233 = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, v9, v10, v5}, Lcom/powervision/livestreaming/core/VideoSenderThread;->sendRealData(JLjava/nio/ByteBuffer;)V

    .line 85
    :cond_1
    iget-object v5, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->dstVideoEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_2

    .line 63
    :cond_2
    sget-object v5, Lcom/powervision/livestreaming/core/VideoSenderThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoSenderThread,MediaCodec.INFO_OUTPUT_FORMAT_CHANGED:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->dstVideoEncoder:Landroid/media/MediaCodec;

    .line 64
    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v5, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->dstVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    invoke-direct {p0, v0, v1, v5}, Lcom/powervision/livestreaming/core/VideoSenderThread;->sendAVCDecoderConfigurationRecord(JLandroid/media/MediaFormat;)V

    goto :goto_2

    .line 57
    :cond_3
    sget-object v5, Lcom/powervision/livestreaming/core/VideoSenderThread;->TAG:Ljava/lang/String;

    const-string v6, "VideoSenderThread,MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_4
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x5

    .line 90
    :try_start_2
    invoke-static {v4, v5}, Lcom/powervision/livestreaming/core/VideoSenderThread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    nop

    goto/16 :goto_0

    .line 88
    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->eInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method public updateMediaCodec(Landroid/media/MediaCodec;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->syncDstVideoEncoder:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    iput-object p1, p0, Lcom/powervision/livestreaming/core/VideoSenderThread;->dstVideoEncoder:Landroid/media/MediaCodec;

    .line 35
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
