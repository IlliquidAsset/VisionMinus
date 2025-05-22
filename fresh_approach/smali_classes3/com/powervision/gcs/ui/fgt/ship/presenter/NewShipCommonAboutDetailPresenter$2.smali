.class Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;
.super Ljava/lang/Object;
.source "NewShipCommonAboutDetailPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainBodyVersionSucceed(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->getMainBodyVersionSucceed(Ljava/lang/String;)V

    return-void
.end method

.method public getRemoteDL01VersionSucceed(Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->getRemoteDL01VersionSucceed(Ljava/lang/String;)V

    return-void
.end method

.method public getRemoteMCUVersionSucceed(Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->getRemoteMCUVersionSucceed(Ljava/lang/String;)V

    return-void
.end method

.method public getRemoteOnlineVersionSucceed(Lcom/powervision/gcs/manager/FirmwareQueryModel;)V
    .locals 0

    return-void
.end method

.method public getRemoteUpdateSucceed()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->getRemoteUpdateSucceed()V

    return-void
.end method

.method public getRemoteWifiVersionSucceed(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->getRemoteWifiVersionSucceed(Ljava/lang/String;)V

    return-void
.end method

.method public getVEHOnlineVersionSucceed(Lcom/powervision/gcs/manager/FirmwareQueryModel;)V
    .locals 0

    return-void
.end method

.method public hideBodyDownLoad()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->hideRemoteDownLoad()V

    return-void
.end method

.method public hideBodyUpdate()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->hideBodyUpdate()V

    return-void
.end method

.method public hideContent()V
    .locals 0

    return-void
.end method

.method public hideDl01Loading()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->hideDl01Loading()V

    return-void
.end method

.method public hideDl01Update()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->hideDl01Update()V

    return-void
.end method

.method public hideMainLoading()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->hideMainLoading()V

    return-void
.end method

.method public hideMcuLoading()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->hidMcuLoading()V

    return-void
.end method

.method public hideMcuUpdate(I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->hideMcuUpdate(I)V

    return-void
.end method

.method public hideRemoteDownLoad()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->hideRemoteDownLoad()V

    return-void
.end method

.method public hideWifiLoading()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->hideWifiLoading()V

    return-void
.end method

.method public hideWifiUpdate()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->hideWifiUpdate()V

    return-void
.end method

.method public showBodyDownLoad()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showBodyDownLoad()V

    return-void
.end method

.method public showBodyUpdate()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showBodyUpdate()V

    return-void
.end method

.method public showDl01Loading()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showDl01Loaing()V

    return-void
.end method

.method public showDl01Update()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showDl01Update()V

    return-void
.end method

.method public showErrorDialog(II)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showErrorDialog(II)V

    return-void
.end method

.method public showMainLoading()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showMainLoading()V

    return-void
.end method

.method public showMcuLoading()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showMcuLoading()V

    return-void
.end method

.method public showMcuUpdate()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showMcuUpdate()V

    return-void
.end method

.method public showRemoteDownLoad(Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showRemoteDownLoad(Z)V

    return-void
.end method

.method public showWifiLoading()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showWifiLoading()V

    return-void
.end method

.method public showWifiUpdate()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showWifiUpdate()V

    return-void
.end method

.method public storeTheFiles(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->storeTheFiles(Ljava/util/ArrayList;)V

    return-void
.end method
