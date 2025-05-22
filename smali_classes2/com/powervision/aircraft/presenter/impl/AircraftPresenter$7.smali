.class Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$7;
.super Ljava/lang/Object;
.source "AircraftPresenter.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;


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

    .line 1374
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$7;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiplePhoto(I)V
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$7;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$700(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1379
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$7;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$800(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setMultiShotsFail()V

    goto :goto_0

    .line 1381
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$7;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$900(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setMultipleShotsSuccess(I)V

    :goto_0
    return-void
.end method
