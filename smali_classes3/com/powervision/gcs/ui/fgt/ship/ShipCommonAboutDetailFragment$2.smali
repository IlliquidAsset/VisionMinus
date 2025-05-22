.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$2;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

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

    const-string v0, "lzqUpdate"

    const-string v1, "onUpgrade: "

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    sget v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->lastBootloaderStatus:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    sget v2, Lcom/powervision/gcs/R$string;->AP03_Upgrade_52:I

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 215
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showW4UpgradeDialog(ZILjava/lang/String;)V

    :goto_1
    return-void
.end method
