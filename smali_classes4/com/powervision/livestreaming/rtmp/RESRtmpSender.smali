.class public Lcom/powervision/livestreaming/rtmp/RESRtmpSender;
.super Ljava/lang/Object;
.source "RESRtmpSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;
    }
.end annotation


# static fields
.field public static final FROM_AUDIO:I = 0x8

.field public static final FROM_VIDEO:I = 0x9

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEGRANULARITY:I = 0xbb8


# instance fields
.field private final syncOp:Ljava/lang/Object;

.field private workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

.field private workHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->syncOp:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 95
    sget-object v0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->TAG:Ljava/lang/String;

    const-string v1, "destroy() start"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-virtual {v1, v2}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 102
    iput-object v2, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandlerThread:Landroid/os/HandlerThread;

    .line 104
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    sget-object v0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->TAG:Ljava/lang/String;

    const-string v1, "destroy() end"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 104
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public feed(Lcom/powervision/livestreaming/rtmp/RESFlvData;I)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-virtual {v1, p1, p2}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->sendFood(Lcom/powervision/livestreaming/rtmp/RESFlvData;I)V

    .line 81
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

.method public getSendBufferFreePercent()F
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-virtual {v1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->getSendBufferFreePercent()F

    move-result v1

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSendFrameRate()F
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-virtual {v1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->getSendFrameRate()F

    move-result v1

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServerIpAddr()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-virtual {v1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->getServerIpAddr()Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTotalSpeed()I
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-virtual {v1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->getTotalSpeed()I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 113
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prepare(Lcom/powervision/livestreaming/model/RESCoreParameters;)V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RESRtmpSender,workHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandlerThread:Landroid/os/HandlerThread;

    .line 35
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v1, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-virtual {p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getSenderQueueLength()I

    move-result v2

    new-instance v3, Lcom/powervision/livestreaming/rtmp/FLvMetaData;

    invoke-direct {v3, p1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;-><init>(Lcom/powervision/livestreaming/model/RESCoreParameters;)V

    iget-object p1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandlerThread:Landroid/os/HandlerThread;

    .line 38
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;-><init>(ILcom/powervision/livestreaming/rtmp/FLvMetaData;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setConnectionListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-virtual {v1, p1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->setConnectionListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V

    .line 47
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

.method public start(Ljava/lang/String;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-virtual {v1, p1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->sendStart(Ljava/lang/String;)V

    .line 73
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

.method public stop()V
    .locals 2

    .line 85
    sget-object v0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->TAG:Ljava/lang/String;

    const-string v1, "stop() start"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->syncOp:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->workHandler:Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;

    invoke-virtual {v1}, Lcom/powervision/livestreaming/rtmp/RESRtmpSender$WorkHandler;->sendStop()V

    .line 90
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    sget-object v0, Lcom/powervision/livestreaming/rtmp/RESRtmpSender;->TAG:Ljava/lang/String;

    const-string v1, "stop() end"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 90
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
