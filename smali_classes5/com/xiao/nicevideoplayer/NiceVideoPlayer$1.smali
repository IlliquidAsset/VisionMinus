.class Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;
.super Ljava/lang/Object;
.source "NiceVideoPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiao/nicevideoplayer/NiceVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;


# direct methods
.method constructor <init>(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 5

    .line 465
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$002(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;I)I

    .line 466
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$100(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    move-result-object v0

    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    const-string v0, "onPrepared \u2014\u2014> STATE_PREPARED"

    .line 467
    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    .line 468
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 470
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$200(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$300(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$400(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiao/nicevideoplayer/NiceUtil;->getSavedPlayPosition(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 472
    invoke-interface {p1, v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$500(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 476
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$500(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    :cond_1
    return-void
.end method
