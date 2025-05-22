.class Lcom/powervision/base/model/flightlog/FlightLogManager$1;
.super Ljava/lang/Object;
.source "FlightLogManager.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


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
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;

.field final synthetic val$fileAbsList:Ljava/util/List;

.field final synthetic val$localPsnCode:Ljava/lang/String;

.field final synthetic val$timeTag:J


# direct methods
.method constructor <init>(Lcom/powervision/base/model/flightlog/FlightLogManager;Ljava/util/List;JLjava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;

    iput-object p2, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->val$fileAbsList:Ljava/util/List;

    iput-wide p3, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->val$timeTag:J

    iput-object p5, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->val$localPsnCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;

    iget-object v1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->val$fileAbsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->sortCsvAllFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    invoke-static {v1}, Lcom/powervision/base/model/flightlog/CsvUtils;->readeCsvFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "FlightLogManager"

    if-eqz v2, :cond_0

    .line 187
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    .line 188
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v4, v1}, Lcom/powervision/base/model/flightlog/FlightLogData;->setFileName(Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;

    iget-wide v5, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->val$timeTag:J

    invoke-static {v4, v2, v1, v5, v6}, Lcom/powervision/base/model/flightlog/FlightLogManager;->access$000(Lcom/powervision/base/model/flightlog/FlightLogManager;Ljava/util/List;Ljava/lang/String;J)V

    .line 191
    iget-object v1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-static {v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->access$100(Lcom/powervision/base/model/flightlog/FlightLogManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;

    iget-object v4, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->val$localPsnCode:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/powervision/base/model/flightlog/FlightLogManager;->access$200(Lcom/powervision/base/model/flightlog/FlightLogManager;Ljava/util/List;Ljava/lang/String;)V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLocalCsvDataList.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-static {v2}, Lcom/powervision/base/model/flightlog/FlightLogManager;->access$100(Lcom/powervision/base/model/flightlog/FlightLogManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, " unUsed file ..."

    .line 195
    invoke-static {v3, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/model/flightlog/FlightLogManager$1;->this$0:Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-static {v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->access$300(Lcom/powervision/base/model/flightlog/FlightLogManager;)V

    .line 199
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
