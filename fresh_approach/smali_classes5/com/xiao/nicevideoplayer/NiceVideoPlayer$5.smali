.class Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;
.super Ljava/lang/Object;
.source "NiceVideoPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


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

    .line 520
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 525
    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p2, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$002(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;I)I

    .line 526
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$100(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    move-result-object p1

    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    const-string p1, "onInfo \u2014\u2014> MEDIA_INFO_VIDEO_RENDERING_START\uff1aSTATE_PLAYING"

    .line 527
    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x2bd

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x6

    if-ne p2, v0, :cond_3

    .line 530
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I

    move-result p1

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 534
    :cond_1
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$002(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;I)I

    const-string p1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_START\uff1aSTATE_BUFFERING_PLAYING"

    .line 535
    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 531
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1, v3}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$002(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;I)I

    const-string p1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_START\uff1aSTATE_BUFFERING_PAUSED"

    .line 532
    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    .line 537
    :goto_1
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$100(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    move-result-object p1

    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    goto/16 :goto_2

    :cond_3
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_5

    .line 540
    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I

    move-result p2

    if-ne p2, v1, :cond_4

    .line 541
    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p2, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$002(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;I)I

    .line 542
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$100(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    move-result-object p1

    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    const-string p1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_END\uff1a STATE_PLAYING"

    .line 543
    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    .line 545
    :cond_4
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I

    move-result p1

    if-ne p1, v3, :cond_8

    .line 546
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1, v2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$002(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;I)I

    .line 547
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$100(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    move-result-object p1

    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    const-string p1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_END\uff1a STATE_PAUSED"

    .line 548
    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x2711

    if-ne p2, p1, :cond_6

    .line 552
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$600(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceTextureView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 553
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$600(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceTextureView;

    move-result-object p1

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceTextureView;->setRotation(F)V

    .line 554
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u89c6\u9891\u65cb\u8f6c\u89d2\u5ea6\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/16 p1, 0x321

    if-ne p2, p1, :cond_7

    const-string p1, "\u89c6\u9891\u4e0d\u80fdseekTo\uff0c\u4e3a\u76f4\u64ad\u89c6\u9891"

    .line 557
    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 559
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onInfo \u2014\u2014> what\uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    :cond_8
    :goto_2
    const/4 p1, 0x1

    return p1
.end method
