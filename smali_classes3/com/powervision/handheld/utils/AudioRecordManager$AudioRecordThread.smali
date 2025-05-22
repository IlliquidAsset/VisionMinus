.class public Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;
.super Ljava/lang/Thread;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/utils/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private encoder:Landroid/media/MediaCodec;

.field private final isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private recorder:Landroid/media/AudioRecord;

.field final synthetic this$0:Lcom/powervision/handheld/utils/AudioRecordManager;


# direct methods
.method public constructor <init>(Lcom/powervision/handheld/utils/AudioRecordManager;Landroid/media/AudioRecord;Landroid/media/MediaCodec;)V
    .locals 1

    .line 209
    iput-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 205
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 210
    iput-object p2, p0, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->recorder:Landroid/media/AudioRecord;

    .line 211
    iput-object p3, p0, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->encoder:Landroid/media/MediaCodec;

    return-void
.end method

.method private bytesToShort([B[S)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method private shortToByte([S[B)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method private startRecording()V
    .locals 25

    move-object/from16 v8, p0

    .line 223
    iget-object v0, v8, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->recorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRecordThread: startRecording, recorder is not avaliable!"

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v9, 0x372

    new-array v10, v9, [B

    const/16 v11, 0x1b9

    new-array v12, v11, [S

    const/16 v13, 0x372

    new-array v14, v13, [S

    const/16 v15, 0x6e4

    new-array v7, v15, [B

    .line 235
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 236
    iget-object v0, v8, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording: start() resampleRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  srcSampleShortSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  reSampleShortSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 289
    :goto_0
    iget-object v0, v8, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 292
    invoke-static {v10, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 293
    iget-object v0, v8, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0, v10, v4, v9}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 294
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRecording: audio record minBufferSize = 882  read size = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  \u91c7\u96c6\u7b49\u5f85\u65f6\u95f4: = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v21, v14

    sub-long v13, v18, v16

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v3, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v21

    const/4 v6, 0x1

    :goto_1
    const/16 v13, 0x372

    goto :goto_0

    .line 308
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "AP03_RECORD_NOISE_SWITCH"

    invoke-virtual {v1, v2, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 310
    invoke-static {v10}, Lcom/powervision/opensource/JniPCMDenoiseNative;->mPCMDeNoise([B)[B

    move-result-object v2

    .line 311
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "===============\u964d\u566a\u65f6\u95f4: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v4, v18, v22

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v2, v10

    .line 324
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 325
    invoke-direct {v8, v2, v12}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->bytesToShort([B[S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v2, 0x5622

    const v4, 0xac44

    const/16 v6, 0x1b9

    move-object/from16 v1, p0

    move/from16 v18, v3

    move v3, v4

    const/4 v5, 0x0

    move-object v4, v12

    const/4 v9, 0x0

    const/4 v14, 0x2

    move-object/from16 v5, v21

    const/4 v14, 0x1

    move-object v14, v7

    const/16 v20, 0x372

    move/from16 v7, v20

    .line 327
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->resammpleData(II[S[SII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v7, v21

    .line 329
    :try_start_2
    invoke-direct {v8, v7, v14}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->shortToByte([S[B)V

    .line 330
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====111111==========byte\u8f6cshort/\u91cd\u91c7\u6837/short\u8f6cbyte \u603b\u5171\u8017\u65f6: ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 335
    iget-object v1, v8, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->encoder:Landroid/media/MediaCodec;

    const-wide/32 v2, 0xc350

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    .line 336
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecording: dequeueInputBuffer index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v2, :cond_4

    .line 338
    iget-object v1, v8, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 340
    iget-object v3, v8, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v3}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$1000(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 341
    invoke-static {v14, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 343
    :cond_3
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 344
    iget-object v1, v8, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->encoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v23, 0x3e8

    mul-long v5, v4, v23

    const/4 v13, 0x0

    move v4, v15

    move-object/from16 v21, v7

    move v7, v13

    :try_start_3
    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_3

    :cond_4
    move-object/from16 v21, v7

    :goto_3
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v11, :cond_5

    .line 350
    aget-short v3, v12, v4

    mul-int v3, v3, v3

    int-to-long v5, v3

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    long-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 355
    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double v0, v0, v3

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volume \u5206\u8d1d\u503c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    .line 357
    iget-object v2, v8, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v2}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$1100(Lcom/powervision/handheld/utils/AudioRecordManager;)Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_6

    .line 358
    iget-object v2, v8, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v2}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$1100(Lcom/powervision/handheld/utils/AudioRecordManager;)Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;->onVolumeChange(D)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v21, v7

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move/from16 v18, v3

    move-object v14, v7

    const/4 v9, 0x0

    const/16 v20, 0x372

    .line 361
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    :cond_6
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v16

    .line 365
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f55\u5236\u8017\u65f6-\u6beb\u79d2=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v14

    move/from16 v3, v18

    move-object/from16 v14, v21

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v9, 0x372

    goto/16 :goto_1

    .line 367
    :cond_7
    iget-object v0, v8, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->this$0:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->access$100(Lcom/powervision/handheld/utils/AudioRecordManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method resammpleData(II[S[SII)V
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 427
    invoke-static {p3, v0, p4, v0, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    add-int/lit8 p5, p5, -0x1

    :goto_0
    if-ge v0, p6, :cond_2

    int-to-float v1, v0

    int-to-float v2, p1

    mul-float v1, v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    float-to-int v2, v1

    int-to-float v3, v2

    sub-float/2addr v1, v3

    if-ne v2, p5, :cond_1

    move v3, p5

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    .line 436
    aget-short v2, p3, v2

    int-to-float v2, v2

    mul-float v4, v4, v2

    aget-short v2, p3, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-short v1, v1

    aput-short v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public run()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->startRecording()V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/powervision/handheld/utils/AudioRecordManager$AudioRecordThread;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
