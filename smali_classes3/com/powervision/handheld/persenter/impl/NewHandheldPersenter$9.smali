.class Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;
.super Ljava/lang/Object;
.source "NewHandheldPersenter.java"

# interfaces
.implements Lcom/powervision/camera/camera/CameraListener$CameraControllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$4600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$4700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onCaptureFail(Ljava/lang/String;)V

    return-void
.end method

.method public onAEBMultiplePhotoStart()V
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->setAEBMultipleShotsSuccess(Ljava/lang/String;II)V

    return-void
.end method

.method public onCameraStateChange(I)V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$4400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$4500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onCameraStateChange(I)V

    return-void
.end method

.method public onHDRMultiplePhotoStart()V
    .locals 0

    return-void
.end method

.method public onMultipleShotsStart()V
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->setMultipleShotsSuccess(Ljava/lang/String;II)V

    return-void
.end method

.method public onPhotograph(Ljava/lang/String;)V
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 699
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPhotograph , type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Base_Camera_Manager"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onPhotograph , type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  captureMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delayes"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    .line 701
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 702
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 703
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->startDelayCapture()V

    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onPhotograph(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "0x803"

    .line 707
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 708
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {p1, v1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->storageFull(I)V

    goto :goto_0

    .line 710
    :cond_3
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$1100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    :goto_0
    return-void
.end method

.method public onStartRecordVideo(Ljava/lang/String;)V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$4000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$4100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onStartRecordVideo(Ljava/lang/String;)V

    return-void
.end method

.method public onStopRecordVideo(Ljava/lang/String;)V
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$4200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$4300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onStopRecordVideo(Ljava/lang/String;)V

    return-void
.end method

.method public onStorageFull(Ljava/lang/String;I)V
    .locals 0

    .line 777
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$4800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {p1, p2}, Lcom/powervision/handheld/ui/view/INewHandheldView;->storageFull(I)V

    return-void
.end method

.method public onSwitchPhotographMode(Ljava/lang/String;)V
    .locals 3

    .line 661
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onSwitchPhotoMode()V

    .line 663
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 664
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->setCaptureDelayMode()V

    goto :goto_0

    .line 669
    :cond_1
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string v0, "photo_type"

    const-string v1, "0-0"

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    .line 670
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 671
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 672
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 674
    iget-object v2, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v2, v1, p1, v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setCaptureMode(III)V

    :goto_0
    return-void
.end method

.method public onSwitchRecordMode(Ljava/lang/String;)V
    .locals 2

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchRecordMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onSwitchRecordMode()V

    .line 638
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isSlowMotionMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 640
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wang = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 641
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/view/INewHandheldView;

    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->setSlowMotionModeSuccess(I)V

    goto :goto_0

    .line 643
    :cond_1
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setVideoResolution(I)V

    goto :goto_0

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 647
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SPHelperUtils;->getResolution()I

    move-result v0

    invoke-static {p1, v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2502(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;I)I

    .line 648
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPresenter.getCameraCurrentResolution() = get = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 649
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setVideoResolution(I)V

    goto :goto_0

    .line 651
    :cond_3
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$2600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onSwitchRecordMode(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onTimingStart()V
    .locals 2

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimingStart onTimingStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$3600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->startTimeCapture(I)V

    return-void
.end method
