.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$17;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->onQueryInterest(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$mTextInterest:Landroid/widget/TextView;

.field final synthetic val$modelList:Ljava/util/ArrayList;

.field final synthetic val$shipInterestAdapter:Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/widget/TextView;Ljava/util/ArrayList;Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;)V
    .locals 0

    .line 2855
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$17;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$17;->val$mTextInterest:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$17;->val$modelList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$17;->val$shipInterestAdapter:Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2858
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2861
    :cond_0
    sget v0, Lcom/powervision/gcs/R$drawable;->gcs_firmware_update_sure_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2862
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$17;->val$mTextInterest:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2863
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$17;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$17;->val$modelList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 2864
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2865
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$17;->val$shipInterestAdapter:Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->setData(Ljava/util/ArrayList;)V

    return-void
.end method
