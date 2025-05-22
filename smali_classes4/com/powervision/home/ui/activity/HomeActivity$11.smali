.class Lcom/powervision/home/ui/activity/HomeActivity$11;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/HomeActivity;->saveTimeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/util/List<",
        "Lcom/powervision/base/db/model/GeoOnLineData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$11;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    const-string v0, "geoData.size() = onComplete"

    .line 817
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "geoData.size() = onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 796
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/HomeActivity$11;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/db/model/GeoOnLineData;",
            ">;)V"
        }
    .end annotation

    .line 804
    invoke-static {}, Lcom/powervision/base/db/DBManager;->getInstance()Lcom/powervision/base/db/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/db/DBManager;->insertOrUpdate(Ljava/util/List;)V

    .line 805
    invoke-static {}, Lcom/powervision/base/db/DBManager;->getInstance()Lcom/powervision/base/db/DBManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/db/DBManager;->queryUpdateTime()Ljava/lang/String;

    move-result-object p1

    .line 806
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "PV_DATABASE_UPDATE_TIME"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    const-string p1, "geoData.size() = onSubscribe"

    .line 799
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method
