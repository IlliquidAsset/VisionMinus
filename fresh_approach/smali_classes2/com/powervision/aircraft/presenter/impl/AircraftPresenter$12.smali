.class Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$12;
.super Ljava/lang/Object;
.source "AircraftPresenter.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;


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

    .line 1554
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$12;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLapseFileDuration(II)V
    .locals 2

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_0

    return-void

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$12;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$1900(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1562
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$12;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$2000(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateFileSize(II)V

    return-void
.end method
