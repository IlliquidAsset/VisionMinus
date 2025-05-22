.class Lcom/lewis/edit/widgets/EditCenterSeekBarView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditCenterSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getTargetAnimator(Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

.field final synthetic val$anim:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/lewis/edit/widgets/EditCenterSeekBarView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView$2;->this$0:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    iput-object p2, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView$2;->val$anim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 405
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView$2;->val$anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    return-void
.end method
