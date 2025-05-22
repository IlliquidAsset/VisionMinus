.class public Lcom/powervision/gcs/view/RockerCalibrateFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RockerCalibrateFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/RockerCalibrateFragment;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/RockerCalibrateFragment;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment_ViewBinding;->target:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    .line 24
    sget v0, Lcom/powervision/gcs/R$id;->rl_root:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'rlRoot\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->rlRoot:Landroid/widget/RelativeLayout;

    .line 25
    sget v0, Lcom/powervision/gcs/R$id;->tv_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvTitle:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/powervision/gcs/R$id;->tv_percent:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvPercent\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvPercent:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/powervision/gcs/R$id;->confirm_view:I

    const-class v1, Lcom/powervision/gcs/view/ship/ConfirmView;

    const-string v2, "field \'confirmView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ConfirmView;

    iput-object v0, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->confirmView:Lcom/powervision/gcs/view/ship/ConfirmView;

    .line 28
    sget v0, Lcom/powervision/gcs/R$id;->tv_calibrate:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvCalibrate\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvCalibrate:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->tv_indicator:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvIndicator\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvIndicator:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->iv_close:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivClose\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/powervision/gcs/view/RockerCalibrateFragment;->ivClose:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment_ViewBinding;->target:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/powervision/gcs/view/RockerCalibrateFragment_ViewBinding;->target:Lcom/powervision/gcs/view/RockerCalibrateFragment;

    .line 40
    iput-object v1, v0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->rlRoot:Landroid/widget/RelativeLayout;

    .line 41
    iput-object v1, v0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvTitle:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvPercent:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->confirmView:Lcom/powervision/gcs/view/ship/ConfirmView;

    .line 44
    iput-object v1, v0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvCalibrate:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->tvIndicator:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/powervision/gcs/view/RockerCalibrateFragment;->ivClose:Landroid/widget/ImageView;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
