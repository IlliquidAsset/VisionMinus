.class public Lcom/powervision/livestreaming/LiveStreaming;
.super Ljava/lang/Object;
.source "LiveStreaming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/livestreaming/LiveStreaming$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

.field private mFlvDataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

.field private mLiveStreamEnabled:Z

.field private mLiveStreamRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLiveStreamingListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

.field private mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

.field private mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

.field private mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

.field private mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

.field private final syncOp:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/powervision/livestreaming/LiveStreaming;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Lcom/powervision/livestreaming/LiveStreaming$1;

    invoke-direct {v0, p0}, Lcom/powervision/livestreaming/LiveStreaming$1;-><init>(Lcom/powervision/livestreaming/LiveStreaming;)V

    iput-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mConnectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-direct {v0}, Lcom/powervision/livestreaming/model/RESCoreParameters;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/16 v1, 0x780

    .line 102
    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setVideoWidth(I)V

    .line 103
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/16 v1, 0x438

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setVideoHeight(I)V

    .line 104
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacodecVideoWidth(I)V

    .line 105
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/16 v1, 0x2d0

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacodecVideoHeight(I)V

    .line 106
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const v1, 0xfa000

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacdoecAVCBitRate(I)V

    .line 107
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacodecAVCFrameRate(I)V

    .line 108
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacodecAVCIFrameInterval(I)V

    .line 109
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/16 v2, 0x96

    invoke-virtual {v0, v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setSenderQueueLength(I)V

    .line 110
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const v2, 0x8000

    invoke-virtual {v0, v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacodecAACBitRate(I)V

    .line 111
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const v2, 0xac44

    invoke-virtual {v0, v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacodecAACSampleRate(I)V

    .line 112
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacodecAACChannelCount(I)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/powervision/livestreaming/LiveStreaming;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/core/listener/RESConnectionListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamingListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/livestreaming/LiveStreaming;)Lcom/powervision/livestreaming/rtmp/RESRtmpSender;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    return-object p0
.end method

.method public static getInstance()Lcom/powervision/livestreaming/LiveStreaming;
    .locals 1

    .line 96
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming$LazyHolder;->access$300()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v0

    return-object v0
.end method

.method private startSendAACStream()Z
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    if-nez v1, :cond_0

    .line 409
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v2, "startSendAACStream: live streaming not supported!!!"

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 410
    monitor-exit v0

    return v1

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mFlvDataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/core/RESAudioCore;->setRESFlvDataCollecter(Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;)V

    .line 413
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v2, "startSendAACStream!!!"

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 414
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 415
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopSendAACStream()Z
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    if-nez v1, :cond_0

    .line 426
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v2, "stopSendAACStream: live streaming not supported!!!"

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 427
    monitor-exit v0

    return v1

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/core/RESAudioCore;->setRESFlvDataCollecter(Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;)V

    .line 430
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v2, "stopSendAACStream!!!"

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 431
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public destory()Z
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    if-nez v1, :cond_0

    .line 223
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v2, "destory: live streaming not supported!!!"

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 224
    monitor-exit v0

    return v1

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-virtual {v1}, Lcom/powervision/livestreaming/core/RESVideoCore;->destroy()Z

    :cond_1
    const/4 v1, 0x0

    .line 230
    iput-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    .line 231
    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    invoke-virtual {v2}, Lcom/powervision/livestreaming/core/RESAudioCore;->destory()V

    .line 234
    :cond_2
    iput-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    .line 235
    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    if-eqz v2, :cond_3

    .line 236
    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    invoke-virtual {v2, v1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->setConnectionListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V

    .line 237
    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    invoke-virtual {v2}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->destroy()V

    .line 239
    :cond_3
    iput-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    .line 240
    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mFlvDataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    if-eqz v2, :cond_4

    .line 241
    iput-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mFlvDataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    .line 244
    :cond_4
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v2, "destory(): end"

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 245
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLiveStreamEnabled()Z
    .locals 3

    .line 167
    sget-object v0, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLiveStreamEnabled: set enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayerSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 258
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v3, "getPlayerSurfaceTexture: live streaming not supported!!!"

    invoke-static {v1, v3}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    monitor-exit v0

    return-object v2

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-virtual {v1}, Lcom/powervision/livestreaming/core/RESVideoCore;->getPlayerSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 264
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLiveRunning()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public prepare()Z
    .locals 4

    .line 180
    sget-object v0, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v1, "==================prepare=============="

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 183
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v3, "prepare: live streaming not supported!!!"

    invoke-static {v1, v3}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    monitor-exit v0

    return v2

    .line 186
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    new-instance v1, Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-direct {v1}, Lcom/powervision/livestreaming/core/RESVideoCore;-><init>()V

    iput-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    .line 189
    new-instance v1, Lcom/powervision/livestreaming/core/RESAudioCore;

    invoke-direct {v1}, Lcom/powervision/livestreaming/core/RESAudioCore;-><init>()V

    iput-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    .line 190
    new-instance v1, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    invoke-direct {v1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;-><init>()V

    iput-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    .line 191
    new-instance v1, Lcom/powervision/livestreaming/LiveStreaming$2;

    invoke-direct {v1, p0}, Lcom/powervision/livestreaming/LiveStreaming$2;-><init>(Lcom/powervision/livestreaming/LiveStreaming;)V

    iput-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mFlvDataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    .line 201
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/16 v2, 0x780

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setVideoWidth(I)V

    .line 202
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/16 v2, 0x438

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setVideoHeight(I)V

    .line 203
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacodecVideoWidth(I)V

    .line 204
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/16 v2, 0x2d0

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacodecVideoHeight(I)V

    .line 207
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/core/RESVideoCore;->prepare(Lcom/powervision/livestreaming/model/RESCoreParameters;)Z

    .line 208
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    invoke-virtual {v1}, Lcom/powervision/livestreaming/core/RESAudioCore;->prepare()V

    .line 210
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v2, "prepare(): end"

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 211
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendADTSPacket(J[BIZZ)Z
    .locals 11

    move-object v1, p0

    .line 500
    iget-object v2, v1, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v2

    .line 501
    :try_start_0
    iget-boolean v0, v1, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 502
    sget-object v0, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v4, "sendAudioAACPacket: live streaming not supported!!!"

    invoke-static {v0, v4}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    monitor-exit v2

    return v3

    .line 505
    :cond_0
    iget-object v0, v1, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    if-eqz v0, :cond_1

    .line 506
    iget-object v4, v1, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    move-wide v5, p1

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/powervision/livestreaming/core/RESAudioCore;->sendADTSPacket(J[BIZZ)V

    const/4 v0, 0x1

    .line 511
    monitor-exit v2

    return v0

    .line 508
    :cond_1
    sget-object v0, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v4, "sendAudioAACPacket: mAudioSender is null!!!"

    invoke-static {v0, v4}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    monitor-exit v2

    return v3

    :catchall_0
    move-exception v0

    .line 512
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendAudioAACPacket(JLjava/nio/ByteBuffer;ZZ)Z
    .locals 9

    .line 469
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 471
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string p2, "sendAudioAACPacket: live streaming not supported!!!"

    invoke-static {p1, p2}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    monitor-exit v0

    return v2

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    if-eqz v1, :cond_1

    .line 475
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAudioAACPacket: tms = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "   isAACSequenceHeader = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  isMute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v3, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/powervision/livestreaming/core/RESAudioCore;->sendAudioAACPacket(JLjava/nio/ByteBuffer;ZZ)V

    const/4 p1, 0x1

    .line 481
    monitor-exit v0

    return p1

    .line 478
    :cond_1
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string p2, "sendAudioAACPacket: mAudioSender is null!!!"

    invoke-static {p1, p2}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 482
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendAudioAACPacket(J[BIZ)Z
    .locals 9

    .line 445
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 447
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string p2, "sendAudioAACPacket: live streaming not supported!!!"

    invoke-static {p1, p2}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    monitor-exit v0

    return v2

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    if-eqz v1, :cond_1

    .line 451
    iget-object v3, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESAudioCore:Lcom/powervision/livestreaming/core/RESAudioCore;

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/powervision/livestreaming/core/RESAudioCore;->sendAudioAACPacket(J[BIZ)V

    const/4 p1, 0x1

    .line 456
    monitor-exit v0

    return p1

    .line 453
    :cond_1
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string p2, "sendAudioAACPacket: mAudioSender is null!!!"

    invoke-static {p1, p2}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 457
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setConnectionListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    invoke-virtual {v1, p1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->setConnectionListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V

    .line 490
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLiveStreamEnabled(Z)V
    .locals 3

    .line 151
    sget-object v0, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLiveStreamEnabled: set enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    if-eq v1, p1, :cond_0

    .line 154
    iput-boolean p1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    goto :goto_0

    .line 156
    :cond_0
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v1, "setLiveStreamEnabled:  the same setting,no change!"

    invoke-static {p1, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
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

.method public setLiveStreamingListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamingListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    return-void
.end method

.method public startLiveStreaming(Ljava/lang/String;)Z
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v2, "startLiveStreaming() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    if-nez v1, :cond_0

    .line 347
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v1, "startLiveStreaming: live streaming not supported!!!"

    invoke-static {p1, v1}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 348
    monitor-exit v0

    return p1

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 352
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v1, "startLiveStreaming: live streaming is running"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    monitor-exit v0

    return v2

    .line 356
    :cond_1
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLiveStreaming: pushUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    iget-object v3, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v1, v3}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->prepare(Lcom/powervision/livestreaming/model/RESCoreParameters;)V

    .line 358
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    iget-object v3, p0, Lcom/powervision/livestreaming/LiveStreaming;->mConnectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    invoke-virtual {v1, v3}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->setConnectionListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V

    .line 359
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    invoke-virtual {v1, p1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->start(Ljava/lang/String;)V

    .line 361
    iget-object p1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    if-eqz p1, :cond_2

    .line 362
    iget-object p1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mFlvDataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    invoke-virtual {p1, v1}, Lcom/powervision/livestreaming/core/RESVideoCore;->startLiveStreaming(Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;)Z

    .line 364
    :cond_2
    invoke-direct {p0}, Lcom/powervision/livestreaming/LiveStreaming;->startSendAACStream()Z

    .line 365
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v1, "startLiveStreaming() end"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 367
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startPlay(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v2, "startPlay(): start"

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    if-nez v1, :cond_0

    .line 272
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v1, "startPlay: live streaming not supported!!!"

    invoke-static {p1, v1}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 273
    monitor-exit v0

    return p1

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoWidth()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v3}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/powervision/livestreaming/core/RESVideoCore;->startPlay(Landroid/graphics/SurfaceTexture;II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 280
    :cond_1
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v1, "destory(): end"

    invoke-static {p1, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 281
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopLiveStreaming()Z
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v2, "stopLiveStreaming() start "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 379
    :try_start_1
    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    sget-object v2, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v3, "stopLiveStreaming: live streaming is not running"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    .line 384
    :cond_0
    :try_start_3
    iget-boolean v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 385
    sget-object v2, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v4, "stopLiveStreaming: live streaming not supported!!!"

    invoke-static {v2, v4}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 386
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v3

    .line 388
    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-virtual {v2}, Lcom/powervision/livestreaming/core/RESVideoCore;->stopLiveStreaming()Z

    .line 389
    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRtmpSender:Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    invoke-virtual {v2}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->stop()V

    .line 390
    invoke-direct {p0}, Lcom/powervision/livestreaming/LiveStreaming;->stopSendAACStream()Z

    .line 391
    iget-object v2, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 392
    sget-object v2, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v3, "stopLiveStreaming() end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 397
    :catch_0
    :try_start_6
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 398
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public stopPlay(Z)Z
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v2, "stopPlay(): start"

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    if-nez v1, :cond_0

    .line 289
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v1, "stopPlay: live streaming not supported!!!"

    invoke-static {p1, v1}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 290
    monitor-exit v0

    return p1

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-virtual {v1, p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->stopPlay(Z)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 297
    :cond_1
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string v1, "stopPlay(): end"

    invoke-static {p1, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 298
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 299
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updatePlayerTextureView(II)V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    if-nez v1, :cond_0

    .line 310
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string p2, "updatePlayerTextureView: live streaming not supported!!!"

    invoke-static {p1, p2}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    monitor-exit v0

    return-void

    .line 313
    :cond_0
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayerTextureView: width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-virtual {v1, p1, p2}, Lcom/powervision/livestreaming/core/RESVideoCore;->updatePlayerTextureView(II)Z

    .line 317
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateVideoSize(II)V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/powervision/livestreaming/LiveStreaming;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mLiveStreamEnabled:Z

    if-nez v1, :cond_0

    .line 326
    sget-object p1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    const-string p2, "updateVideoSize: live streaming not supported!!!"

    invoke-static {p1, p2}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    monitor-exit v0

    return-void

    .line 329
    :cond_0
    sget-object v1, Lcom/powervision/livestreaming/LiveStreaming;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVideoSize: width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/powervision/livestreaming/LiveStreaming;->mRESVideoCore:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-virtual {v1, p1, p2}, Lcom/powervision/livestreaming/core/RESVideoCore;->updatePlayerTextureView(II)Z

    .line 333
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
