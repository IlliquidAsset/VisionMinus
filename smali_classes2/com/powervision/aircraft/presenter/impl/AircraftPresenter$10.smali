.class Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$10;
.super Ljava/lang/Object;
.source "AircraftPresenter.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V
    .locals 0

    .line 1520
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$10;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLapseFiile(Ljava/lang/String;)V
    .locals 2

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CreateLapseFiile"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$10;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$1400(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "0x802"

    .line 1525
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1526
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$10;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$1500(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->stopDelayCapture()V

    const-string p1, "\u505c\u6b62\u56de\u8c03 -- \u5c11\u4e8e15\u5f20,\u505c\u6b62"

    .line 1527
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "0x803"

    .line 1528
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u505c\u6b62\u56de\u8c03 -- storageFull"

    .line 1529
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1530
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$10;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$1600(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->storageFull()V

    :cond_2
    :goto_0
    return-void
.end method
