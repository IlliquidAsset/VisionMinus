.class Lcom/powervision/media/widgets/player/VideoMediaController$3;
.super Lcom/powervision/media/widgets/player/VideoMediaController$SimpleAnimationListener;
.source "VideoMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/widgets/player/VideoMediaController;->showOrHideVideoController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/player/VideoMediaController;


# direct methods
.method constructor <init>(Lcom/powervision/media/widgets/player/VideoMediaController;)V
    .locals 1

    .line 169
    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$3;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/player/VideoMediaController$SimpleAnimationListener;-><init>(Lcom/powervision/media/widgets/player/VideoMediaController;Lcom/powervision/media/widgets/player/VideoMediaController$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 172
    invoke-super {p0, p1}, Lcom/powervision/media/widgets/player/VideoMediaController$SimpleAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 173
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$3;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    iget-object p1, p1, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$3;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-static {p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->access$000(Lcom/powervision/media/widgets/player/VideoMediaController;)Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    move-result-object p1

    const/4 v0, 0x2

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
