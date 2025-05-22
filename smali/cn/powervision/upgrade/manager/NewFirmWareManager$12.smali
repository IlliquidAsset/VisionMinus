.class Lcn/powervision/upgrade/manager/NewFirmWareManager$12;
.super Lcom/powervision/base/net/observable/RequestObservable;
.source "NewFirmWareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareRemoteDl01WitchServer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/observable/RequestObservable<",
        "Ljava/util/List<",
        "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

.field final synthetic val$hardwareType:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1783
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iput-object p2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->val$hardwareType:Ljava/lang/String;

    iput-object p3, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Lcom/powervision/base/net/observable/RequestObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 1

    const-string p1, "lzqFirm"

    const-string v0, " \u8bf7\u6c42 dl01 \u5931\u8d25 "

    .line 1832
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget v0, p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    .line 1834
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

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

    .line 1783
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lzqFirm"

    const-string v1, " \u8bf7\u6c42 dl01 \u6210\u529f "

    .line 1787
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1788
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$800(Lcn/powervision/upgrade/manager/NewFirmWareManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1790
    :try_start_0
    iget-object v1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$800(Lcn/powervision/upgrade/manager/NewFirmWareManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1791
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1793
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$400(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    .line 1794
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget-object v0, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2.2body_step \u8bf7\u6c42 AP03RC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->val$hardwareType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$12;->val$version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7f51\u7edc\u6210\u529f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
