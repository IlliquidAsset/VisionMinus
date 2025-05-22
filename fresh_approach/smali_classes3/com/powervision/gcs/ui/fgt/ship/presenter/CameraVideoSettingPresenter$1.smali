.class Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "CameraVideoSettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4RecordRatio;",
            ">;)V"
        }
    .end annotation

    .line 560
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 562
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 563
    iget-object p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4RecordRatio;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4RecordRatio;->videoMode:Ljava/lang/String;

    .line 564
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-static {p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->access$300(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;->updateVideoNormalResolution(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSlowRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4SlowRecordRatio;",
            ">;)V"
        }
    .end annotation

    .line 580
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getSlowRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 581
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 583
    iget-object p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4SlowRecordRatio;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4SlowRecordRatio;->videoMode:Ljava/lang/String;

    .line 584
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-static {p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->access$300(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;->updateVideoSlowResolution(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getWorkMode(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4GetWorkMode;",
            ">;)V"
        }
    .end annotation

    .line 516
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getWorkMode(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 517
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 518
    iget-object p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4GetWorkMode;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4GetWorkMode;->workmode:Ljava/lang/String;

    const-string p2, "24"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 519
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->access$002(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;I)I

    .line 520
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->getVideoSlowResolution()V

    goto :goto_0

    .line 522
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->access$002(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;I)I

    .line 523
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->getVideoNormalResolution()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 530
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 531
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->getShootingMode()V

    :goto_0
    return-void
.end method

.method public setSlowRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 570
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setSlowRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 571
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->getShootingMode()V

    :goto_0
    return-void
.end method

.method public setWorkModeCommonRecord(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 540
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setWorkModeCommonRecord(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 541
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 542
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->access$002(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;I)I

    .line 544
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->access$100(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->changeVideoNormalModeResolution(I)V

    :cond_0
    return-void
.end method

.method public setWorkModeSlowRecord(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 550
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setWorkModeSlowRecord(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 552
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->access$002(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;I)I

    .line 554
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->access$200(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->changeVideoSlowModeResolution(I)V

    :cond_0
    return-void
.end method
