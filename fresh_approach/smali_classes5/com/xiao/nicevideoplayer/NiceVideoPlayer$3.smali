.class Lcom/xiao/nicevideoplayer/NiceVideoPlayer$3;
.super Ljava/lang/Object;
.source "NiceVideoPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


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

    .line 491
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$3;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 496
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$3;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$002(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;I)I

    .line 497
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$3;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$100(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    move-result-object p1

    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$3;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    const-string p1, "onCompletion \u2014\u2014> STATE_COMPLETED"

    .line 498
    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    .line 500
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$3;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$700(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    return-void
.end method
