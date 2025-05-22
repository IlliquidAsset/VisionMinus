.class Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AddRemoveAnimatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
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
.method constructor <init>(Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 200
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 201
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 189
    iget-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->this$0:Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
