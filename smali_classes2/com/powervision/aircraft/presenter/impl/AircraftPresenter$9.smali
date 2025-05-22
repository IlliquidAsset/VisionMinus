.class Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$9;
.super Ljava/lang/Object;
.source "AircraftPresenter.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;


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

    .line 1508
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$9;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopLapsePhoto(Ljava/lang/String;)V
    .locals 0

    .line 1511
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$9;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$1200(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1512
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$9;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$1300(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->stopDelayCapture()V

    return-void
.end method
