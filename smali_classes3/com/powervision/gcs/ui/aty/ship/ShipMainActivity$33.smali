.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showInterestView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$type:I

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 3715
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->val$view:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    const/16 v0, 0x82

    if-eqz p1, :cond_1

    .line 3729
    iget p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->val$type:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 3730
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3502(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    goto :goto_1

    .line 3732
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3602(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    goto :goto_1

    .line 3735
    :cond_1
    iget p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->val$type:I

    const/4 v1, 0x3

    if-ne p1, v0, :cond_2

    .line 3736
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3502(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    goto :goto_0

    .line 3738
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3602(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 3740
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2600(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    :goto_1
    return-void
.end method

.method public backMode()V
    .locals 1

    .line 3746
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    return-void
.end method

.method public hide()V
    .locals 3

    .line 3718
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->val$view:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipToInterestView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3719
    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->val$type:I

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne v0, v2, :cond_0

    .line 3720
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageInterestShrink:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3722
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageFishShrink:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showError(Lcom/powervision/gcs/model/ship/ShipWarning;)V
    .locals 1

    .line 3751
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$33;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    return-void
.end method
