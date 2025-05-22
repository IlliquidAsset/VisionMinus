.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showFirmwareDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

.field final synthetic val$pVW4FirmwareDownloadFragment:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->val$pVW4FirmwareDownloadFragment:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->val$pVW4FirmwareDownloadFragment:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onExist()V
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->val$pVW4FirmwareDownloadFragment:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 0

    .line 865
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/AboutVersionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSucceed(I)V
    .locals 2

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadSuccess==== type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_firm_download"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->val$pVW4FirmwareDownloadFragment:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 847
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->hideRemoteDownLoad()V

    .line 848
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;->checkTheRemoteState()V

    goto :goto_0

    .line 851
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->hideBodyDownLoad()V

    .line 852
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$22;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;->checkTheBodyState()V

    :goto_0
    return-void
.end method
