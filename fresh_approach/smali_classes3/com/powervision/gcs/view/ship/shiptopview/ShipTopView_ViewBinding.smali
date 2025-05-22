.class public Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView_ViewBinding;
.super Ljava/lang/Object;
.source "ShipTopView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->top_setting:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'topSetting\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->topSetting:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->top_divider:I

    const-string v1, "field \'topDivider\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->topDivider:Landroid/view/View;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->body_power:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const-string v2, "field \'bodyPower\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->bodyPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->remote_power:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const-string v2, "field \'remotePower\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remotePower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->sonar_power:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const-string v2, "field \'sonarPower\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sonarPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->remote_signal:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const-string v2, "field \'remoteSignal\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remoteSignal:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->sate_signal:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    const-string v2, "field \'sateSignal\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sateSignal:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 36
    sget v0, Lcom/powervision/gcs/R$id;->connect_text:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'connectText\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/powervision/gcs/R$id;->top_upgrade_indicator:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'topUpgradeIndicator\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->topUpgradeIndicator:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/powervision/gcs/R$id;->fl_top_setting:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'flTopSetting\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->flTopSetting:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    .line 48
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->topSetting:Landroid/widget/ImageView;

    .line 49
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->topDivider:Landroid/view/View;

    .line 50
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->bodyPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 51
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remotePower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 52
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sonarPower:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 53
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->remoteSignal:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 54
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->sateSignal:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 55
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->connectText:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->topUpgradeIndicator:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->flTopSetting:Landroid/widget/FrameLayout;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
