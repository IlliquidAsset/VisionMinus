.class Lcom/powervision/media/widgets/player/VideoMediaController$4;
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

    .line 185
    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$4;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/player/VideoMediaController$SimpleAnimationListener;-><init>(Lcom/powervision/media/widgets/player/VideoMediaController;Lcom/powervision/media/widgets/player/VideoMediaController$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 188
    invoke-super {p0, p1}, Lcom/powervision/media/widgets/player/VideoMediaController$SimpleAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 189
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$4;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    iget-object p1, p1, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method
