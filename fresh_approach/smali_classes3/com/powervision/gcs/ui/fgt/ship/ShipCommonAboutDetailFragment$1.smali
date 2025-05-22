.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$1;
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

    .line 184
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownload()V
    .locals 2

    const-string v0, "lzqUpdate"

    const-string v1, "onDownload: "

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade()V
    .locals 4

    const-string v0, "lzqUpdate"

    const-string v1, "onUpgrade: "

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showW4UpgradeDialog(ZILjava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    sget v2, Lcom/powervision/gcs/R$string;->AP03_Upgrade_52:I

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
