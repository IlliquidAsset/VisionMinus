.class Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$1;
.super Ljava/lang/Object;
.source "AircraftPresenter.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


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
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/powervision/base/db/model/GeoData;",
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

    .line 759
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$1;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    iput-wide p2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$1;->val$lat:D

    iput-wide p4, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$1;->val$lon:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/powervision/base/db/model/GeoData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------=========2222222222"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$1;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$1;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$000(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/impl/AircraftModel;

    iget-wide v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$1;->val$lat:D

    iget-wide v3, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$1;->val$lon:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/powervision/aircraft/model/impl/AircraftModel;->getNativePolygon(DD)Ljava/util/List;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------=========2222222222 11 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$1;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$100(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->clearNoFlyZonePolygon()V

    .line 766
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/db/model/GeoData;

    .line 767
    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 769
    :cond_0
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
