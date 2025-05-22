.class public Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ShipMagnetAdjustActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->tv_current_state:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvCurrentState\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvCurrentState:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->tv_magnet_adjust_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvMagnetAdjustTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvMagnetAdjustTitle:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->iv_front_back:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivFrontBack\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->ivFrontBack:Landroid/widget/ImageView;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->iv_up_down:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivUpDown\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->ivUpDown:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->iv_left_right:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivLeftRight\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->ivLeftRight:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->fl_close:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'flClose\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->flClose:Landroid/widget/FrameLayout;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->relativelayout:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'relativelayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->relativelayout:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    .line 45
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvCurrentState:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->tvMagnetAdjustTitle:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->ivFrontBack:Landroid/widget/ImageView;

    .line 48
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->ivUpDown:Landroid/widget/ImageView;

    .line 49
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->ivLeftRight:Landroid/widget/ImageView;

    .line 50
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->flClose:Landroid/widget/FrameLayout;

    .line 51
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->relativelayout:Landroid/widget/RelativeLayout;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
