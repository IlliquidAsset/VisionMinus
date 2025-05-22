.class Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AddRemoveAnimatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->animateChangeImpl(Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

.field final synthetic val$changeInfo:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->val$changeInfo:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$ChangeInfo;

    iput-object p3, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 376
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 377
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->val$newView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 378
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 379
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 380
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->val$changeInfo:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$ChangeInfo;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 381
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->val$changeInfo:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$ChangeInfo;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 382
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 371
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$8;->val$changeInfo:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$ChangeInfo;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
