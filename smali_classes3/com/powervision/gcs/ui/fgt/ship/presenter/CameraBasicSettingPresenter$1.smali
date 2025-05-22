.class Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter$1;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "CameraBasicSettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getDis(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Dis;",
            ">;)V"
        }
    .end annotation

    .line 604
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getDis(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 605
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 606
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;->updateShakeParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V

    :cond_0
    return-void
.end method

.method public getEv(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Ev;",
            ">;)V"
        }
    .end annotation

    .line 551
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getEv(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 552
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;->updateEvParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V

    :cond_0
    return-void
.end method

.method public getFlip(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Flip;",
            ">;)V"
        }
    .end annotation

    .line 617
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getFlip(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 618
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 619
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;->updateReversalParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V

    :cond_0
    return-void
.end method

.method public getIso(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Iso;",
            ">;)V"
        }
    .end annotation

    .line 532
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getIso(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 533
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 534
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;->updateISOParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V

    :cond_0
    return-void
.end method

.method public getLdc(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Ldc;",
            ">;)V"
        }
    .end annotation

    .line 577
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getLdc(ILcom/powervision/localhttp/entity/BaseModel;)V

    const-string v0, "CameraBasicSettingPr"

    const-string v1, "getLdc: "

    .line 578
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 579
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 580
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;->updateLDCParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V

    :cond_0
    return-void
.end method

.method public getTtl(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Ttl;",
            ">;)V"
        }
    .end annotation

    .line 591
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getTtl(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 592
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 593
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;->updateMMParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V

    :cond_0
    return-void
.end method

.method public getWb(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Wb;",
            ">;)V"
        }
    .end annotation

    .line 564
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getWb(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 565
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 566
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;->updateWbParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V

    :cond_0
    return-void
.end method

.method public getWorkMode(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4GetWorkMode;",
            ">;)V"
        }
    .end annotation

    .line 526
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getWorkMode(ILcom/powervision/localhttp/entity/BaseModel;)V

    const-string p1, "CameraBasicSettingPr"

    const-string p2, "getWorkMode: basic"

    .line 527
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDis(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 612
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setDis(ILcom/powervision/localhttp/entity/BaseModel;)V

    return-void
.end method

.method public setEv(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 559
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setEv(ILcom/powervision/localhttp/entity/BaseModel;)V

    return-void
.end method

.method public setFlip(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 625
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setFlip(ILcom/powervision/localhttp/entity/BaseModel;)V

    return-void
.end method

.method public setIso(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 541
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setIso(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 542
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;->getISOParameter()V

    :goto_0
    return-void
.end method

.method public setLdc(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 586
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setLdc(ILcom/powervision/localhttp/entity/BaseModel;)V

    return-void
.end method

.method public setTtl(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 599
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setTtl(ILcom/powervision/localhttp/entity/BaseModel;)V

    return-void
.end method

.method public setWb(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 572
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setWb(ILcom/powervision/localhttp/entity/BaseModel;)V

    return-void
.end method
