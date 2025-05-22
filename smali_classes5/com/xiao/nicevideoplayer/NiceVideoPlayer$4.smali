.class Lcom/xiao/nicevideoplayer/NiceVideoPlayer$4;
.super Ljava/lang/Object;
.source "NiceVideoPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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

    .line 505
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$4;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    const/16 p1, -0x26

    if-eq p2, p1, :cond_0

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_0

    if-eq p3, p1, :cond_0

    if-eq p3, v0, :cond_0

    .line 511
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$4;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$002(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;I)I

    .line 512
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$4;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$100(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    move-result-object p1

    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$4;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError \u2014\u2014> STATE_ERROR \u2014\u2014\u2014\u2014 what\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", extra: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
