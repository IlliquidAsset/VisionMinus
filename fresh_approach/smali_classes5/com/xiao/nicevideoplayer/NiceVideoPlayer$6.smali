.class Lcom/xiao/nicevideoplayer/NiceVideoPlayer$6;
.super Ljava/lang/Object;
.source "NiceVideoPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


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

    .line 566
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$6;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 0

    .line 570
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$6;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-static {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->access$802(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;I)I

    return-void
.end method
