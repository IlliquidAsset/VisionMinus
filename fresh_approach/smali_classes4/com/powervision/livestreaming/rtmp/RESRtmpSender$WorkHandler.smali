.class Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;
.super Landroid/os/Handler;
.source "RESRtmpSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/livestreaming/rtmp/RESRtmpSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkHandler"
.end annotation


# static fields
.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x3

.field private static final MSG_WRITE:I = 0x2


# instance fields
.field private RTMP_STATE_IDLE:I

.field private RTMP_STATE_RUNNING:I

.field private RTMP_STATE_STOPPED:I

.field private audioByteSpeedometer:Lcom/powervision/livestreaming/core/RESByteSpeedometer;

.field private connectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

.field private errorTime:I

.field private fLvMetaData:Lcom/powervision/livestreaming/rtmp/FLvMetaData;

.field private jniRtmpPointer:J

.field private maxQueueLength:I

.field private sendFrameRateMeter:Lcom/powervision/livestreaming/core/RESFrameRateMeter;

.field private serverIpAddr:Ljava/lang/String;

.field private state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final syncConnectionListener:Ljava/lang/Object;

.field private final syncWriteMsgNum:Ljava/lang/Object;

.field private videoByteSpeedometer:Lcom/powervision/livestreaming/core/RESByteSpeedometer;

.field private writeMsgNum:I


# direct methods
.method constructor <init>(ILcom/powervision/livestreaming/rtmp/FLvMetaData;Landroid/os/Looper;)V
    .locals 2

    .line 143
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->jniRtmpPointer:J

    const/4 p3, 0x0

    .line 123
    iput-object p3, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->serverIpAddr:Ljava/lang/String;

    const/4 p3, 0x0

    .line 125
    iput p3, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->writeMsgNum:I

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->syncWriteMsgNum:Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Lcom/powervision/livestreaming/core/RESByteSpeedometer;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->videoByteSpeedometer:Lcom/powervision/livestreaming/core/RESByteSpeedometer;

    .line 128
    new-instance v0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;

    invoke-direct {v0, v1}, Lcom/powervision/livestreaming/core/RESByteSpeedometer;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->audioByteSpeedometer:Lcom/powervision/livestreaming/core/RESByteSpeedometer;

    .line 129
    new-instance v0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;

    invoke-direct {v0}, Lcom/powervision/livestreaming/core/RESFrameRateMeter;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->sendFrameRateMeter:Lcom/powervision/livestreaming/core/RESFrameRateMeter;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->syncConnectionListener:Ljava/lang/Object;

    .line 133
    iput p3, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->errorTime:I

    .line 135
    iput p3, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->RTMP_STATE_IDLE:I

    const/4 p3, 0x1

    .line 136
    iput p3, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->RTMP_STATE_RUNNING:I

    const/4 p3, 0x2

    .line 137
    iput p3, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->RTMP_STATE_STOPPED:I

    .line 140
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p3, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 144
    iput p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->maxQueueLength:I

    .line 145
    iput-object p2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->fLvMetaData:Lcom/powervision/livestreaming/rtmp/FLvMetaData;

    .line 146
    iget p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->RTMP_STATE_IDLE:I

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->connectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    return-object p0
.end method


# virtual methods
.method public getAudioSpeed()I
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->audioByteSpeedometer:Lcom/powervision/livestreaming/core/RESByteSpeedometer;

    invoke-virtual {v0}, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->getSpeed()I

    move-result v0

    return v0
.end method

.method public getSendBufferFreePercent()F
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->syncWriteMsgNum:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->maxQueueLength:I

    iget v2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->writeMsgNum:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->maxQueueLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    const/4 v1, 0x0

    .line 160
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSendFrameRate()F
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->sendFrameRateMeter:Lcom/powervision/livestreaming/core/RESFrameRateMeter;

    invoke-virtual {v0}, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->getFps()F

    move-result v0

    return v0
.end method

.method public getServerIpAddr()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->serverIpAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSpeed()I
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->getVideoSpeed()I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->getAudioSpeed()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getVideoSpeed()I
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->videoByteSpeedometer:Lcom/powervision/livestreaming/core/RESByteSpeedometer;

    invoke-virtual {v0}, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->getSpeed()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 166
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_a

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_0

    goto/16 :goto_2

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->RTMP_STATE_STOPPED:I

    if-eq p1, v0, :cond_3

    iget-wide v4, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->jniRtmpPointer:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stop live streaming: close rtmp!!!"

    invoke-static {p1, v0}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->errorTime:I

    .line 232
    iget-wide v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->jniRtmpPointer:J

    invoke-static {v0, v1}, Lme/lake/librestreaming/rtmp/RtmpClient;->close(J)I

    move-result p1

    .line 233
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop live streaming: close rtmp  closeR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->serverIpAddr:Ljava/lang/String;

    .line 235
    iget-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->syncConnectionListener:Ljava/lang/Object;

    monitor-enter p1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->connectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    if-eqz v0, :cond_2

    .line 237
    invoke-static {}, Lcom/powervision/livestreaming/client/CallbackDelivery;->i()Lcom/powervision/livestreaming/client/CallbackDelivery;

    move-result-object v0

    new-instance v1, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$2;

    invoke-direct {v1, p0}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$2;-><init>(Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;)V

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/client/CallbackDelivery;->post(Ljava/lang/Runnable;)V

    .line 246
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->RTMP_STATE_STOPPED:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    .line 246
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 227
    :cond_3
    :goto_0
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stop live streaming: state == STATE.STOPPED || jniRtmpPointer == 0"

    invoke-static {p1, v0}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->syncWriteMsgNum:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_2
    iget v2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->writeMsgNum:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->writeMsgNum:I

    .line 252
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 254
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: msg_write  state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->RTMP_STATE_RUNNING:I

    if-eq v0, v2, :cond_5

    goto/16 :goto_2

    .line 258
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/livestreaming/rtmp/RESFlvData;

    .line 259
    iget v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->writeMsgNum:I

    iget v2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->maxQueueLength:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v2, v5

    const/16 v3, 0x9

    if-lt v0, v2, :cond_6

    iget v0, p1, Lcom/powervision/livestreaming/rtmp/RESFlvData;->flvTagType:I

    if-ne v0, v3, :cond_6

    iget-boolean v0, p1, Lcom/powervision/livestreaming/rtmp/RESFlvData;->droppable:Z

    if-eqz v0, :cond_6

    .line 260
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "senderQueue is crowded,abandon video"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 263
    :cond_6
    iget-wide v5, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->jniRtmpPointer:J

    iget-object v7, p1, Lcom/powervision/livestreaming/rtmp/RESFlvData;->byteBuffer:[B

    iget-object v0, p1, Lcom/powervision/livestreaming/rtmp/RESFlvData;->byteBuffer:[B

    array-length v8, v0

    iget v9, p1, Lcom/powervision/livestreaming/rtmp/RESFlvData;->flvTagType:I

    iget v10, p1, Lcom/powervision/livestreaming/rtmp/RESFlvData;->dts:I

    invoke-static/range {v5 .. v10}, Lme/lake/librestreaming/rtmp/RtmpClient;->write(J[BIII)I

    move-result v0

    .line 265
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: msg_write  result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_8

    .line 267
    iput v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->errorTime:I

    .line 268
    iget v0, p1, Lcom/powervision/livestreaming/rtmp/RESFlvData;->flvTagType:I

    if-ne v0, v3, :cond_7

    .line 269
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->videoByteSpeedometer:Lcom/powervision/livestreaming/core/RESByteSpeedometer;

    iget p1, p1, Lcom/powervision/livestreaming/rtmp/RESFlvData;->size:I

    invoke-virtual {v0, p1}, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->gain(I)V

    .line 270
    iget-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->sendFrameRateMeter:Lcom/powervision/livestreaming/core/RESFrameRateMeter;

    invoke-virtual {p1}, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->count()V

    goto/16 :goto_2

    .line 272
    :cond_7
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->audioByteSpeedometer:Lcom/powervision/livestreaming/core/RESByteSpeedometer;

    iget p1, p1, Lcom/powervision/livestreaming/rtmp/RESFlvData;->size:I

    invoke-virtual {v0, p1}, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->gain(I)V

    goto/16 :goto_2

    .line 275
    :cond_8
    iget p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->errorTime:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->errorTime:I

    .line 276
    iget-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->syncConnectionListener:Ljava/lang/Object;

    monitor-enter p1

    .line 277
    :try_start_3
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->connectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    if-eqz v1, :cond_9

    .line 278
    invoke-static {}, Lcom/powervision/livestreaming/client/CallbackDelivery;->i()Lcom/powervision/livestreaming/client/CallbackDelivery;

    move-result-object v1

    new-instance v2, Lcom/powervision/livestreaming/core/listener/RESConnectionListener$RESWriteErrorRunable;

    iget-object v3, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->connectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    invoke-direct {v2, v3, v0}, Lcom/powervision/livestreaming/core/listener/RESConnectionListener$RESWriteErrorRunable;-><init>(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;I)V

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/client/CallbackDelivery;->post(Ljava/lang/Runnable;)V

    .line 280
    :cond_9
    monitor-exit p1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 252
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 169
    :cond_a
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v5, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->RTMP_STATE_RUNNING:I

    if-ne v0, v5, :cond_b

    goto/16 :goto_2

    .line 172
    :cond_b
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->sendFrameRateMeter:Lcom/powervision/livestreaming/core/RESFrameRateMeter;

    invoke-virtual {v0}, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->reSet()V

    .line 173
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RESRtmpSender,WorkHandler,tid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v5, "handleMessage: MSG_START: \u5f00\u59cb\u8fde\u63a5RTMP "

    invoke-static {v0, v5}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v4}, Lme/lake/librestreaming/rtmp/RtmpClient;->open(Ljava/lang/String;Z)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->jniRtmpPointer:J

    cmp-long p1, v5, v2

    if-nez p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    if-nez v1, :cond_d

    .line 179
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RTMP\u8fde\u63a5\u6210\u529f\uff01\uff01\uff01"

    invoke-static {p1, v0}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-wide v4, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->jniRtmpPointer:J

    invoke-static {v4, v5}, Lme/lake/librestreaming/rtmp/RtmpClient;->getIpAddr(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->serverIpAddr:Ljava/lang/String;

    .line 182
    :cond_d
    iget-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->syncConnectionListener:Ljava/lang/Object;

    monitor-enter p1

    .line 183
    :try_start_5
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->connectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    if-eqz v0, :cond_e

    .line 184
    invoke-static {}, Lcom/powervision/livestreaming/client/CallbackDelivery;->i()Lcom/powervision/livestreaming/client/CallbackDelivery;

    move-result-object v0

    new-instance v4, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler$1;-><init>(Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;I)V

    invoke-virtual {v0, v4}, Lcom/powervision/livestreaming/client/CallbackDelivery;->post(Ljava/lang/Runnable;)V

    .line 197
    :cond_e
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 199
    iget-wide v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->jniRtmpPointer:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_f

    .line 200
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage: MSG_START: RTMP\u8fde\u63a5\u5931\u8d25 "

    invoke-static {p1, v0}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 203
    :cond_f
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage: MSG_START: RTMP\u8fde\u63a5\u6210\u529f "

    invoke-static {p1, v0}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->fLvMetaData:Lcom/powervision/livestreaming/rtmp/FLvMetaData;

    invoke-virtual {p1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->getMetaData()[B

    move-result-object v2

    .line 205
    iget-wide v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->jniRtmpPointer:J

    array-length v3, v2

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lme/lake/librestreaming/rtmp/RtmpClient;->write(J[BIII)I

    move-result p1

    .line 209
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTMP\u8fde\u63a5\u4e0a,\u53d1\u9001 MetaData \u6570\u636e === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_10

    const-string p1, "\u6210\u529f\uff01\uff01\uff01"

    goto :goto_1

    :cond_10
    const-string p1, "\u5931\u8d25\uff01\uff01\uff01"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->RTMP_STATE_RUNNING:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 222
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage: MSG_START: RTMP\u8fde\u63a5\u72b6\u6001\u6539\u4e3a: RUNNING"

    invoke-static {p1, v0}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :catchall_3
    move-exception v0

    .line 197
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public sendFood(Lcom/powervision/livestreaming/rtmp/RESFlvData;I)V
    .locals 5

    .line 307
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->syncWriteMsgNum:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "\u89c6\u9891"

    const/16 v2, 0x8

    if-ne p2, v2, :cond_0

    const-string v1, "\u97f3\u9891"

    .line 313
    :cond_0
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFood: writeMsgNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->writeMsgNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   maxQueueLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->maxQueueLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  tms = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/powervision/livestreaming/rtmp/RESFlvData;->dts:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->writeMsgNum:I

    iget v2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->maxQueueLength:I

    if-gt v1, v2, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 315
    invoke-virtual {p0, v1, p2, v2, p1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    iget p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->writeMsgNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->writeMsgNum:I

    goto :goto_0

    .line 318
    :cond_1
    invoke-static {}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "senderQueue is full,abandon"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendStart(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 289
    invoke-virtual {p0, v0}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->removeMessages(I)V

    .line 290
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->syncWriteMsgNum:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 291
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->removeMessages(I)V

    const/4 v2, 0x0

    .line 292
    iput v2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->writeMsgNum:I

    .line 293
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {p0, v0, p1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 293
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendStop()V
    .locals 3

    const/4 v0, 0x3

    .line 298
    invoke-virtual {p0, v0}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->removeMessages(I)V

    .line 299
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->syncWriteMsgNum:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 300
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->removeMessages(I)V

    const/4 v2, 0x0

    .line 301
    iput v2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->writeMsgNum:I

    .line 302
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-virtual {p0, v0}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 302
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setConnectionListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->syncConnectionListener:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    iput-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->connectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    .line 345
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
