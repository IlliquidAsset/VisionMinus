.class Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;
.super Ljava/lang/Object;
.source "AircraftPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getLimitedFlyZone(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/powervision/base/db/model/GeoOnLineData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

.field final synthetic val$lat:D

.field final synthetic val$lon:D


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;DD)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    iput-wide p2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;->val$lat:D

    iput-wide p4, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;->val$lon:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 919
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isDroneConnectStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    iget-wide v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;->val$lat:D

    iget-wide v3, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;->val$lon:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getNoFlyZone(DD)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 914
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    iget-wide v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;->val$lat:D

    iget-wide v2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;->val$lon:D

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getNoFlyZone(DD)V

    return-void
.end method

.method public onNext(Lcom/powervision/base/db/model/GeoOnLineData;)V
    .locals 2

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "geoOnLineData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/powervision/base/db/model/GeoOnLineData;->getUpdate_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$400(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->drawOnlinePolygon(Lcom/powervision/base/db/model/GeoOnLineData;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 899
    check-cast p1, Lcom/powervision/base/db/model/GeoOnLineData;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;->onNext(Lcom/powervision/base/db/model/GeoOnLineData;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
