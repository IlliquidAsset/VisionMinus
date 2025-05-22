.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11$1;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownload()V
    .locals 0

    return-void
.end method

.method public onUpgrade()V
    .locals 4

    .line 532
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->BODYZIPNAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showW4UpgradeDialog(ZILjava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;

    iget-object v1, v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$11;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    sget v2, Lcom/powervision/gcs/R$string;->AP03_Upgrade_52:I

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
