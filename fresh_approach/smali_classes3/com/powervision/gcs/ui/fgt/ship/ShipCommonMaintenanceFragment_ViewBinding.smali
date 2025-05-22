.class public Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ShipCommonMaintenanceFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

.field private viewf71:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->electronic_life_left_iv:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'electronicLifeLeftIv\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicLifeLeftIv:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->electronic_life_left_txt:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'electronicLifeLeftTxt\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicLifeLeftTxt:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->electronic_left_pgb:I

    const-class v1, Landroid/widget/ProgressBar;

    const-string v2, "field \'electronicLeftPgb\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicLeftPgb:Landroid/widget/ProgressBar;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->electronic_life_left_layout:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'electronicLifeLeftLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicLifeLeftLayout:Landroid/widget/RelativeLayout;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->ship_electronic_right_iv:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'shipElectronicRightIv\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->shipElectronicRightIv:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->ship_electronic_right_txt:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipElectronicRightTxt\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->shipElectronicRightTxt:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->ship_electronic_right_pgb:I

    const-class v1, Landroid/widget/ProgressBar;

    const-string v2, "field \'shipElectronicRightPgb\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->shipElectronicRightPgb:Landroid/widget/ProgressBar;

    .line 36
    sget v0, Lcom/powervision/gcs/R$id;->ship_electronic_right_layout:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'shipElectronicRightLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->shipElectronicRightLayout:Landroid/widget/RelativeLayout;

    .line 37
    sget v0, Lcom/powervision/gcs/R$id;->tv_adjust_item:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvAdjustItem\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->tvAdjustItem:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/powervision/gcs/R$id;->rl_adjust_item:I

    const-string v1, "method \'rl_adjust_item\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;->viewf71:Landroid/view/View;

    .line 40
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    .line 55
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicLifeLeftIv:Landroid/widget/ImageView;

    .line 56
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicLifeLeftTxt:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicLeftPgb:Landroid/widget/ProgressBar;

    .line 58
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->electronicLifeLeftLayout:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->shipElectronicRightIv:Landroid/widget/ImageView;

    .line 60
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->shipElectronicRightTxt:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->shipElectronicRightPgb:Landroid/widget/ProgressBar;

    .line 62
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->shipElectronicRightLayout:Landroid/widget/RelativeLayout;

    .line 63
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->tvAdjustItem:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;->viewf71:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;->viewf71:Landroid/view/View;

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
