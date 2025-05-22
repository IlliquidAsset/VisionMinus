.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;
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

.field final synthetic val$targetView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;->val$targetView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;->val$mShadowLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 750
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$800(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 751
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;->val$targetView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 753
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 754
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 755
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 760
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1, v1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$1000(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;IZ)V

    .line 762
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$12;->val$mShadowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
