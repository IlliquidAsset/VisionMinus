.class Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "CameraImageSettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getMultiPictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4MultiPictureRatio;",
            ">;)V"
        }
    .end annotation

    .line 670
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getMultiPictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 671
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 672
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    move-result-object p1

    iget-object p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p2, Lcom/powervision/localhttp/entity/PVW4MultiPictureRatio;

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;->handleMultiPictureRatio(Lcom/powervision/localhttp/entity/PVW4MultiPictureRatio;)V

    :cond_0
    return-void
.end method

.method public getMultiPictureSpeed(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4MultiPictureSpeed;",
            ">;)V"
        }
    .end annotation

    .line 694
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getMultiPictureSpeed(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 695
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 696
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    move-result-object p1

    iget-object p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p2, Lcom/powervision/localhttp/entity/PVW4MultiPictureSpeed;

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;->handleMultiPictureSpeed(Lcom/powervision/localhttp/entity/PVW4MultiPictureSpeed;)V

    :cond_0
    return-void
.end method

.method public getSinglePictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4SinglePictureRatio;",
            ">;)V"
        }
    .end annotation

    .line 647
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getSinglePictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 648
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 649
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    move-result-object p1

    iget-object p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p2, Lcom/powervision/localhttp/entity/PVW4SinglePictureRatio;

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;->handleSinglePictureRatio(Lcom/powervision/localhttp/entity/PVW4SinglePictureRatio;)V

    :cond_0
    return-void
.end method

.method public getWorkMode(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4GetWorkMode;",
            ">;)V"
        }
    .end annotation

    .line 598
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getWorkMode(ILcom/powervision/localhttp/entity/BaseModel;)V

    const-string v0, "CameraVideoSettingPr"

    const-string v1, "getWorkMode: basic"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 600
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 601
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    move-result-object p1

    iget-object v1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v1, Lcom/powervision/localhttp/entity/PVW4GetWorkMode;

    invoke-interface {p1, v1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;->handleShootingMode(Lcom/powervision/localhttp/entity/PVW4GetWorkMode;)V

    .line 603
    iget-object p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4GetWorkMode;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4GetWorkMode;->workmode:Ljava/lang/String;

    const-string p2, "10"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 604
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$102(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;I)I

    .line 605
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$200(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)V

    .line 606
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$300(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)V

    goto :goto_0

    .line 608
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$102(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;I)I

    .line 609
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$400(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$setWorkModeMultiPicture$1$CameraImageSettingPresenter$1()V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$102(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;I)I

    .line 717
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$700(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 718
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setShootingContinuous3Mode()V

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$700(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 720
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setShootingContinuous5Mode()V

    .line 722
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$702(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;I)I

    return-void
.end method

.method public synthetic lambda$setWorkModeSinglePicture$0$CameraImageSettingPresenter$1()V
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$600(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)V

    return-void
.end method

.method public setMultiPictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 655
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setMultiPictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 656
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 657
    iget p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    const/16 p2, 0x6a

    if-eq p1, p2, :cond_1

    const/16 p2, 0x6b

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    const-string p2, "12M"

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$502(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 659
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    const-string p2, "8M"

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$502(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public setMultiPictureSpeed(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 678
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setMultiPictureSpeed(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 679
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 680
    iget p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    const/16 p2, 0x6d

    if-eq p1, p2, :cond_1

    const/16 p2, 0x6e

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;->handleMultiPictureSpeed5P()V

    goto :goto_0

    .line 682
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;->handleMultiPictureSpeed3P()V

    .line 688
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$600(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)V

    :cond_2
    return-void
.end method

.method public setSinglePictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 632
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setSinglePictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 633
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 634
    iget p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    const/16 p2, 0x1f

    if-eq p1, p2, :cond_1

    const/16 p2, 0x20

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    const-string p2, "12M"

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$502(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 636
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    const-string p2, "8M"

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$502(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public setWorkModeMultiPicture(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 713
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setWorkModeMultiPicture(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 714
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 715
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/presenter/-$$Lambda$CameraImageSettingPresenter$1$RFaqF5aBo9KVEGnBSCwIcj0F2JU;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/-$$Lambda$CameraImageSettingPresenter$1$RFaqF5aBo9KVEGnBSCwIcj0F2JU;-><init>(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setWorkModeSinglePicture(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 702
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setWorkModeSinglePicture(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 703
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 704
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$102(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;I)I

    .line 705
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;->handleSinglePictureMode()V

    .line 707
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/presenter/-$$Lambda$CameraImageSettingPresenter$1$wE62lmWzy1SH_2eTFYbg4-d0fDI;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/-$$Lambda$CameraImageSettingPresenter$1$wE62lmWzy1SH_2eTFYbg4-d0fDI;-><init>(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
