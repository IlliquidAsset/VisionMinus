.class Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AddRemoveAnimatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 232
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 233
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 234
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 235
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
