.class Lcn/powervision/upgrade/manager/NewFirmWareManager$8;
.super Lcom/powervision/base/net/observable/RequestObservable;
.source "NewFirmWareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->requesetReleaseNote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/observable/RequestObservable<",
        "Ljava/util/List<",
        "Lcn/powervision/upgrade/model/ReleaseNote;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V
    .locals 0

    .line 1469
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$8;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Lcom/powervision/base/net/observable/RequestObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1481
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$8;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget v1, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1.1 releaseNot onFailure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/powervision/base/net/exception/ApiException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqFirm"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$8;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$400(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1469
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$8;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/ReleaseNote;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1474
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$8;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$400(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1.1 releaseNot Success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    invoke-static {p1}, Lcn/powervision/upgrade/manager/ReleaseNoteUtils;->updateReleaseNote(Ljava/util/List;)V

    return-void
.end method
