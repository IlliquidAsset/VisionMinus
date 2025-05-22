.class public Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "FirmwareDownloadPresenter.java"

# interfaces
.implements Lcn/powervision/upgrade/presenter/impl/IFirmwareDownloadPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcn/powervision/upgrade/iviews/IFirmwareDownView;",
        "Lcn/powervision/upgrade/model/impl/FirmwareModel;",
        ">;",
        "Lcn/powervision/upgrade/presenter/impl/IFirmwareDownloadPresenter;"
    }
.end annotation


# instance fields
.field CONNECT_TIMEOUT:I

.field READ_TIMEOUT:I

.field RETRYRANGE:I

.field TRYCOUNT:I

.field WRITE_TIMEOUT:I

.field baseTypePath:Ljava/lang/String;

.field haveDownLoadFileSize:J

.field mDownloadCall:Lokhttp3/Call;

.field needConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation
.end field

.field okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->needConfigList:Ljava/util/ArrayList;

    const/16 v0, 0x8

    .line 69
    iput v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->READ_TIMEOUT:I

    .line 70
    iput v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->WRITE_TIMEOUT:I

    .line 71
    iput v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->CONNECT_TIMEOUT:I

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mDownloadCall:Lokhttp3/Call;

    const/16 v0, 0x12

    .line 73
    iput v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->RETRYRANGE:I

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->TRYCOUNT:I

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->baseTypePath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 90
    iput-wide v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->haveDownLoadFileSize:J

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;Ljava/lang/String;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->clearNormal(Ljava/lang/String;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;Ljava/lang/String;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->clearModel(Ljava/lang/String;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method private clearModel(Ljava/lang/String;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {p2}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getNormalLocalItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "lzqDown"

    if-eqz v0, :cond_2

    .line 392
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 394
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->sortFirmVersion(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "biggest:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v2, v2, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    const-string v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 399
    aget-object v2, v2, v3

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u91cd\u65b0\u6392\u5e8f\u7684\u6587\u4ef6\u5939\u5185\u5bb9\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_0
    if-ltz v5, :cond_3

    .line 408
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 409
    iget-object v7, v6, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    const-string v8, ".0.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "/"

    if-eqz v7, :cond_0

    const-string v7, "\u8fd9\u662f\u4e2a\u57fa\u5305"

    .line 410
    invoke-static {v1, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v7, v6, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 413
    aget-object v7, v7, v3

    .line 414
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v2, v7, :cond_1

    const-string v7, "\u8fd9\u4e2a\u57fa\u5305\u4e0d\u662f\u6700\u5927\u5305\u7684\u57fa\u5305 \u5c31\u5220\u6389"

    .line 418
    invoke-static {v1, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcn/powervision/upgrade/model/entity/Firmware;->fileName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcn/powervision/upgrade/FileUtil;->deleteDir(Ljava/io/File;)Z

    goto :goto_1

    .line 424
    :cond_0
    iget v7, v6, Lcn/powervision/upgrade/model/entity/Firmware;->isForce:I

    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    if-eq v5, v7, :cond_1

    const-string v7, "\u5982\u679c\u4e0d\u662f\u57fa\u5305 \u4e0d\u662f\u6700\u5927\u7684 \u53c8\u4e0d\u662f isForce\u5c31\u5220\u9664"

    .line 425
    invoke-static {v1, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcn/powervision/upgrade/model/entity/Firmware;->fileName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcn/powervision/upgrade/FileUtil;->deleteDir(Ljava/io/File;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_2
    const-string p1, "  getNormalLocalItem \u96c6\u5408\u4e3anull"

    .line 434
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private clearNormal(Ljava/lang/String;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {p2}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getNormalLocalItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "lzqDown"

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 371
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->sortFirmVersion(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91cd\u65b0\u6392\u5e8f\u7684\u6587\u4ef6\u5939\u5185\u5bb9\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 374
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 375
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_0

    const-string v4, "\u5982\u679c\u662f\u975e\u5f3a\u5236\u5347\u7ea7 \u5e76\u4e14\u8fd8\u4e0d\u662f\u6700\u5927\u7684\u5c31\u5220\u6389"

    .line 377
    invoke-static {v1, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcn/powervision/upgrade/model/entity/Firmware;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcn/powervision/upgrade/FileUtil;->deleteDir(Ljava/io/File;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const-string p1, "  getNormalLocalItem \u96c6\u5408\u4e3anull"

    .line 383
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static getAvailable()Z
    .locals 5

    .line 445
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    .line 447
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    .line 449
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 450
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    const-wide/32 v3, 0x1f400000

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mDownloadCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    const-string v0, "lzqDown"

    const-string v1, "download cancel"

    .line 362
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mDownloadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public downFirmware(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;J)V"
        }
    .end annotation

    return-void
.end method

.method public downFirmware(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;J)V"
        }
    .end annotation

    return-void
.end method

.method public download(Ljava/util/List;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;J)V"
        }
    .end annotation

    .line 93
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    invoke-static {}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->getAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 98
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcn/powervision/upgrade/iviews/IFirmwareDownView;

    invoke-interface {p1, v1}, Lcn/powervision/upgrade/iviews/IFirmwareDownView;->downFailed(I)V

    :cond_0
    return-void

    .line 105
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "lzqDown"

    if-nez v0, :cond_2

    const-string v0, "\u4e0b\u8f7d\u5b8c\u4e86 \u7ed9\u6240\u6709\u7684\u6587\u4ef6\u91cd\u547d\u540d"

    .line 107
    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4e0b\u8f7d\u5b8c\u4e86 \u7ed9\u6240\u6709\u7684\u6587\u4ef6\u91cd\u547d\u540d \u5b8c\u6210"

    .line 109
    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcn/powervision/upgrade/iviews/IFirmwareDownView;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-interface {v0, v3}, Lcn/powervision/upgrade/iviews/IFirmwareDownView;->updateDownProgress(F)V

    .line 112
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcn/powervision/upgrade/iviews/IFirmwareDownView;

    invoke-interface {v0}, Lcn/powervision/upgrade/iviews/IFirmwareDownView;->downSuccess()V

    .line 116
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    .line 119
    invoke-virtual {v10}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getEquipment_model()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AP03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03_BODY_LOCAL_PATH:Ljava/lang/String;

    iput-object v1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->baseTypePath:Ljava/lang/String;

    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :cond_3
    sget-object v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03RC_LOCAL_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->baseTypePath:Ljava/lang/String;

    .line 128
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://gcsbucket.oss-accelerate.aliyuncs.com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_download_addr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->baseTypePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startDown ANewOne :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startDown \u4e0b\u8f7d\u5230 :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 136
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    const/4 v1, 0x0

    .line 139
    iput-object v1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mDownloadCall:Lokhttp3/Call;

    .line 140
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->mDownloadCall:Lokhttp3/Call;

    .line 141
    new-instance v1, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;

    move-object v4, v1

    move-object v5, p0

    move-object v6, p1

    move-wide v8, p2

    invoke-direct/range {v4 .. v10}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;-><init>(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;Ljava/util/List;Ljava/io/File;JLcn/powervision/upgrade/model/entity/FirmwareInfo;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_5
    return-void
.end method

.method public setUpConfigList()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->needConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setupDownLoad()V
    .locals 4

    .line 78
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 79
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->READ_TIMEOUT:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->WRITE_TIMEOUT:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->CONNECT_TIMEOUT:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    return-void
.end method
