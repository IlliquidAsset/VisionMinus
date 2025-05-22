.class Lcom/xiao/nicevideoplayer/NiceVideoPlayer$2;
.super Ljava/lang/Object;
.source "NiceVideoPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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

    .line 482
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$2;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    .line 485
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$2;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$600(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceTextureView;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/xiao/nicevideoplayer/NiceTextureView;->adaptVideoSize(II)V

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onVideoSizeChanged \u2014\u2014> width\uff1a"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\uff0c height\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
