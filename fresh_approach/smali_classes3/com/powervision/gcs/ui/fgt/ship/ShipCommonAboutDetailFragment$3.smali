.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$3;
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

    .line 224
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

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

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v0

    iget v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectStatus:I

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showW4UpgradeDialog(ZILjava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    sget v2, Lcom/powervision/gcs/R$string;->AP03_Upgrade_52:I

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
