.class public Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;
.super Ljava/lang/Object;
.source "NiceVideoPlayerManager.java"


# static fields
.field private static sInstance:Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;


# instance fields
.field private mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;
    .locals 2

    const-class v0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->sInstance:Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    invoke-direct {v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;-><init>()V

    sput-object v1, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->sInstance:Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    .line 20
    :cond_0
    sget-object v1, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->sInstance:Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCurrentNiceVideoPlayer()Lcom/xiao/nicevideoplayer/NiceVideoPlayer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    return-object v0
.end method

.method public onBackPressd()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->exitFullScreen()Z

    move-result v0

    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isTinyWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->exitTinyWindow()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public releaseNiceVideoPlayer()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    :cond_0
    return-void
.end method

.method public resumeNiceVideoPlayer()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isBufferingPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->restart()V

    :cond_1
    return-void
.end method

.method public setCurrentNiceVideoPlayer(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    if-eq v0, p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->releaseNiceVideoPlayer()V

    .line 30
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    :cond_0
    return-void
.end method

.method public suspendNiceVideoPlayer()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isBufferingPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->mVideoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->pause()V

    :cond_1
    return-void
.end method
