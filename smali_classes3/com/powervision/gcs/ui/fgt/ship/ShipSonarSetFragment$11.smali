.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$11;
.super Ljava/lang/Object;
.source "ShipSonarSetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->showPopupWindow(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

.field final synthetic val$mShadowLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$11;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$11;->val$mShadowLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 742
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$11;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$11;->val$mShadowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
