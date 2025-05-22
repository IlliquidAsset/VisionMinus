.class public Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ShipSonarPairingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;

    .line 24
    sget v0, Lcom/powervision/gcs/R$id;->sonar_paring_logo:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'sonarParingLogo\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->sonarParingLogo:Landroid/widget/ImageView;

    .line 25
    sget v0, Lcom/powervision/gcs/R$id;->sonar_pair_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'sonarPairTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->sonarPairTitle:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/powervision/gcs/R$id;->sonar_ssid_view:I

    const-class v1, Landroid/widget/EditText;

    const-string v2, "field \'sonarSsidView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->sonarSsidView:Landroid/widget/EditText;

    .line 27
    sget v0, Lcom/powervision/gcs/R$id;->sonar_ok_btn:I

    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'sonarOkBtn\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->sonarOkBtn:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;

    .line 37
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->sonarParingLogo:Landroid/widget/ImageView;

    .line 38
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->sonarPairTitle:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->sonarSsidView:Landroid/widget/EditText;

    .line 40
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->sonarOkBtn:Landroid/widget/Button;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
