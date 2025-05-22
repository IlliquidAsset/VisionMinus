.class Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$2;
.super Ljava/lang/Object;
.source "AircraftPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getNoFlyZone(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/powervision/base/db/model/GeoData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$2;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Lcom/powervision/base/db/model/GeoData;)V
    .locals 1

    const-string v0, "--------=========2222222222  onNext"

    .line 780
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$2;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$200(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->drawNativePolygon(Lcom/powervision/base/db/model/GeoData;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 773
    check-cast p1, Lcom/powervision/base/db/model/GeoData;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$2;->onNext(Lcom/powervision/base/db/model/GeoData;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
