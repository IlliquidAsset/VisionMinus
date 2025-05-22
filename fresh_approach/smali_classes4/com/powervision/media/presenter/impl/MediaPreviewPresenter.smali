.class public Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "MediaPreviewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/media/ui/view/IMediaView;",
        "Lcom/powervision/media/model/impl/MediaPreviewModel;",
        ">;"
    }
.end annotation


# instance fields
.field public ap03MediaRequestTimeoutCallback:Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;

.field private mAOADownListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

.field private mCount:I

.field private mDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownInfo:Lcom/powervision/localhttp/entity/MediaLib;

.field private mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private mHttpUsbManager:Lcom/powervision/gcs/usb2/HttpUsbManager;

.field private mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

.field private mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mCount:I

    .line 65
    new-instance v0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;-><init>(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)V

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mAOADownListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 169
    new-instance v0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$2;-><init>(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)V

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 267
    new-instance v0, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaPreviewPresenter$5tvjkx-85Z2k8ogC0TzwchJ4J1A;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaPreviewPresenter$5tvjkx-85Z2k8ogC0TzwchJ4J1A;-><init>(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)V

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->ap03MediaRequestTimeoutCallback:Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;

    .line 54
    invoke-static {}, Lcom/powervision/localhttp/AP03RequestHelper;->get()Lcom/powervision/localhttp/AP03RequestHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

    .line 55
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 56
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 57
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mHttpUsbManager:Lcom/powervision/gcs/usb2/HttpUsbManager;

    .line 58
    iget-object v1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->ap03MediaRequestTimeoutCallback:Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->setAp03MediaRequestTimeoutCallback(Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mAOADownListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/localhttp/entity/MediaLib;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownInfo:Lcom/powervision/localhttp/entity/MediaLib;

    return-object p0
.end method

.method static synthetic access$002(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;Lcom/powervision/localhttp/entity/MediaLib;)Lcom/powervision/localhttp/entity/MediaLib;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownInfo:Lcom/powervision/localhttp/entity/MediaLib;

    return-object p1
.end method

.method static synthetic access$100(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mCount:I

    return p0
.end method

.method static synthetic access$1000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDelete:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDelete:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->scanFile(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$900(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method private saveMedia(Ljava/lang/String;Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 7

    .line 438
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 439
    :goto_0
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 442
    const-class v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2, v3, p1}, Lcom/powervision/base/utils/DbHelper;->searchVideoByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    goto :goto_1

    .line 444
    :cond_1
    const-class v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2, v3, p1}, Lcom/powervision/base/utils/DbHelper;->searchImageByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    :goto_1
    if-nez v3, :cond_3

    .line 447
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->scanFile(Landroid/content/Context;Ljava/io/File;)V

    .line 448
    new-instance v3, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v3}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/powervision/base/model/MediaModel;->setModifyTime(Ljava/lang/Long;)V

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getCreateDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getCreateDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/powervision/base/utils/TimeUtils;->parseTimeToLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getCreateDate()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/base/utils/TimeUtils;->parseTimeToLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    const/4 p2, 0x3

    .line 452
    invoke-virtual {v3, p2}, Lcom/powervision/base/model/MediaModel;->setPlatform(I)V

    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {v3, p1}, Lcom/powervision/base/model/MediaModel;->setVideoPath(Ljava/lang/String;)V

    goto :goto_2

    .line 456
    :cond_2
    invoke-virtual {v3, p1}, Lcom/powervision/base/model/MediaModel;->setImagePath(Ljava/lang/String;)V

    .line 458
    :goto_2
    invoke-virtual {v3, v1}, Lcom/powervision/base/model/MediaModel;->setTag(I)V

    .line 459
    invoke-virtual {v2, v3}, Lcom/powervision/base/utils/DbHelper;->save(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private scanFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 473
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/FileUtils;->makeRootDictionary(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 476
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x0

    invoke-static {p1, v0, p2, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 478
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addRequestListener()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

    iget-object v1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03RequestHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    return-void
.end method

.method public deleteMedia(Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 3

    .line 374
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media"

    .line 375
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/powervision/localhttp/CmdModel$Builder;->deleteData(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public deleteMedia(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDelete:Ljava/util/ArrayList;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 354
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v4}, Lcom/powervision/localhttp/entity/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    const-string v4, ","

    .line 356
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media"

    .line 360
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "record"

    .line 361
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 362
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p2

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/CmdModel$Builder;->deleteVideoMedia(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    goto :goto_1

    .line 364
    :cond_2
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p2

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/CmdModel$Builder;->deletePhotoMedia(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    :goto_1
    return-void
.end method

.method public downPreviewImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/localhttp/PVW4DownloadManager;->addHighLevelDownloadTaskAtFront(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public download(Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 12

    .line 279
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 280
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 281
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    const/16 v0, 0x64

    invoke-interface {p1, v2, v0}, Lcom/powervision/media/ui/view/IMediaView;->updateDownloadInfo(II)V

    goto/16 :goto_6

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v0

    const/4 v3, 0x6

    const-string v4, "dng"

    const-string v5, "raw"

    const-string v6, "."

    const-string v7, "0-0"

    if-eq v0, v3, :cond_5

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 310
    :cond_1
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 313
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 316
    :cond_2
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getDngImagePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media--"

    .line 317
    invoke-static {v2}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "down_dng-path---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getPrePos()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getPrePos()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 323
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03MediaDir()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getTempLocalFileName()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v1, v0, v2, v3, v7}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 286
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 287
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 288
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BurstInfo;

    .line 290
    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/BurstInfo;->isDone()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 291
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03MediaDir()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/BurstInfo;->getLocalFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/powervision/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 293
    :cond_6
    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/BurstInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 295
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 296
    invoke-virtual {v8, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 298
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 299
    :cond_7
    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/BurstInfo;->getDngImagePath()Ljava/lang/String;

    move-result-object v8

    .line 300
    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/BurstInfo;->getPrePos()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_3

    .line 301
    :cond_8
    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/BurstInfo;->getPrePos()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_9
    :goto_3
    move-object v9, v7

    .line 305
    :goto_4
    iget-object v10, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03MediaDir()Ljava/lang/String;

    move-result-object v11

    .line 306
    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/BurstInfo;->getTempLocalFileName()Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-virtual {v10, v8, v11, v3, v9}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 326
    :cond_a
    :goto_5
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownInfo:Lcom/powervision/localhttp/entity/MediaLib;

    goto :goto_6

    :cond_b
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "\u9519\u8bef\uff1aSD\u5361\u4e0d\u5b58\u5728\u6216\u5df2\u635f\u574f"

    .line 329
    invoke-static {v0, p1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    return-void
.end method

.method public downloadLrv(Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 3

    .line 339
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownInfo:Lcom/powervision/localhttp/entity/MediaLib;

    .line 340
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getPreVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03LrvDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getTempLrvName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTaskAtFront(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$MediaPreviewPresenter()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {v0}, Lcom/powervision/media/ui/view/IMediaView;->loadStuckWork()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelMediaAllDownload(Z)V

    .line 427
    invoke-virtual {p0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->removeRequestListener()V

    .line 428
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mAOADownListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->removeAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 429
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mHttpUsbManager:Lcom/powervision/gcs/usb2/HttpUsbManager;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->removeAp03MediaRequestTimeoutCallback()V

    :cond_0
    return-void
.end method

.method public removeRequestListener()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

    iget-object v1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03RequestHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    return-void
.end method

.method public saveAndCancelSave(ZLcom/powervision/localhttp/entity/MediaLib;)V
    .locals 1

    .line 399
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "media-- saveAndCancelSave= "

    .line 400
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 402
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p1

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/powervision/localhttp/CmdModel$Builder;->cancelCollectData(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    goto :goto_0

    .line 404
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p1

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/powervision/localhttp/CmdModel$Builder;->collectData(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    :goto_0
    return-void
.end method
