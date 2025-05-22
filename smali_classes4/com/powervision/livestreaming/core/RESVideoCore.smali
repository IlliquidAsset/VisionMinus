.class public Lcom/powervision/livestreaming/core/RESVideoCore;
.super Ljava/lang/Object;
.source "RESVideoCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private OVERWATCH_TEXTURE_ID:I

.field private dstVideoEncoder:Landroid/media/MediaCodec;

.field private dstVideoFormat:Landroid/media/MediaFormat;

.field private isPlaying:Z

.field private isStreaming:Z

.field private loopingInterval:I

.field private mPlayerSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

.field private resVideoChangeListener:Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;

.field private final syncIsLooping:Ljava/lang/Object;

.field private final syncOp:Ljava/lang/Object;

.field private final syncResVideoChangeListener:Ljava/lang/Object;

.field private videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

.field private videoGLHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-direct {v0}, Lcom/powervision/livestreaming/model/RESCoreParameters;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncIsLooping:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncResVideoChangeListener:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isPlaying:Z

    .line 46
    iput-boolean v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isStreaming:Z

    const/16 v0, 0xa

    .line 49
    iput v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->OVERWATCH_TEXTURE_ID:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/powervision/livestreaming/core/RESVideoCore;)Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/livestreaming/core/RESVideoCore;)Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->resVideoChangeListener:Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/livestreaming/core/RESVideoCore;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->OVERWATCH_TEXTURE_ID:I

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->mPlayerSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/livestreaming/core/RESVideoCore;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->loopingInterval:I

    return p0
.end method

.method static synthetic access$400(Lcom/powervision/livestreaming/core/RESVideoCore;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncIsLooping:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/livestreaming/core/RESVideoCore;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isPlaying:Z

    return p0
.end method

.method static synthetic access$600(Lcom/powervision/livestreaming/core/RESVideoCore;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isStreaming:Z

    return p0
.end method

.method static synthetic access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->dstVideoEncoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$702(Lcom/powervision/livestreaming/core/RESVideoCore;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->dstVideoEncoder:Landroid/media/MediaCodec;

    return-object p1
.end method

.method static synthetic access$800(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaFormat;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->dstVideoFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/livestreaming/core/RESVideoCore;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncResVideoChangeListener:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public destroy()Z
    .locals 3

    .line 93
    sget-object v0, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string v1, "destroy: start"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendEmptyMessage(I)Z

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHandlerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :catch_0
    :try_start_2
    iput-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHandlerThread:Landroid/os/HandlerThread;

    .line 108
    :cond_1
    iput-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    .line 109
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    sget-object v0, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string v1, "destroy: end"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 109
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getPlayerSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->mPlayerSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getVideoBitrate()I
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacdoecAVCBitRate()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prepare(Lcom/powervision/livestreaming/model/RESCoreParameters;)Z
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string v2, "prepare: start"

    invoke-static {v1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    const/16 v1, 0x3e8

    .line 65
    invoke-virtual {p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacodecAVCFrameRate()I

    move-result p1

    div-int/2addr v1, p1

    iput v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->loopingInterval:I

    .line 66
    new-instance p1, Landroid/media/MediaFormat;

    invoke-direct {p1}, Landroid/media/MediaFormat;-><init>()V

    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->dstVideoFormat:Landroid/media/MediaFormat;

    .line 68
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->OVERWATCH_TEXTURE_ID:I

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->mPlayerSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 69
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "GLThread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHandlerThread:Landroid/os/HandlerThread;

    .line 70
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance p1, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;-><init>(Lcom/powervision/livestreaming/core/RESVideoCore;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    .line 73
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->mPlayerSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->updatePlayerTexture(Landroid/graphics/SurfaceTexture;)V

    .line 74
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendEmptyMessage(I)Z

    .line 76
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->mPlayerSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Lcom/powervision/livestreaming/core/RESVideoCore$1;

    invoke-direct {v2, p0}, Lcom/powervision/livestreaming/core/RESVideoCore$1;-><init>(Lcom/powervision/livestreaming/core/RESVideoCore;)V

    invoke-virtual {p1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 86
    sget-object p1, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string v2, "prepare: end"

    invoke-static {p1, v2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reSetVideoBitrate(I)V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    const/16 v3, 0x300

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v1, p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacdoecAVCBitRate(I)V

    .line 207
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->dstVideoFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacdoecAVCBitRate()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 209
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

.method public reSetVideoFPS(I)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v1, p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setMediacodecAVCFrameRate(I)V

    const/16 p1, 0x3e8

    .line 222
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacodecAVCFrameRate()I

    move-result v1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->loopingInterval:I

    .line 223
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reSetVideoSize(Lcom/powervision/livestreaming/model/RESCoreParameters;)V
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncIsLooping:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    iget-boolean v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isPlaying:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isStreaming:Z

    if-eqz v2, :cond_1

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    iget-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 234
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 235
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public setVideoChangeListener(Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncResVideoChangeListener:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->resVideoChangeListener:Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;

    .line 241
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startLiveStreaming(Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;)Z
    .locals 8

    .line 167
    sget-object v0, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string v1, "startLiveStreaming: start"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    const/16 v3, 0x100

    invoke-virtual {v2, v3, p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncIsLooping:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    iget-boolean v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isPlaying:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isStreaming:Z

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->removeMessages(I)V

    .line 173
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    iget-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->loopingInterval:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->loopingInterval:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const/4 v1, 0x1

    .line 175
    iput-boolean v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isStreaming:Z

    .line 176
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    sget-object p1, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string v0, "startLiveStreaming: end"

    invoke-static {p1, v0}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    .line 176
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception p1

    .line 177
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public startPlay(Landroid/graphics/SurfaceTexture;II)Z
    .locals 6

    .line 115
    sget-object v0, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay: start screenWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  screenHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, p2, p3, p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncIsLooping:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    iget-boolean p2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isPlaying:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isStreaming:Z

    if-nez p2, :cond_0

    .line 120
    iget-object p2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->removeMessages(I)V

    .line 121
    iget-object p2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->loopingInterval:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    iget v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->loopingInterval:I

    int-to-long v1, v1

    invoke-virtual {p2, p3, v1, v2}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const/4 p2, 0x1

    .line 123
    iput-boolean p2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isPlaying:Z

    .line 124
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    sget-object p1, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string p3, "startPlay: end"

    invoke-static {p1, p3}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :catchall_0
    move-exception p2

    .line 124
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :catchall_1
    move-exception p1

    .line 125
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public stopLiveStreaming()Z
    .locals 3

    .line 183
    sget-object v0, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string v1, "stopLiveStreaming: start"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendEmptyMessage(I)Z

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncIsLooping:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 189
    :try_start_1
    iput-boolean v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isStreaming:Z

    .line 190
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    sget-object v0, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string v1, "stopLiveStreaming: end"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v2

    .line 190
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 191
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public stopPlay(Z)Z
    .locals 4

    .line 131
    sget-object v0, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlay: releaseTexture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    const/16 v3, 0x20

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncIsLooping:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 137
    :try_start_1
    iput-boolean v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->isPlaying:Z

    .line 138
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    sget-object p1, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string v0, "stopPlay: end"

    invoke-static {p1, v0}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v1

    .line 138
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception p1

    .line 139
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public updatePlayerTextureView(II)Z
    .locals 3

    .line 145
    sget-object v0, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlayerTextureView:  width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    invoke-virtual {v1, p1, p2}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->updatePlayerTextureView(II)V

    .line 150
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    sget-object p1, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string p2, "updatePlayerTextureView: end"

    invoke-static {p1, p2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 150
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateVideoSize(II)Z
    .locals 3

    .line 156
    sget-object v0, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoSize:  videoWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  videoHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore;->videoGLHander:Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    invoke-virtual {v1, p1, p2}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->updatePlayerTextureView(II)V

    .line 161
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    sget-object p1, Lcom/powervision/livestreaming/core/RESVideoCore;->TAG:Ljava/lang/String;

    const-string p2, "updatePlayerTextureView: end"

    invoke-static {p1, p2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 161
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
