.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;
.super Lcom/powervision/base/net/observable/RequestObservable;
.source "PVW4FirmWareUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getOnLineRemoteVersion(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/net/observable/RequestObservable<",
        "Ljava/util/List<",
        "Lcom/powervision/gcs/manager/FirmwareQueryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

.field final synthetic val$isA:Z


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Z)V
    .locals 0

    .line 1776
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iput-boolean p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->val$isA:Z

    invoke-direct {p0}, Lcom/powervision/base/net/observable/RequestObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/powervision/base/net/exception/ApiException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1776
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/FirmwareQueryModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 1780
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v1, ""

    .line 1784
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;

    .line 1786
    iget-object v2, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->firmware_description:Ljava/lang/String;

    .line 1787
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v1, "\\"

    const-string v3, ""

    .line 1788
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1789
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/powervision/gcs/manager/Description;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/Description;

    .line 1790
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    .line 1791
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1792
    invoke-virtual {v1}, Lcom/powervision/gcs/manager/Description;->getZh()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v3, "jp"

    .line 1793
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1794
    invoke-virtual {v1}, Lcom/powervision/gcs/manager/Description;->getJa()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1796
    :cond_2
    invoke-virtual {v1}, Lcom/powervision/gcs/manager/Description;->getEn()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    .line 1808
    iget-object v5, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->firmware_latest_version_code:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 1809
    iget-object v5, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->firmware_latest_version_code:Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1811
    array-length v6, v5

    if-lez v6, :cond_6

    const/4 v6, 0x0

    .line 1812
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_6

    .line 1813
    aget-object v7, v5, v6

    const-string v8, "DL01_"

    .line 1814
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v4, "DL01_"

    const-string v8, ""

    .line 1815
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    const-string v8, "MCU_"

    .line 1816
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v2, "MCU_"

    const-string v8, ""

    .line 1817
    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const-string v3, "WIFI_"

    const-string v8, ""

    .line 1819
    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1824
    :cond_6
    iget-object v5, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->firmware_description:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 1825
    iget-object v5, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {v5}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$1200(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1826
    iget-object v5, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v6, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->firmware_download_addr:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$1202(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    const-string v5, "lzqRu"

    const-string v6, " compareRemoteLocalAndServer before"

    .line 1830
    invoke-static {v5, v6}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    iget-object v5, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-boolean v6, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->val$isA:Z

    invoke-virtual {v5, v4, v2, v3, v6}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->compareRemoteLocalAndServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "lzqRu"

    .line 1832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " compareRemoteLocalAndServer after :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    new-instance v3, Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {v3}, Lcom/powervision/gcs/manager/W4Firmware;-><init>()V

    sput-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    .line 1834
    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v4, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->firmware_download_addr:Ljava/lang/String;

    iget-object v5, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->firmware_download_addr:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    const-string v3, "lzqRu"

    .line 1835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " State.remote_download_model.fileName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v5, v5, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v4, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->firmware_latest_version_code:Ljava/lang/String;

    iput-object v4, v3, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    .line 1838
    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v4, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->row_id:Ljava/lang/String;

    iput-object v4, v3, Lcom/powervision/gcs/manager/W4Firmware;->md5:Ljava/lang/String;

    .line 1840
    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://gcsbucket.oss-accelerate.aliyuncs.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->firmware_download_addr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/powervision/gcs/manager/W4Firmware;->download_address:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1843
    sput-boolean v6, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showRemoteDownLoad:Z

    .line 1844
    iget-boolean v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->val$isA:Z

    sput-boolean v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->isA:Z

    .line 1845
    sput-boolean v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showDl01Update:Z

    .line 1846
    sput-boolean v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showWifiUpdate:Z

    .line 1847
    sput-boolean v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showMcuUpdate:Z

    const-string v2, ""

    .line 1848
    sput-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remoteDl01Md5:Ljava/lang/String;

    .line 1850
    iget-object v2, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->firmware_size:Ljava/lang/String;

    sput-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remoteDownLoadSize:Ljava/lang/String;

    .line 1852
    sput-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remoteReleaseNote:Ljava/lang/String;

    .line 1853
    iget-object p1, p1, Lcom/powervision/gcs/manager/FirmwareQueryModel;->firmware_download_addr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1854
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$300(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1855
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1856
    :goto_3
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1857
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    iget-boolean v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->val$isA:Z

    invoke-interface {v1, v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showRemoteDownLoad(Z)V

    .line 1858
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideDl01Update()V

    .line 1859
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideWifiUpdate()V

    const-string v1, "lzqRu"

    const-string v2, "hideMcuUpdate 111111111"

    .line 1860
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    const/16 v2, 0x6f

    invoke-interface {v1, v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideMcuUpdate(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1864
    :cond_8
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1866
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->showRedNotify(I)V

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 1864
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    const-string p1, "lzqRu"

    const-string v1, " \u8ddf\u670d\u52a1\u5668\u5bf9\u6bd4 \u4e0d\u7528\u4e0b\u8f7d"

    .line 1871
    invoke-static {p1, v1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$300(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1873
    :try_start_2
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    .line 1874
    :goto_4
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v2, v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 1875
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$14;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v2, v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideRemoteDownLoad()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1878
    :cond_a
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1879
    sput-boolean v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showRemoteDownLoad:Z

    :cond_b
    :goto_5
    return-void

    :catchall_1
    move-exception v0

    .line 1878
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_c
    :goto_6
    return-void
.end method
