.class Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;
.super Ljava/util/TimerTask;
.source "NiceVideoPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->startUpdateProgressTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;


# direct methods
.method constructor <init>(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    new-instance v1, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1$1;

    invoke-direct {v1, p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1$1;-><init>(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;)V

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
