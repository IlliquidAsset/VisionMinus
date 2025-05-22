.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;
.super Lcom/powervision/base/net/observable/RequestObservable;
.source "PVW4FirmWareUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getOnLineBodyVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/observable/RequestObservable<",
        "Ljava/util/ArrayList<",
        "Lcom/powervision/gcs/manager/BodyFirmWareModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V
    .locals 0

    .line 1587
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {p0}, Lcom/powervision/base/net/observable/RequestObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "lzqRetro"

    const-string v0, "\u5931\u8d25"

    .line 1671
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$1100(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1587
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/BodyFirmWareModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 1592
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "lzqW4Firm"

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body \u8bf7\u6c42\u6210\u529f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 1606
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->compareBodyLocalWithServer(Ljava/util/ArrayList;)V

    const-string v0, "lzqW4Firm"

    .line 1607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_download_infos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1610
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_download_infos:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    .line 1615
    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_download_infos:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1616
    :goto_0
    :try_start_0
    sget-object v6, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_download_infos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1617
    sget-object v6, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_download_infos:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/manager/BodyFirmWareModel;

    .line 1619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://gcsbucket.oss-accelerate.aliyuncs.com/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_download_addr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_download_addr:Ljava/lang/String;

    .line 1620
    iget-object v6, v6, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_size:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1623
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1628
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_7

    const-string v0, ""

    .line 1630
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/manager/BodyFirmWareModel;

    iget-object p1, p1, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_description:Ljava/lang/String;

    .line 1631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v0, "\\"

    const-string v5, ""

    .line 1632
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1633
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/powervision/gcs/manager/Description;

    invoke-virtual {v0, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/manager/Description;

    .line 1635
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "zh"

    .line 1636
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1637
    invoke-virtual {p1}, Lcom/powervision/gcs/manager/Description;->getZh()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v5, "jp"

    .line 1638
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1639
    invoke-virtual {p1}, Lcom/powervision/gcs/manager/Description;->getJa()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1641
    :cond_4
    invoke-virtual {p1}, Lcom/powervision/gcs/manager/Description;->getEn()Ljava/lang/String;

    move-result-object v0

    .line 1645
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$300(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1646
    :try_start_1
    iget-object v5, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v5, v5, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 1647
    :goto_2
    iget-object v5, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v5, v5, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 1648
    iget-object v5, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v5, v5, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v5}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showBodyDownLoad()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1651
    :cond_6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "lzqW4Firm"

    const-string v4, "body \u663e\u793a\u4e0b\u8f7d"

    .line 1652
    invoke-static {p1, v4}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$13;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->showRedNotify(I)V

    .line 1656
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->bodyDownLoadSize:Ljava/lang/String;

    .line 1657
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->bodyReleaseNote:Ljava/lang/String;

    .line 1658
    sput-boolean v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showBodyDownLoad:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 1651
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    :goto_3
    return-void

    :catchall_1
    move-exception p1

    .line 1623
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_8
    :goto_4
    return-void
.end method
