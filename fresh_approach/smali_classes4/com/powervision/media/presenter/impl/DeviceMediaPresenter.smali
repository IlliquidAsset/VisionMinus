.class public Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "DeviceMediaPresenter.java"

# interfaces
.implements Lcom/powervision/media/presenter/IDeviceMediaPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/media/ui/view/IDeviceMediaView;",
        "Lcom/powervision/media/model/impl/DeviceMediaModel;",
        ">;",
        "Lcom/powervision/media/presenter/IDeviceMediaPresenter;"
    }
.end annotation


# instance fields
.field private mAOADownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private mDownMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaType:I

.field private mPageCount:I

.field private mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

.field private mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    .line 80
    new-instance v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$1;-><init>(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)V

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 227
    new-instance v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;-><init>(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)V

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mAOADownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMediaType:I

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;Ljava/util/List;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->handleData(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/Map;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDownMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;Ljava/lang/String;Lcom/powervision/localhttp/entity/FileInfo;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->saveMedia(Ljava/lang/String;Lcom/powervision/localhttp/entity/FileInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mPageCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDeleteList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDeleteList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;Ljava/util/ArrayList;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->generalNewListAfterDelete(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method private generalNewListAfterDelete(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;I)V"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/media/model/impl/DeviceMediaModel;

    invoke-virtual {v0, p2}, Lcom/powervision/media/model/impl/DeviceMediaModel;->resetList(I)V

    .line 410
    invoke-virtual {p0, p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->getOriginListByType(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 412
    invoke-virtual {p0, p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->getOriginListByType(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$3;

    invoke-direct {v0, p0, p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$3;-><init>(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;I)V

    .line 413
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private getRequestObservable(II)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x14

    mul-int/lit8 p1, p1, 0x14

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 470
    invoke-static {}, Lcom/powervision/media/api/MediaManager;->getInstance()Lcom/powervision/media/api/MediaManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/media/api/MediaManager;->getMediaApi()Lcom/powervision/media/api/MediaApi;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/powervision/media/api/MediaApi;->requestPhotoPage(II)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 472
    invoke-static {}, Lcom/powervision/media/api/MediaManager;->getInstance()Lcom/powervision/media/api/MediaManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/media/api/MediaManager;->getMediaApi()Lcom/powervision/media/api/MediaApi;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/powervision/media/api/MediaApi;->requestRecordPage(II)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 474
    :cond_1
    invoke-static {}, Lcom/powervision/media/api/MediaManager;->getInstance()Lcom/powervision/media/api/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/media/api/MediaManager;->getMediaApi()Lcom/powervision/media/api/MediaApi;

    move-result-object p1

    const-string p2, "all"

    const-string v0, "10"

    invoke-interface {p1, p2, v0}, Lcom/powervision/media/api/MediaApi;->requestAll(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private handleData(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "media 2"

    .line 484
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 485
    iget v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mPageCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/media/model/impl/DeviceMediaModel;

    invoke-virtual {v0, p2}, Lcom/powervision/media/model/impl/DeviceMediaModel;->initList(I)V

    .line 488
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;

    invoke-direct {v0, p0, p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$5;-><init>(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;I)V

    .line 489
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private saveMedia(Ljava/lang/String;Lcom/powervision/localhttp/entity/FileInfo;)V
    .locals 5

    .line 545
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/FileInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "record"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 546
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 549
    const-class v2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v1, v2, p1}, Lcom/powervision/base/utils/DbHelper;->searchVideoByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    goto :goto_0

    .line 551
    :cond_0
    const-class v2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v1, v2, p1}, Lcom/powervision/base/utils/DbHelper;->searchImageByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    :goto_0
    if-nez v2, :cond_2

    .line 554
    iget-object v2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->scanFile(Landroid/content/Context;Ljava/io/File;)V

    .line 555
    new-instance v2, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v2}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/base/model/MediaModel;->setModifyTime(Ljava/lang/Long;)V

    .line 557
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/base/utils/TimeUtils;->parseTimeToLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    const/4 p2, 0x3

    .line 558
    invoke-virtual {v2, p2}, Lcom/powervision/base/model/MediaModel;->setPlatform(I)V

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {v2, p1}, Lcom/powervision/base/model/MediaModel;->setVideoPath(Ljava/lang/String;)V

    goto :goto_1

    .line 562
    :cond_1
    invoke-virtual {v2, p1}, Lcom/powervision/base/model/MediaModel;->setImagePath(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    .line 564
    invoke-virtual {v2, p1}, Lcom/powervision/base/model/MediaModel;->setTag(I)V

    .line 565
    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/DbHelper;->save(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private scanFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    .line 576
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/FileUtils;->makeRootDictionary(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 577
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 583
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v0, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 585
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteMedia(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;I)V"
        }
    .end annotation

    .line 335
    iput p2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMediaType:I

    .line 336
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDeleteList:Ljava/util/ArrayList;

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 340
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    const-string v3, ","

    .line 342
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media"

    .line 346
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 348
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

    .line 350
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

.method public download(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 289
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/FileInfo;

    .line 295
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v2, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDownMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Lcom/powervision/media/ui/view/IDeviceMediaView;->updateDownloadInfo(II)V

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/powervision/localhttp/entity/FileInfo;->MEDIA_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getLocalFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-direct {p0, v2, v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->saveMedia(Ljava/lang/String;Lcom/powervision/localhttp/entity/FileInfo;)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getMediaDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getTempLocalFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDownMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getTempLocalFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 312
    invoke-virtual {p0, p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->download(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "\u9519\u8bef\uff1aSD\u5361\u4e0d\u5b58\u5728\u6216\u5df2\u635f\u574f"

    .line 323
    invoke-static {v0, p1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public generalNewListAfterDelete(II)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/media/model/impl/DeviceMediaModel;

    invoke-virtual {v0, p2}, Lcom/powervision/media/model/impl/DeviceMediaModel;->resetList(I)V

    .line 437
    invoke-virtual {p0, p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->getOriginListByType(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 439
    invoke-virtual {p0, p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->getOriginListByType(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$4;

    invoke-direct {v0, p0, p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$4;-><init>(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;I)V

    .line 440
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getListByType(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/media/model/impl/DeviceMediaModel;

    invoke-virtual {v0, p1}, Lcom/powervision/media/model/impl/DeviceMediaModel;->getListByType(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getOriginListByType(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/media/model/impl/DeviceMediaModel;

    invoke-virtual {v0, p1}, Lcom/powervision/media/model/impl/DeviceMediaModel;->getOriginListByType(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 64
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mContext:Landroid/content/Context;

    const-string p1, "media"

    .line 65
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "init"

    invoke-interface {p1, v1, v0}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/powervision/localhttp/AP03RequestHelper;->get()Lcom/powervision/localhttp/AP03RequestHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

    .line 67
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/AP03RequestHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 68
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 69
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mAOADownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 74
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDownMap:Ljava/util/Map;

    return-void
.end method

.method public release()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelAllDownload(Z)V

    .line 537
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mAOADownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->removeAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 538
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

    iget-object v1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03RequestHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    return-void
.end method

.method public requestCurrentState()V
    .locals 2

    .line 387
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->getCurrentState()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public requestData(II)V
    .locals 3

    const-string v0, "media"

    .line 186
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "requestData"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iput p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mPageCount:I

    .line 191
    iput p2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->mMediaType:I

    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x14

    mul-int/lit8 p1, p1, 0x14

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 218
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p2

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/powervision/localhttp/CmdModel$Builder;->getVideoMedia(II)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p2

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/powervision/localhttp/CmdModel$Builder;->getPhotoMedia(II)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    :goto_0
    return-void
.end method

.method public requestData(ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public switchToRAM()V
    .locals 2

    .line 403
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->switchToRAM()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public switchToSD()V
    .locals 2

    .line 395
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->switchToSD()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method
