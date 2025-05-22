.class public Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;
.super Ljava/lang/Thread;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/utils/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioEncodeThread"
.end annotation


# instance fields
.field private encoder:Landroid/media/MediaCodec;

.field private final isEncording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mcVersion:I

.field final synthetic this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/utils/AudioRecordManager;Landroid/media/MediaCodec;)V
    .locals 1

    .line 462
    iput-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 458
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->isEncording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 463
    iput-object p2, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->encoder:Landroid/media/MediaCodec;

    .line 464
    sput v0, Lcom/powervision/aircraft/utils/AudioRecordManager;->index:I

    .line 465
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string p2, "AP03_MC_VERSION"

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/manager/FirmWareUtils;->getMcVersion(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->mcVersion:I

    return-void
.end method

.method private addADTStoPacket([BI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 645
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, -0x7

    .line 647
    aput-byte v1, p1, v0

    const/16 v0, 0x50

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 648
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p2, 0xb

    const/16 v1, 0x40

    add-int/2addr v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x3

    .line 649
    aput-byte v0, p1, v1

    and-int/lit16 v0, p2, 0x7ff

    shr-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 650
    aput-byte v0, p1, v1

    and-int/lit8 p2, p2, 0x7

    const/4 v0, 0x5

    shl-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1f

    int-to-byte p2, p2

    .line 651
    aput-byte p2, p1, v0

    const/4 p2, 0x6

    const/4 v0, -0x4

    .line 652
    aput-byte v0, p1, p2

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 470
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 471
    invoke-virtual {p0}, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->startEncording()V

    return-void
.end method

.method public startEncording()V
    .locals 19

    move-object/from16 v1, p0

    .line 478
    iget-object v0, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->encoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 479
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioEncodeThread: startEncording audio encoder is null!!!"

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 482
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 485
    :try_start_0
    iget-object v0, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->isEncording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 507
    :goto_0
    iget-object v0, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->isEncording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 508
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 512
    iget-object v9, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->encoder:Landroid/media/MediaCodec;

    const-wide/32 v10, 0xc350

    invoke-virtual {v9, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9

    .line 513
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AudioEncodeThread: dequeueOutputBuffer outputBufferIndex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x3

    if-eq v9, v10, :cond_8

    const/4 v10, -0x2

    if-eq v9, v10, :cond_7

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 534
    sget v10, Lcom/powervision/aircraft/utils/AudioRecordManager;->index:I

    if-nez v10, :cond_1

    .line 535
    sput v2, Lcom/powervision/aircraft/utils/AudioRecordManager;->index:I

    goto :goto_0

    :cond_1
    const-wide/16 v10, 0x3e8

    cmp-long v12, v5, v3

    if-nez v12, :cond_2

    .line 539
    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v5, v10

    .line 542
    :cond_2
    iget-object v12, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v12}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$500(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 543
    iget v13, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 544
    iget v13, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v14, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 545
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 547
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "audio record: isOpenRecord = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v15}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$1200(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, "  isOpenStream = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v15}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$1100(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, "  isLiveStreamAudioMute = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v15}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$900(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v13, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-virtual {v13}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getIsOpenRecord()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 549
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    const/4 v14, 0x7

    add-int/2addr v13, v14

    .line 550
    new-array v15, v13, [B

    .line 551
    invoke-direct {v1, v15, v13}, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->addADTStoPacket([BI)V

    .line 552
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    invoke-virtual {v12, v15, v14, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 559
    sget v13, Lcom/powervision/aircraft/utils/AudioRecordManager;->index:I

    add-int/lit8 v14, v13, 0x1

    sput v14, Lcom/powervision/aircraft/utils/AudioRecordManager;->index:I

    const v14, 0x7fffffff

    if-lt v13, v14, :cond_3

    .line 561
    sput v2, Lcom/powervision/aircraft/utils/AudioRecordManager;->index:I

    :cond_3
    const-string v14, "helin"

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/powervision/aircraft/utils/AudioRecordManager;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v16, 0x7fffffff

    and-long v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iget v4, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->mcVersion:I

    invoke-virtual {v2, v15, v13, v3, v4}, Lcom/powervision/camera/camera/CameraManager;->sendAudio([BIII)I

    move-result v2

    const-string v3, "nemo_record_info-air"

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u98de\u884c\u6536\u58f0\u8fd4\u56de\u6570\u636eresult======"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_4
    iget-object v2, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v2}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$1100(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 573
    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_5

    .line 575
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 576
    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v2, v10

    sub-long v14, v2, v5

    .line 578
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v13

    const/16 v17, 0x0

    iget-object v0, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$900(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    move-object/from16 v16, v12

    invoke-virtual/range {v13 .. v18}, Lcom/powervision/livestreaming/LiveStreaming;->sendAudioAACPacket(JLjava/nio/ByteBuffer;ZZ)Z

    .line 583
    :cond_5
    iget-object v0, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$500(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1

    .line 519
    :cond_6
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v2, "dequeueOutputBuffer: MediaCodec.INFO_TRY_AGAIN_LATER"

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 522
    :cond_7
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dequeueOutputBuffer: MediaCodec.INFO_OUTPUT_FORMAT_CHANGED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    .line 523
    invoke-static {v3}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$500(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$1100(Lcom/powervision/aircraft/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 527
    iget-object v0, v1, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->this$0:Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$500(Lcom/powervision/aircraft/utils/AudioRecordManager;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "csd-0"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 529
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v9

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/powervision/livestreaming/LiveStreaming;->sendAudioAACPacket(JLjava/nio/ByteBuffer;ZZ)Z

    goto :goto_1

    .line 516
    :cond_8
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v2, "dequeueOutputBuffer: MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_9
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    .line 587
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7f16\u7801\u8017\u65f6-\u6beb\u79d2=="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 606
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    return-void
.end method

.method public stopEncording()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/powervision/aircraft/utils/AudioRecordManager$AudioEncodeThread;->isEncording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
