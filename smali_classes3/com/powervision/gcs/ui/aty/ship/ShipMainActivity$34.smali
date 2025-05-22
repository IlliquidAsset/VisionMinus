.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$34;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 3754
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$34;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$34;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 3757
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3760
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$34;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageInterestShrink:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3761
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$34;->val$view:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$34;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipToInterestView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$34;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
