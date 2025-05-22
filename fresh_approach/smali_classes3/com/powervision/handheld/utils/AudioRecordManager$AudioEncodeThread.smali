.class public Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;
.super Ljava/lang/Thread;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/utils/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioEncodeThread"
.end annotation


# instance fields
.field private encoder:Landroid/media/MediaCodec;

.field private final isEncording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mcVersion:I

.field final synthetic this$0:Lcom/powervision/handheld/utils/AudioRecordManager;


# direct methods
.method public constructor <init>(Lcom/powervision/handheld/utils/AudioRecordManager;Landroid/media/MediaCodec;)V
    .locals 1

    .line 457
    iput-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 453
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->isEncording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 458
    iput-object p2, p0, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->encoder:Landroid/media/MediaCodec;

    .line 459
    sput v0, Lcom/powervision/handheld/utils/AudioRecordManager;->index:I

    .line 460
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string p2, "AP03_MC_VERSION"

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/manager/FirmWareUtils;->getMcVersion(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->mcVersion:I

    return-void
.end method

.method private addADTStoPacket([BI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 634
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, -0x7

    .line 636
    aput-byte v1, p1, v0

    const/16 v0, 0x50

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 637
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p2, 0xb

    const/16 v1, 0x40

    add-int/2addr v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x3

    .line 638
    aput-byte v0, p1, v1

    and-int/lit16 v0, p2, 0x7ff

    shr-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 639
    aput-byte v0, p1, v1

    and-int/lit8 p2, p2, 0x7

    const/4 v0, 0x5

    shl-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1f

    int-to-byte p2, p2

    .line 640
    aput-byte p2, p1, v0

    const/4 p2, 0x6

    const/4 v0, -0x4

    .line 641
    aput-byte v0, p1, p2

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 465
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 466
    invoke-virtual {p0}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->startEncording()V

    return-void
.end method

.method public startEncording()V
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "helin"

    .line 473
    iget-object v2, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->encoder:Landroid/media/MediaCodec;

    if-nez v2, :cond_0

    .line 474
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioEncodeThread: startEncording audio encoder is null!!!"

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 477
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 480
    :try_start_0
    iget-object v2, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->isEncording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 499
    :goto_0
    iget-object v2, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->isEncording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 500
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 504
    iget-object v10, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->encoder:Landroid/media/MediaCodec;

    const-wide/32 v11, 0xc350

    invoke-virtual {v10, v2, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    .line 505
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AudioEncodeThread: dequeueOutputBuffer outputBufferIndex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x3

    if-eq v10, v11, :cond_8

    const/4 v11, -0x2

    if-eq v10, v11, :cond_7

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    .line 526
    sget v11, Lcom/powervision/handheld/utils/AudioRecordManager;->index:I

    if-nez v11, :cond_1

    .line 527
    sput v3, Lcom/powervision/handheld/utils/AudioRecordManager;->index:I

    goto :goto_0

    :cond_1
    const-wide/16 v11, 0x3e8

    cmp-long v13, v6, v4

    if-nez v13, :cond_2

    .line 531
    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v6, v11

    .line 534
    :cond_2
    iget-object v13, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v13}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$500(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 535
    iget v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 536
    iget v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v15, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 537
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 539
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio record: isOpenRecord = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v4}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$1300(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  isOpenStream = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v4}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$1200(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  isLiveStreamAudioMute = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v4}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$1000(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v4, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-virtual {v4}, Lcom/powervision/handheld/utils/AudioRecordManager;->getIsOpenRecord()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 541
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    const/4 v5, 0x7

    add-int/2addr v4, v5

    .line 542
    new-array v14, v4, [B

    .line 543
    invoke-direct {v1, v14, v4}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->addADTStoPacket([BI)V

    .line 544
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v13, v14, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->mcVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget v4, Lcom/powervision/handheld/utils/AudioRecordManager;->index:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/powervision/handheld/utils/AudioRecordManager;->index:I

    const v5, 0x7fffffff

    if-lt v4, v5, :cond_3

    .line 552
    sput v3, Lcom/powervision/handheld/utils/AudioRecordManager;->index:I

    .line 554
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "index == "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/powervision/handheld/utils/AudioRecordManager;->index:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/32 v17, 0x7fffffff

    and-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->intValue()I

    move-result v15

    iget v3, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->mcVersion:I

    invoke-virtual {v5, v14, v4, v15, v3}, Lcom/powervision/camera/camera/CameraManager;->sendAudio([BIII)I

    move-result v3

    .line 556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "index = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", time = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    and-long v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->intValue()I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", mcVersion = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->mcVersion:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    const-string v5, "nemo_record_info-air"

    .line 557
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u98de\u884c\u6536\u58f0\u8fd4\u56de\u6570\u636eresult======"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    .line 559
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u7f16\u7801 index = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c\u8017\u65f6 = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/powervision/base/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_4
    iget-object v3, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v3}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$1200(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 566
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_5

    .line 568
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 569
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v2, v11

    sub-long v15, v2, v6

    .line 571
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v14

    const/16 v18, 0x0

    iget-object v2, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v2}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$1000(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    move-object/from16 v17, v13

    invoke-virtual/range {v14 .. v19}, Lcom/powervision/livestreaming/LiveStreaming;->sendAudioAACPacket(JLjava/nio/ByteBuffer;ZZ)Z

    .line 576
    :cond_5
    iget-object v2, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v2}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$500(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1

    .line 511
    :cond_6
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dequeueOutputBuffer: MediaCodec.INFO_TRY_AGAIN_LATER"

    invoke-static {v2, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 514
    :cond_7
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dequeueOutputBuffer: MediaCodec.INFO_OUTPUT_FORMAT_CHANGED:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    .line 515
    invoke-static {v4}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$500(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-static {v2, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v2, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v2}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$1200(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 519
    iget-object v2, v1, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v2}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$500(Lcom/powervision/handheld/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "csd-0"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 521
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/powervision/livestreaming/LiveStreaming;->sendAudioAACPacket(JLjava/nio/ByteBuffer;ZZ)Z

    goto :goto_1

    .line 508
    :cond_8
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dequeueOutputBuffer: MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v2, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_1
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    return-void
.end method

.method public stopEncording()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$AudioEncodeThread;->isEncording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
