.class Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;
.super Ljava/lang/Object;
.source "DvModeHelpFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->initVideoPath(Landroid/widget/VideoView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/fragment/DvModeHelpFragment;

.field final synthetic val$index:I

.field final synthetic val$videoView:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/fragment/DvModeHelpFragment;Landroid/widget/VideoView;I)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;->this$0:Lcom/powervision/home/ui/fragment/DvModeHelpFragment;

    iput-object p2, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;->val$videoView:Landroid/widget/VideoView;

    iput p3, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 142
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 143
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 144
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;->this$0:Lcom/powervision/home/ui/fragment/DvModeHelpFragment;

    invoke-static {p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->access$000(Lcom/powervision/home/ui/fragment/DvModeHelpFragment;)[Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;->val$index:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;->this$0:Lcom/powervision/home/ui/fragment/DvModeHelpFragment;

    invoke-static {p1}, Lcom/powervision/home/ui/fragment/DvModeHelpFragment;->access$100(Lcom/powervision/home/ui/fragment/DvModeHelpFragment;)[Landroid/widget/ImageView;

    move-result-object p1

    iget v1, p0, Lcom/powervision/home/ui/fragment/DvModeHelpFragment$1;->val$index:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
