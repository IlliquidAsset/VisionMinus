.class public Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ShipMagnetAdjustFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    .line 24
    sget v0, Lcom/powervision/gcs/R$id;->tv_magnet_adjust_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvMagnetAdjustTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->tvMagnetAdjustTitle:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/powervision/gcs/R$id;->iv_front_back:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivFrontBack\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivFrontBack:Landroid/widget/ImageView;

    .line 26
    sget v0, Lcom/powervision/gcs/R$id;->iv_up_down:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivUpDown\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivUpDown:Landroid/widget/ImageView;

    .line 27
    sget v0, Lcom/powervision/gcs/R$id;->iv_left_right:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivLeftRight\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivLeftRight:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcom/powervision/gcs/R$id;->relativelayout:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'relativelayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->relativelayout:Landroid/widget/RelativeLayout;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->fl_close:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'flClose\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->flClose:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    .line 39
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->tvMagnetAdjustTitle:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivFrontBack:Landroid/widget/ImageView;

    .line 41
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivUpDown:Landroid/widget/ImageView;

    .line 42
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->ivLeftRight:Landroid/widget/ImageView;

    .line 43
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->relativelayout:Landroid/widget/RelativeLayout;

    .line 44
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->flClose:Landroid/widget/FrameLayout;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
