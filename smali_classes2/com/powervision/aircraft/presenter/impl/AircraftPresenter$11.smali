.class Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$11;
.super Ljava/lang/Object;
.source "AircraftPresenter.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;


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

    .line 1539
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$11;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLapsePhotoNumber(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$11;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$1700(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1546
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$11;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$1800(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updatePhotoNum(I)V

    return-void
.end method
