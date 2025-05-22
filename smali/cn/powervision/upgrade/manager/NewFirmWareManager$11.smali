.class Lcn/powervision/upgrade/manager/NewFirmWareManager$11;
.super Lcom/powervision/base/net/observable/RequestObservable;
.source "NewFirmWareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareModeWithServer(Ljava/lang/String;)V
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


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V
    .locals 0

    .line 1726
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Lcom/powervision/base/net/observable/RequestObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 1

    const-string p1, "lzqFirm"

    const-string v0, "2.2body_step \u8bf7\u6c42 Model \u5931\u8d25:"

    .line 1769
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget v0, p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->failedCount:I

    .line 1771
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

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

    .line 1726
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1730
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1736
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u8bf7\u6c42 Model\u6210\u529f:"

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

    .line 1737
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$700(Lcn/powervision/upgrade/manager/NewFirmWareManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1738
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$400(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    const-string v0, "getFirmware"

    .line 1739
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1741
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1742
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    .line 1743
    invoke-virtual {v2}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 1745
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x50c07cbe

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0x4620309

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "MODEL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v4, "config"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    :goto_1
    if-eq v3, v6, :cond_4

    goto :goto_2

    .line 1749
    :cond_4
    iget-object v2, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v2, v6}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$602(Lcn/powervision/upgrade/manager/NewFirmWareManager;Z)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1754
    :cond_5
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$600(Lcn/powervision/upgrade/manager/NewFirmWareManager;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1755
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget-object p1, p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->logTag:Ljava/lang/String;

    const-string v0, "\u7f3a\u5c11.conf\u6587\u4ef6"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    .line 1733
    :cond_7
    :goto_3
    iget-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$11;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$400(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    return-void
.end method
