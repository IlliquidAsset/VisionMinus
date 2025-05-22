.class public Lcom/powervision/media/presenter/impl/MediaLibPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "MediaLibPresenter.java"

# interfaces
.implements Lcom/powervision/media/presenter/IMediaLibPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/media/ui/view/IMediaLibView;",
        "Lcom/powervision/media/model/impl/MediaLibModel;",
        ">;",
        "Lcom/powervision/media/presenter/IMediaLibPresenter;"
    }
.end annotation


# instance fields
.field public ap03MediaRequestTimeoutCallback:Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;

.field private mAOADownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

.field private mCount:I

.field private mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private mDownMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpUsbManager:Lcom/powervision/gcs/usb2/HttpUsbManager;

.field private mMediaType:I

.field private mNamePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedDown:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

.field private mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 71
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mCount:I

    .line 139
    new-instance v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter$1;-><init>(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 296
    new-instance v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;-><init>(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mAOADownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 397
    new-instance v0, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$iUkZKriwBm7b7LuumMJT0xzA_m8;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$iUkZKriwBm7b7LuumMJT0xzA_m8;-><init>(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->ap03MediaRequestTimeoutCallback:Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;

    const-string v0, "media--"

    .line 72
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaLibPresenter init"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNeedDown:Ljava/util/ArrayList;

    .line 74
    invoke-static {}, Lcom/powervision/localhttp/AP03RequestHelper;->get()Lcom/powervision/localhttp/AP03RequestHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

    .line 75
    iget-object v1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03RequestHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 76
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 77
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 78
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mHttpUsbManager:Lcom/powervision/gcs/usb2/HttpUsbManager;

    .line 79
    iget-object v1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->ap03MediaRequestTimeoutCallback:Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->setAp03MediaRequestTimeoutCallback(Lcom/powervision/gcs/usb2/HttpUsbManager$Ap03MediaRequestTimeoutCallback;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mAOADownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getHadSelectData()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->handleData(Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;ZLjava/util/ArrayList;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->updateListData(ZLjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/media/presenter/impl/MediaLibPresenter;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->saveCancelSaveRequest(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mCount:I

    return p0
.end method

.method static synthetic access$1902(Lcom/powervision/media/presenter/impl/MediaLibPresenter;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/Map;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNeedDown:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/powervision/media/presenter/impl/MediaLibPresenter;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->scanFile(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->downClear()V

    return-void
.end method

.method static synthetic access$2900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNamePaths:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/media/presenter/impl/MediaLibPresenter;Ljava/util/ArrayList;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->generalNewListAfterDelete(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->deleteRequest()V

    return-void
.end method

.method static synthetic access$800(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method private deleteRequest()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNamePaths:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 498
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNamePaths:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/powervision/localhttp/CmdModel$Builder;->deleteData(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    .line 499
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNamePaths:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private downClear()V
    .locals 1

    const/4 v0, 0x1

    .line 407
    iput v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mCount:I

    .line 408
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 409
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNeedDown:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private generalNewListAfterDelete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;)V"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/media/model/impl/MediaLibModel;

    invoke-virtual {v0}, Lcom/powervision/media/model/impl/MediaLibModel;->resetListData()V

    .line 565
    invoke-virtual {p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getOriginListData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 567
    invoke-virtual {p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getOriginListData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$3;

    invoke-direct {v0, p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter$3;-><init>(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V

    .line 568
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private getHadSelectData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {v0}, Lcom/powervision/media/ui/view/IMediaLibView;->getHadSelectData()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private handleData(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;)V"
        }
    .end annotation

    const-string v0, "media-- 2"

    .line 628
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "handleData"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 630
    sget-object v0, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$_1bDmYC9cFRIZj5CplF4oOXcilI;->INSTANCE:Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$_1bDmYC9cFRIZj5CplF4oOXcilI;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 632
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/media/model/impl/MediaLibModel;

    invoke-virtual {v0}, Lcom/powervision/media/model/impl/MediaLibModel;->resetList()V

    .line 633
    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$sJZY5qnhuZv-M6OdMNRaWLX9evo;->INSTANCE:Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$sJZY5qnhuZv-M6OdMNRaWLX9evo;

    .line 635
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$-4gg0DrFSX0ii-FX-Ey5W68y-eo;

    invoke-direct {v0, p2}, Lcom/powervision/media/presenter/impl/-$$Lambda$MediaLibPresenter$-4gg0DrFSX0ii-FX-Ey5W68y-eo;-><init>(Ljava/util/ArrayList;)V

    .line 636
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/powervision/media/presenter/impl/MediaLibPresenter$5;

    invoke-direct {p2, p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter$5;-><init>(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V

    .line 649
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic lambda$handleData$1(Lcom/powervision/localhttp/entity/MediaLib;Lcom/powervision/localhttp/entity/MediaLib;)I
    .locals 0

    .line 630
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getCreateDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getCreateDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$handleData$2(Lcom/powervision/localhttp/entity/MediaLib;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getDamaged()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$handleData$3(Ljava/util/ArrayList;Lcom/powervision/localhttp/entity/MediaLib;)Lcom/powervision/localhttp/entity/MediaLib;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 638
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 639
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetId()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/entity/MediaLib;

    .line 641
    invoke-virtual {v1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    .line 642
    invoke-virtual {p1, p0}, Lcom/powervision/localhttp/entity/MediaLib;->setSelected(Z)V

    :cond_1
    return-object p1
.end method

.method private saveCancelSaveRequest(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 554
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p1

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNamePaths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/powervision/localhttp/CmdModel$Builder;->cancelCollectData(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    goto :goto_0

    .line 556
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p1

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNamePaths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/powervision/localhttp/CmdModel$Builder;->collectData(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    .line 558
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNamePaths:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private saveMedia(Ljava/lang/String;Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 6

    .line 711
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 712
    :goto_0
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 715
    const-class v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2, v3, p1}, Lcom/powervision/base/utils/DbHelper;->searchVideoByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    goto :goto_1

    .line 717
    :cond_1
    const-class v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2, v3, p1}, Lcom/powervision/base/utils/DbHelper;->searchImageByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    :goto_1
    if-nez v3, :cond_3

    .line 720
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->scanFile(Landroid/content/Context;Ljava/io/File;)V

    .line 721
    new-instance v3, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v3}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/powervision/base/model/MediaModel;->setModifyTime(Ljava/lang/Long;)V

    .line 723
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getCreateDate()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/base/utils/TimeUtils;->parseTimeToLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    const/4 p2, 0x3

    .line 724
    invoke-virtual {v3, p2}, Lcom/powervision/base/model/MediaModel;->setPlatform(I)V

    if-eqz v0, :cond_2

    .line 726
    invoke-virtual {v3, p1}, Lcom/powervision/base/model/MediaModel;->setVideoPath(Ljava/lang/String;)V

    goto :goto_2

    .line 728
    :cond_2
    invoke-virtual {v3, p1}, Lcom/powervision/base/model/MediaModel;->setImagePath(Ljava/lang/String;)V

    .line 730
    :goto_2
    invoke-virtual {v3, v1}, Lcom/powervision/base/model/MediaModel;->setTag(I)V

    .line 731
    invoke-virtual {v2, v3}, Lcom/powervision/base/utils/DbHelper;->save(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private scanFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    .line 742
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/FileUtils;->makeRootDictionary(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 743
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 749
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v0, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 751
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateListData(ZLjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;)V"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getListData()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 258
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 259
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 260
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 262
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/MediaLib;

    if-eqz v3, :cond_0

    .line 264
    invoke-virtual {v3, p1}, Lcom/powervision/localhttp/entity/MediaLib;->setCollected(I)V

    .line 265
    invoke-virtual {v3, v1}, Lcom/powervision/localhttp/entity/MediaLib;->setSelected(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public deleteMedia(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 488
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNamePaths:Ljava/util/List;

    const-string p1, "media-- deleteMedia size="

    .line 489
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNamePaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 490
    invoke-direct {p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->deleteRequest()V

    return-void
.end method

.method public detachView()V
    .locals 0

    .line 703
    invoke-super {p0}, Lcom/powervision/base/base/BasePresenter;->detachView()V

    .line 704
    invoke-virtual {p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->release()V

    return-void
.end method

.method public download(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;)V"
        }
    .end annotation

    .line 419
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 420
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    .line 424
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNeedDown:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x64

    invoke-interface {v0, v2, v3}, Lcom/powervision/media/ui/view/IMediaLibView;->updateDownloadInfo(II)V

    goto/16 :goto_6

    .line 427
    :cond_1
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v2

    const/4 v3, 0x6

    const-string v4, "dng"

    const-string v5, "raw"

    const-string v6, "."

    const-string v7, "0-0"

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 455
    :cond_2
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 458
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 461
    :cond_3
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getDngImagePath()Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getPrePos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 463
    :cond_4
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getPrePos()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 467
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03MediaDir()Ljava/lang/String;

    move-result-object v4

    .line 468
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getTempLocalFileName()Ljava/lang/String;

    move-result-object v5

    .line 467
    invoke-virtual {v3, v2, v4, v5, v7}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getTempLocalFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 429
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 430
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    const/4 v3, 0x0

    .line 431
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_b

    .line 432
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/powervision/localhttp/entity/BurstInfo;

    .line 433
    invoke-virtual {v8}, Lcom/powervision/localhttp/entity/BurstInfo;->isDone()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 434
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03MediaDir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/powervision/localhttp/entity/BurstInfo;->getLocalFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/powervision/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 436
    :cond_7
    invoke-virtual {v8}, Lcom/powervision/localhttp/entity/BurstInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 438
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 439
    invoke-virtual {v9, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 441
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 442
    :cond_8
    invoke-virtual {v8}, Lcom/powervision/localhttp/entity/BurstInfo;->getDngImagePath()Ljava/lang/String;

    move-result-object v9

    .line 443
    invoke-virtual {v8}, Lcom/powervision/localhttp/entity/BurstInfo;->getPrePos()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_3

    .line 444
    :cond_9
    invoke-virtual {v8}, Lcom/powervision/localhttp/entity/BurstInfo;->getPrePos()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_a
    :goto_3
    move-object v10, v7

    .line 448
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "media---offset---down= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " offset= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v1, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    iget-object v11, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03MediaDir()Ljava/lang/String;

    move-result-object v12

    .line 450
    invoke-virtual {v8}, Lcom/powervision/localhttp/entity/BurstInfo;->getTempLocalFileName()Ljava/lang/String;

    move-result-object v13

    .line 449
    invoke-virtual {v11, v9, v12, v13, v10}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v9, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownMap:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/powervision/localhttp/entity/BurstInfo;->getTempLocalFileName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 471
    :cond_b
    :goto_5
    iget-object v2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNeedDown:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :goto_6
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 474
    invoke-virtual {p0, p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->download(Ljava/util/ArrayList;)V

    goto :goto_7

    :cond_c
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "\u9519\u8bef\uff1aSD\u5361\u4e0d\u5b58\u5728\u6216\u5df2\u635f\u574f"

    .line 476
    invoke-static {v0, p1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    return-void
.end method

.method public filterSelectListFun(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p2, v0, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/localhttp/entity/MediaLib;

    .line 107
    invoke-virtual {v2}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 113
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 114
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/localhttp/entity/MediaLib;

    .line 117
    invoke-virtual {v2}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    if-ne p2, v1, :cond_5

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 124
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    .line 127
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getCollected()I

    move-result v0

    if-nez v0, :cond_4

    .line 128
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    return-object p1
.end method

.method public generalNewListAfterDelete(IZ)V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/media/model/impl/MediaLibModel;

    invoke-virtual {v0}, Lcom/powervision/media/model/impl/MediaLibModel;->resetListData()V

    if-nez p2, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getOriginListData()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getOriginListData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/powervision/media/presenter/impl/MediaLibPresenter$4;

    invoke-direct {p2, p0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter$4;-><init>(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V

    .line 603
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getAssertIds(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 508
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 510
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    rem-int/lit8 v2, v0, 0x14

    const/16 v3, 0x14

    div-int/2addr v0, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-ne v5, v6, :cond_1

    if-eqz v2, :cond_1

    move v6, v2

    goto :goto_2

    :cond_1
    const/16 v6, 0x14

    .line 519
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_3

    mul-int/lit8 v9, v5, 0x14

    add-int/2addr v9, v8

    .line 521
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {v9}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, -0x1

    if-ge v8, v9, :cond_2

    const-string v9, ","

    .line 523
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 526
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public getListData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/media/model/impl/MediaLibModel;

    invoke-virtual {v0}, Lcom/powervision/media/model/impl/MediaLibModel;->getListData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getOriginListData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation

    .line 689
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/media/model/impl/MediaLibModel;

    invoke-virtual {v0}, Lcom/powervision/media/model/impl/MediaLibModel;->getOriginListData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$MediaLibPresenter()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {v0}, Lcom/powervision/media/ui/view/IMediaLibView;->loadStuckWork()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelMediaAllDownload(Z)V

    .line 694
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mAOADownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->removeAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 695
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mRequestHelper:Lcom/powervision/localhttp/AP03RequestHelper;

    iget-object v1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mRequestListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03RequestHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 696
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mHttpUsbManager:Lcom/powervision/gcs/usb2/HttpUsbManager;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->removeAp03MediaRequestTimeoutCallback()V

    :cond_0
    return-void
.end method

.method public requestData(II)V
    .locals 3

    const-string v0, "media--"

    .line 280
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaLibPresenter requestData"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iput p2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mMediaType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 283
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p2

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/CmdModel$Builder;->getAllVideo(I)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 285
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p2

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/CmdModel$Builder;->getAllPhoto(I)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 287
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p2

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/CmdModel$Builder;->getAllCollections(I)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p2

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/CmdModel$Builder;->getAllMedia(I)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    :goto_0
    return-void
.end method

.method public saveAndCancelSave(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 542
    iput-object p2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNamePaths:Ljava/util/List;

    const-string p2, "media-- saveAndCancelSave= "

    .line 543
    invoke-static {p2}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->mNamePaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 544
    invoke-direct {p0, p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->saveCancelSaveRequest(Z)V

    return-void
.end method
