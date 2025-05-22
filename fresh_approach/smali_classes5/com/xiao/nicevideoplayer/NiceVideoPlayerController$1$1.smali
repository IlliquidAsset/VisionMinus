.class Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1$1;
.super Ljava/lang/Object;
.source "NiceVideoPlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;


# direct methods
.method constructor <init>(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1$1;->this$1:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1$1;->this$1:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;

    iget-object v0, v0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;->this$0:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->updateProgress()V

    return-void
.end method
