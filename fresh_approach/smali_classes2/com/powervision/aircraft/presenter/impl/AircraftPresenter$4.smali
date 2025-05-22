.class Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$4;
.super Ljava/lang/Object;
.source "AircraftPresenter.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getObservableCompareData()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$4;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 820
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$4;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 821
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$4;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-static {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->access$300(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseModel;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/model/impl/AircraftModel;

    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$4;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/model/impl/AircraftModel;->getCompareData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------=========2222222222 compare "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 826
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/db/model/GeoData;

    .line 827
    new-instance v2, Lcom/powervision/base/db/model/GeoOnLineData;

    invoke-direct {v2}, Lcom/powervision/base/db/model/GeoOnLineData;-><init>()V

    .line 828
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->id:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->set_id(Ljava/lang/Long;)V

    .line 829
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->color:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setColor(Ljava/lang/String;)V

    .line 830
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setCountry(Ljava/lang/String;)V

    .line 831
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setDescription(Ljava/lang/String;)V

    .line 833
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, v1, Lcom/powervision/base/db/model/GeoData;->geometry:Ljava/lang/String;

    const-class v5, Lcom/powervision/base/db/model/Geometry;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setGeometry(Ljava/lang/Object;)V

    .line 834
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, v1, Lcom/powervision/base/db/model/GeoData;->point:Ljava/lang/String;

    const-class v5, Lcom/powervision/base/db/model/Point;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setPoint(Ljava/lang/Object;)V

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "point -----> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/powervision/base/db/model/GeoOnLineData;->getPoint()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/db/model/Point;

    check-cast v4, Lcom/powervision/base/db/model/Point;

    invoke-virtual {v4}, Lcom/powervision/base/db/model/Point;->getX()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 837
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 839
    :goto_1
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->height:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setHeight(Ljava/lang/Double;)V

    .line 840
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->layer_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setLayer_type(Ljava/lang/String;)V

    .line 841
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setName(Ljava/lang/String;)V

    .line 842
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->nofly_level:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setNofly_level(Ljava/lang/Integer;)V

    .line 843
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->operating:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setOperating(Ljava/lang/String;)V

    .line 844
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setCity(Ljava/lang/String;)V

    .line 845
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->radius:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setRadius(Ljava/lang/Double;)V

    .line 846
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->update_time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setUpdate_time(Ljava/lang/String;)V

    .line 847
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setUrl(Ljava/lang/String;)V

    .line 848
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->xmax:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setXmax(Ljava/lang/Double;)V

    .line 849
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->xmin:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setXmin(Ljava/lang/Double;)V

    .line 850
    iget-object v3, v1, Lcom/powervision/base/db/model/GeoData;->ymax:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Lcom/powervision/base/db/model/GeoOnLineData;->setYmax(Ljava/lang/Double;)V

    .line 851
    iget-object v1, v1, Lcom/powervision/base/db/model/GeoData;->ymin:Ljava/lang/Double;

    invoke-virtual {v2, v1}, Lcom/powervision/base/db/model/GeoOnLineData;->setYmin(Ljava/lang/Double;)V

    .line 852
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 855
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 856
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonStr === "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 860
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/CacheUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/CacheUtil;

    move-result-object v0

    const-string v1, "fty_upd.json"

    invoke-virtual {v0, p1, v1}, Lcom/powervision/base/utils/CacheUtil;->writeFenceToFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 862
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 863
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$4;->this$0:Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->sendFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
