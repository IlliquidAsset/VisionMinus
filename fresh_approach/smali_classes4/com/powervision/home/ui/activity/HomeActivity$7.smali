.class Lcom/powervision/home/ui/activity/HomeActivity$7;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/HomeActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/HomeActivity;

.field final synthetic val$fakeDialogView:Lcom/powervision/base/views/FakeDialogView;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/HomeActivity;Lcom/powervision/base/views/FakeDialogView;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$7;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    iput-object p2, p0, Lcom/powervision/home/ui/activity/HomeActivity$7;->val$fakeDialogView:Lcom/powervision/base/views/FakeDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 592
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$7;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    iget-object p1, p1, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$7;->val$fakeDialogView:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
