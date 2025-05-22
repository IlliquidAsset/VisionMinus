.class public Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    .line 22
    sget v0, Lcom/powervision/gcs/R$id;->version_app:I

    const-class v1, Lcom/powervision/gcs/view/AboutVersionView;

    const-string v2, "field \'versionApp\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/AboutVersionView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionApp:Lcom/powervision/gcs/view/AboutVersionView;

    .line 23
    sget v0, Lcom/powervision/gcs/R$id;->version_main:I

    const-class v1, Lcom/powervision/gcs/view/AboutVersionView;

    const-string v2, "field \'versionMain\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/AboutVersionView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    .line 24
    sget v0, Lcom/powervision/gcs/R$id;->version_mcu:I

    const-class v1, Lcom/powervision/gcs/view/AboutVersionView;

    const-string v2, "field \'versionMcu\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/AboutVersionView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMcu:Lcom/powervision/gcs/view/AboutVersionView;

    .line 25
    sget v0, Lcom/powervision/gcs/R$id;->version_wifi:I

    const-class v1, Lcom/powervision/gcs/view/AboutVersionView;

    const-string v2, "field \'versionWifi\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/AboutVersionView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionWifi:Lcom/powervision/gcs/view/AboutVersionView;

    .line 26
    sget v0, Lcom/powervision/gcs/R$id;->version_dl01:I

    const-class v1, Lcom/powervision/gcs/view/AboutVersionView;

    const-string v2, "field \'versionDl01\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/AboutVersionView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionDl01:Lcom/powervision/gcs/view/AboutVersionView;

    .line 27
    sget v0, Lcom/powervision/gcs/R$id;->version_serial:I

    const-class v1, Lcom/powervision/gcs/view/AboutVersionView;

    const-string v2, "field \'versionSerial\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/AboutVersionView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionSerial:Lcom/powervision/gcs/view/AboutVersionView;

    .line 28
    sget v0, Lcom/powervision/gcs/R$id;->version_remote:I

    const-class v1, Lcom/powervision/gcs/view/AboutVersionView;

    const-string v2, "field \'versionRemote\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/AboutVersionView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionRemote:Lcom/powervision/gcs/view/AboutVersionView;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->remote_update_content:I

    const-string v1, "field \'remote_update_content\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->remote_update_content:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    .line 39
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionApp:Lcom/powervision/gcs/view/AboutVersionView;

    .line 40
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    .line 41
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMcu:Lcom/powervision/gcs/view/AboutVersionView;

    .line 42
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionWifi:Lcom/powervision/gcs/view/AboutVersionView;

    .line 43
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionDl01:Lcom/powervision/gcs/view/AboutVersionView;

    .line 44
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionSerial:Lcom/powervision/gcs/view/AboutVersionView;

    .line 45
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionRemote:Lcom/powervision/gcs/view/AboutVersionView;

    .line 46
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->remote_update_content:Landroid/view/View;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
