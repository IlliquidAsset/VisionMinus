.class Lcom/powervision/media/widgets/player/VideoMediaController$1;
.super Ljava/lang/Object;
.source "VideoMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/player/VideoMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/player/VideoMediaController;


# direct methods
.method constructor <init>(Lcom/powervision/media/widgets/player/VideoMediaController;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$1;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->pause()V

    .line 132
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$1;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-static {p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->access$000(Lcom/powervision/media/widgets/player/VideoMediaController;)Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 139
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$1;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    iget-object p1, p1, Lcom/powervision/media/widgets/player/VideoMediaController;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->getProgress()I

    move-result p1

    .line 140
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController$1;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-static {v0}, Lcom/powervision/media/widgets/player/VideoMediaController;->access$100(Lcom/powervision/media/widgets/player/VideoMediaController;)Lcom/powervision/media/widgets/player/VideoPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    mul-int v0, v0, p1

    .line 141
    div-int/lit8 v0, v0, 0x64

    .line 142
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$1;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-static {p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->access$100(Lcom/powervision/media/widgets/player/VideoMediaController;)Lcom/powervision/media/widgets/player/VideoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 144
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->play()V

    .line 145
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$1;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->updatePlayTimeAndProgress()V

    return-void
.end method
