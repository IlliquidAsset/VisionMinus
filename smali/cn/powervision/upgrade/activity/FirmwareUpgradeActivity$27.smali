.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$27;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

.field final synthetic val$fakeDialogView:Lcom/powervision/base/views/FakeDialogView;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Lcom/powervision/base/views/FakeDialogView;)V
    .locals 0

    .line 1751
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$27;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iput-object p2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$27;->val$fakeDialogView:Lcom/powervision/base/views/FakeDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1759
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$27;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object p1, p1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->rootView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$27;->val$fakeDialogView:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1760
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$27;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->finish()V

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
