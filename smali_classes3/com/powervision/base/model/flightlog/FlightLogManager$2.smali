.class Lcom/powervision/base/model/flightlog/FlightLogManager$2;
.super Lio/reactivex/observers/DisposableObserver;
.source "FlightLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/model/flightlog/FlightLogManager;->parseLocalCvsFilesToList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;


# direct methods
.method constructor <init>(Lcom/powervision/base/model/flightlog/FlightLogManager;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$2;->this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubscribe ...onComplete() \u672c\u5730\u8bfb\u53d6\u5b8c\u6210\u4e86\u3002mLocalCsvDataList\u3002size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$2;->this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;

    .line 215
    invoke-static {v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->access$100(Lcom/powervision/base/model/flightlog/FlightLogManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlightLogManager"

    .line 214
    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$2;->this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-static {v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->access$400(Lcom/powervision/base/model/flightlog/FlightLogManager;)Lcom/powervision/base/model/flightlog/FlightLogManager$OnCsvDatasLoadOverListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/base/model/flightlog/FlightLogManager$OnCsvDatasLoadOverListener;->onCsvDatasLoadOver()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 203
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/powervision/base/model/flightlog/FlightLogManager$2;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
