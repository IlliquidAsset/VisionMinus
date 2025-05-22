.class Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;
.super Ljava/util/TimerTask;
.source "MediaPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/fragment/MediaPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/fragment/MediaPreviewFragment;


# direct methods
.method private constructor <init>(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;->this$0:Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;Lcom/powervision/media/ui/fragment/MediaPreviewFragment$1;)V
    .locals 0

    .line 452
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;-><init>(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 455
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;->this$0:Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

    invoke-static {v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->access$100(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;->this$0:Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

    iget-object v1, v1, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;->this$0:Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

    invoke-static {v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->access$100(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;->this$0:Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

    iget-object v1, v1, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    :goto_0
    return-void
.end method
