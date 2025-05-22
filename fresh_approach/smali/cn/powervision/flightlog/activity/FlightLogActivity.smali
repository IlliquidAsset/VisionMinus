.class public Lcn/powervision/flightlog/activity/FlightLogActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "FlightLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter$IShowLogListListener;
.implements Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter$OnItemClickListener;
.implements Lcom/powervision/base/model/flightlog/FlightLogManager$OnCsvDatasLoadOverListener;
.implements Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnGetServerResultListener;
.implements Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;
.implements Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnCleanAllCsvListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/flightlog/activity/FlightLogActivity$MyHandler;
    }
.end annotation


# instance fields
.field private Tag:Ljava/lang/String;

.field private bottomDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;"
        }
    .end annotation
.end field

.field private callback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

.field isNetConnected:Z

.field private isRemoveLog:Z

.field private loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private mBackBt:Landroid/widget/ImageView;

.field private mDownLoadDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mFlightLogEmptyView:Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;

.field private mFlightLogPagerAdapter:Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private mLogListAdapter:Lcn/powervision/flightlog/adapter/LogListAdapter;

.field private mLogListRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field mPagerCurrentIndex:I

.field private mService:Lcom/powervision/oss/service/OssService;

.field private mSkidRemoveListView:Lcn/powervision/flightlog/customViews/SkidRemoveView;

.field private mSyncBt:Landroid/widget/ImageView;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private pagerListDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;",
            ">;"
        }
    .end annotation
.end field

.field private psnCode:Ljava/lang/String;

.field private syncFlightLogFragment:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const-string v0, "FlightLogActivity"

    .line 83
    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mPagerCurrentIndex:I

    .line 107
    iput-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->isRemoveLog:Z

    .line 125
    iput-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->isNetConnected:Z

    .line 568
    new-instance v0, Lcn/powervision/flightlog/activity/FlightLogActivity$MyHandler;

    invoke-direct {v0, p0}, Lcn/powervision/flightlog/activity/FlightLogActivity$MyHandler;-><init>(Lcn/powervision/flightlog/activity/FlightLogActivity;)V

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mHandler:Landroid/os/Handler;

    .line 613
    new-instance v0, Lcn/powervision/flightlog/activity/FlightLogActivity$6;

    invoke-direct {v0, p0}, Lcn/powervision/flightlog/activity/FlightLogActivity$6;-><init>(Lcn/powervision/flightlog/activity/FlightLogActivity;)V

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/flightlog/activity/FlightLogActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->initFileOSS()V

    return-void
.end method

.method static synthetic access$100(Lcn/powervision/flightlog/activity/FlightLogActivity;)Ljava/util/List;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->bottomDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/powervision/flightlog/activity/FlightLogActivity;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcn/powervision/flightlog/activity/FlightLogActivity;Ljava/lang/String;)Z
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->deleteLocalFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcn/powervision/flightlog/activity/FlightLogActivity;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/powervision/flightlog/activity/FlightLogActivity;)Lcn/powervision/flightlog/adapter/LogListAdapter;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mLogListAdapter:Lcn/powervision/flightlog/adapter/LogListAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcn/powervision/flightlog/activity/FlightLogActivity;)Lcn/powervision/flightlog/customViews/SkidRemoveView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mSkidRemoveListView:Lcn/powervision/flightlog/customViews/SkidRemoveView;

    return-object p0
.end method

.method static synthetic access$602(Lcn/powervision/flightlog/activity/FlightLogActivity;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->isRemoveLog:Z

    return p1
.end method

.method static synthetic access$700(Lcn/powervision/flightlog/activity/FlightLogActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->notifyFlightLogData()V

    return-void
.end method

.method static synthetic access$800(Lcn/powervision/flightlog/activity/FlightLogActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->updateCurrentItemViews()V

    return-void
.end method

.method static synthetic access$900(Lcn/powervision/flightlog/activity/FlightLogActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->getAllCitiesName()V

    return-void
.end method

.method private alertSyncDialog()V
    .locals 3

    .line 205
    invoke-static {}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->newInstance()Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->syncFlightLogFragment:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    .line 206
    invoke-virtual {v0, p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->setOnGetServerResultListener(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnGetServerResultListener;)V

    .line 207
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->syncFlightLogFragment:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {v0, p0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->setOnCleanAllCsvListener(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnCleanAllCsvListener;)V

    .line 208
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->syncFlightLogFragment:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "sync_datas"

    invoke-virtual {v0, v1, v2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private checkServerLogData(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 443
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private deleteLocalFile(Ljava/lang/String;)Z
    .locals 2

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NewVisionPlus/FlightLog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 247
    aget-object p1, p1, v0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getFlightLogRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private downloadCsvFiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;",
            ">;)V"
        }
    .end annotation

    .line 434
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->checkServerLogData(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-static {p0}, Lcom/powervision/base/utils/CacheUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/CacheUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/CacheUtil;->getFlightLogFilePath()Ljava/lang/String;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mService:Lcom/powervision/oss/service/OssService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->userId:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/powervision/oss/service/OssService;->downLoadFile(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_0
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->onSyncResult()V

    :goto_0
    return-void
.end method

.method private getAllCitiesName()V
    .locals 4

    const-string v0, "get_c_name"

    const-string v1, "...getAllCitiesName()...."

    .line 296
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 301
    iget-boolean v2, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->isNetConnected:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getCitiesNameList()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez v1, :cond_2

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;

    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getLogDatalist()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 305
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ".getAllCitiesName().no data....logDatalist==null or empty.."

    .line 306
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 310
    :cond_1
    new-instance v0, Lcn/powervision/flightlog/activity/FlightLogActivity$3;

    invoke-direct {v0, p0, v1}, Lcn/powervision/flightlog/activity/FlightLogActivity$3;-><init>(Lcn/powervision/flightlog/activity/FlightLogActivity;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 318
    new-instance v1, Lcn/powervision/flightlog/activity/FlightLogActivity$4;

    invoke-direct {v1, p0}, Lcn/powervision/flightlog/activity/FlightLogActivity$4;-><init>(Lcn/powervision/flightlog/activity/FlightLogActivity;)V

    .line 332
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 333
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    .line 332
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    :cond_2
    const-string v1, "..getAllCitiesName() ...network..not connected...."

    .line 335
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initBottomViewData(I)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 220
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;

    .line 221
    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getLogDatalist()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->bottomDataList:Ljava/util/List;

    .line 222
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..\u521d\u59cb\u5316...item ...pos ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "...bottomDataList.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->bottomDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcn/powervision/flightlog/adapter/LogListAdapter;

    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->bottomDataList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p1}, Lcn/powervision/flightlog/adapter/LogListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mLogListAdapter:Lcn/powervision/flightlog/adapter/LogListAdapter;

    .line 224
    invoke-virtual {v0, p0}, Lcn/powervision/flightlog/adapter/LogListAdapter;->setOnItemClickListener(Lcn/powervision/flightlog/adapter/BaseRecyclerViewAdapter$OnItemClickListener;)V

    .line 225
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mSkidRemoveListView:Lcn/powervision/flightlog/customViews/SkidRemoveView;

    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mLogListAdapter:Lcn/powervision/flightlog/adapter/LogListAdapter;

    invoke-virtual {p1, v0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 226
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mLogListAdapter:Lcn/powervision/flightlog/adapter/LogListAdapter;

    new-instance v0, Lcn/powervision/flightlog/activity/FlightLogActivity$2;

    invoke-direct {v0, p0}, Lcn/powervision/flightlog/activity/FlightLogActivity$2;-><init>(Lcn/powervision/flightlog/activity/FlightLogActivity;)V

    invoke-virtual {p1, v0}, Lcn/powervision/flightlog/adapter/LogListAdapter;->setOnDeleteClickListener(Lcn/powervision/flightlog/adapter/LogListAdapter$OnDeleteClickLister;)V

    :cond_0
    return-void
.end method

.method private initFileOSS()V
    .locals 2

    const-string v0, "https://oss-accelerate.aliyuncs.com"

    const-string v1, "flylog"

    .line 162
    invoke-virtual {p0, v0, v1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->initOSS(Ljava/lang/String;Ljava/lang/String;)Lcom/powervision/oss/service/OssService;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mService:Lcom/powervision/oss/service/OssService;

    const-string v1, "http://supplier.powervision.me:9991/queryOssCallBack"

    .line 163
    invoke-virtual {v0, v1}, Lcom/powervision/oss/service/OssService;->setCallbackAddress(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mService:Lcom/powervision/oss/service/OssService;

    invoke-virtual {v0, p0}, Lcom/powervision/oss/service/OssService;->setOnUploadDownLoadListener(Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;)V

    return-void
.end method

.method private initFlightLogListLayouts()V
    .locals 4

    .line 374
    sget v0, Lcn/powervision/flightlog/R$id;->log_list_root_layout:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mLogListRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 375
    sget v0, Lcn/powervision/flightlog/R$id;->skid_remove_list_view:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/powervision/flightlog/customViews/SkidRemoveView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mSkidRemoveListView:Lcn/powervision/flightlog/customViews/SkidRemoveView;

    .line 376
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 377
    new-instance v0, Landroidx/recyclerview/widget/DividerItemDecoration;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 379
    sget v1, Lcn/powervision/flightlog/R$drawable;->flight_list_divider_inset:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mSkidRemoveListView:Lcn/powervision/flightlog/customViews/SkidRemoveView;

    invoke-virtual {v1, v0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private initNewWorkCallback()V
    .locals 3

    const-string v0, "get_c_name"

    const-string v1, "...initNewWorkCallback()...."

    .line 602
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 605
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    return-void

    .line 609
    :cond_0
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    return-void
.end method

.method private initPager()V
    .locals 2

    .line 348
    sget v0, Lcn/powervision/flightlog/R$id;->flight_pager:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 350
    new-instance v0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;

    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mFlightLogPagerAdapter:Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;

    .line 351
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 352
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mPagerCurrentIndex:I

    if-lt v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcn/powervision/flightlog/activity/FlightLogActivity$5;

    invoke-direct {v1, p0}, Lcn/powervision/flightlog/activity/FlightLogActivity$5;-><init>(Lcn/powervision/flightlog/activity/FlightLogActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private initTopViews()V
    .locals 1

    .line 155
    sget v0, Lcn/powervision/flightlog/R$id;->flight_close_bt:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mBackBt:Landroid/widget/ImageView;

    .line 156
    sget v0, Lcn/powervision/flightlog/R$id;->flight_sync_bt:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mSyncBt:Landroid/widget/ImageView;

    .line 157
    sget v0, Lcn/powervision/flightlog/R$id;->empty_pager:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mFlightLogEmptyView:Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;

    return-void
.end method

.method private notifyFlightLogData()V
    .locals 9

    .line 538
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;

    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getLogDatalist()Ljava/util/List;

    move-result-object v0

    .line 539
    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getCitiesNameList()Ljava/util/Map;

    move-result-object v2

    .line 540
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_2

    .line 543
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 544
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v7}, Lcom/powervision/base/model/flightlog/FlightLogData;->getFileName()Ljava/lang/String;

    move-result-object v7

    .line 546
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 547
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 549
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 550
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v5, v7}, Lcom/powervision/base/model/flightlog/FlightLogData;->setCityName(Ljava/lang/String;)V

    goto :goto_1

    .line 552
    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/flightlog/FlightLogData;

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Lcom/powervision/base/model/flightlog/FlightLogData;->setCityName(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 556
    :cond_2
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;

    .line 557
    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getLogDatalist()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 558
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v3}, Lcom/powervision/base/model/flightlog/FlightLogData;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->setCityName(Ljava/lang/String;)V

    goto :goto_2

    .line 560
    :cond_3
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private onClickBack()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mLogListRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->isRemoveLog:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->loadLocalFlightLogs(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->isRemoveLog:Z

    .line 197
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mLogListRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Lcom/powervision/base/utils/AnimUtils;->doHideOrShowBottomView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mBackBt:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/flightlog/R$mipmap;->flightlog_white_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->finish()V

    :goto_0
    return-void
.end method

.method private onSyncResult()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->syncFlightLogFragment:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->syncFlightLogFragment:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    .line 342
    invoke-virtual {v0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->syncFlightLogFragment:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {v0}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->showSyncComplete()V

    :cond_0
    return-void
.end method

.method private strippedUpDownData(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;",
            ">;)V"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  strippedUpDownData....server ..flyLogs\u3002size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mDownLoadDataList:Ljava/util/List;

    .line 455
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;

    invoke-virtual {v1}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getLogDatalist()Ljava/util/List;

    move-result-object v1

    .line 456
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 458
    iget-object v4, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-virtual {v4}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getmLocalCsvFileNameList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 459
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, -0x1

    if-ge v5, v6, :cond_3

    .line 460
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;

    invoke-virtual {v6}, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->getFile_name()Ljava/lang/String;

    move-result-object v6

    .line 461
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 464
    :cond_0
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2

    .line 466
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 469
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v7, :cond_2

    .line 470
    iget-object v7, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mDownLoadDataList:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v7, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " for... down....  mServerFileName ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 474
    :cond_3
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " .....mDownLoadDataList.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mDownLoadDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 475
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge p1, v4, :cond_7

    .line 476
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v4}, Lcom/powervision/base/model/flightlog/FlightLogData;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 477
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    const-string v6, "NewVisionPlus/FlightLog/"

    .line 480
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 481
    aget-object v5, v6, v5

    .line 482
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 486
    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v7, :cond_6

    .line 487
    new-instance v6, Lcom/powervision/oss/bean/FlightLogUploadData;

    iget-object v8, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->userId:Ljava/lang/String;

    iget-object v9, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->psnCode:Ljava/lang/String;

    invoke-direct {v6, v5, v4, v8, v9}, Lcom/powervision/oss/bean/FlightLogUploadData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v4, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   for ....upload ....  fileName ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 491
    :cond_7
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " .....mUploadDataList.size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mDownLoadDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    .line 493
    invoke-static {p0}, Lcom/powervision/base/utils/CacheUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/CacheUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/utils/CacheUtil;->getFlightLogFilePath()Ljava/lang/String;

    move-result-object p1

    .line 494
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "... mService.downLoadFile()....+mDownLoadDataList.size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mDownLoadDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mService:Lcom/powervision/oss/service/OssService;

    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mDownLoadDataList:Ljava/util/List;

    iget-object v3, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/powervision/oss/service/OssService;->downLoadFile(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_4

    .line 496
    :cond_8
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mDownLoadDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 497
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ...mService.uploadFile()...mUploadDataList.size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mService:Lcom/powervision/oss/service/OssService;

    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/powervision/oss/service/OssService;->uploadFile(Ljava/util/List;ZLjava/lang/String;)V

    goto :goto_4

    .line 500
    :cond_9
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---upload..and ..downlaod....mUploadDataList.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "....mDownLoadDataList.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mDownLoadDataList:Ljava/util/List;

    .line 501
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {p1, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mService:Lcom/powervision/oss/service/OssService;

    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0, v5, v1}, Lcom/powervision/oss/service/OssService;->uploadFile(Ljava/util/List;ZLjava/lang/String;)V

    :goto_4
    return-void
.end method

.method private updateCurrentItemViews()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mFlightLogPagerAdapter:Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0}, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->notifyDataSetChanged()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mLogListRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mLogListAdapter:Lcn/powervision/flightlog/adapter/LogListAdapter;

    invoke-virtual {v0}, Lcn/powervision/flightlog/adapter/LogListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private uplaodCsvFiles(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 412
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 415
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 416
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/flightlog/FlightLogData;

    invoke-virtual {v3}, Lcom/powervision/base/model/flightlog/FlightLogData;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "NewVisionPlus/FlightLog/"

    .line 420
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 421
    aget-object v4, v5, v4

    .line 422
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 425
    :cond_1
    new-instance v5, Lcom/powervision/oss/bean/FlightLogUploadData;

    iget-object v6, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->userId:Ljava/lang/String;

    iget-object v7, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->psnCode:Ljava/lang/String;

    invoke-direct {v5, v4, v3, v6, v7}, Lcom/powervision/oss/bean/FlightLogUploadData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v5, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u4e0a\u4f20\u6587\u4ef6 index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  \u672c\u5730\u8def\u5f84\uff1a filePath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   \u6587\u4ef6\u540d\u79f0\uff1a fileName ="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " psnCode="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->psnCode:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  userId="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->userId:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    :cond_2
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mService:Lcom/powervision/oss/service/OssService;

    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/oss/service/OssService;->uploadFile(Ljava/util/List;ZLjava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 256
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 113
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->setFullScreen(Landroid/app/Activity;)V

    .line 114
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->noActionBar(Landroid/app/Activity;)V

    .line 115
    sget v0, Lcn/powervision/flightlog/R$layout;->flightlog_activity_log_main_layout:I

    return v0
.end method

.method public hideloadingDialog()V
    .locals 1

    .line 669
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    const/4 v0, 0x0

    .line 671
    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    :cond_0
    return-void
.end method

.method protected initData()V
    .locals 3

    .line 130
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->userId:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "AP03_ACTIVATION_PSN_CODE"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->psnCode:Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    .line 133
    invoke-virtual {v0, p0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->setOnCvsDatasLoadOverListener(Lcom/powervision/base/model/flightlog/FlightLogManager$OnCsvDatasLoadOverListener;)V

    .line 135
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->loadLocalFlightLogs(Landroid/content/Context;)V

    .line 136
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->showloadingDialog()V

    .line 137
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..initData()...............userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcn/powervision/flightlog/activity/FlightLogActivity$1;

    invoke-direct {v0, p0}, Lcn/powervision/flightlog/activity/FlightLogActivity$1;-><init>(Lcn/powervision/flightlog/activity/FlightLogActivity;)V

    .line 144
    invoke-virtual {v0}, Lcn/powervision/flightlog/activity/FlightLogActivity$1;->start()V

    return-void
.end method

.method public initOSS(Ljava/lang/String;Ljava/lang/String;)Lcom/powervision/oss/service/OssService;
    .locals 4

    .line 169
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    const-string v1, "LTAIY2hpo25odEfz"

    const-string v2, "SClF6UIQ1dmQx7rY1nKov8CoGwIgpG"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    const/16 v2, 0x3a98

    .line 172
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setConnectionTimeout(I)V

    .line 173
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setSocketTimeout(I)V

    const/4 v2, 0x5

    .line 174
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxConcurrentRequest(I)V

    const/4 v2, 0x2

    .line 175
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxErrorRetry(I)V

    .line 176
    new-instance v2, Lcom/alibaba/sdk/android/oss/OSSClient;

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    .line 177
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->disableLog()V

    .line 178
    new-instance p1, Lcom/powervision/oss/service/OssService;

    invoke-direct {p1, v2, p2}, Lcom/powervision/oss/service/OssService;-><init>(Lcom/alibaba/sdk/android/oss/OSS;Ljava/lang/String;)V

    return-object p1
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->initNewWorkCallback()V

    .line 121
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->initTopViews()V

    .line 122
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->initFlightLogListLayouts()V

    return-void
.end method

.method public synthetic lambda$onDownloadComplete$1$FlightLogActivity(Z)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mDownLoadDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 526
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    const-string v1, " onDownloadComplete  \u4e0b\u8f7d\u5b8c\u6210\u3002\u3002\u3002 "

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 528
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    const-string v0, "  -------onDownloadComplete------hasData------ "

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->loadLocalFlightLogs(Landroid/content/Context;)V

    goto :goto_0

    .line 531
    :cond_1
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    const-string v0, " onDownloadComplete  else ..."

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->loadLocalFlightLogs(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onUploadComplete$0$FlightLogActivity(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 510
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    const-string v0, " onUploadComplete  \u4e0a\u4f20\u5b8c\u6210\u3002\u3002\u3002\u3002\u3002\u5f00\u59cb\u6267\u884c\u4e0b\u8f7d \u3002 "

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-static {p0}, Lcom/powervision/base/utils/CacheUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/CacheUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/utils/CacheUtil;->getFlightLogFilePath()Ljava/lang/String;

    move-result-object p1

    .line 512
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mService:Lcom/powervision/oss/service/OssService;

    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mDownLoadDataList:Ljava/util/List;

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/powervision/oss/service/OssService;->downLoadFile(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    const-string v0, " onUploadComplete  else ..\u4e0a\u4f20\u5b8c\u6210.  "

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->onSyncResult()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->onClickBack()V

    return-void
.end method

.method public onCleanAllCsvFile()V
    .locals 1

    .line 565
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->cleanAllFiles()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 184
    sget v0, Lcn/powervision/flightlog/R$id;->flight_close_bt:I

    if-ne p1, v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->onClickBack()V

    goto :goto_0

    .line 186
    :cond_0
    sget v0, Lcn/powervision/flightlog/R$id;->flight_sync_bt:I

    if-ne p1, v0, :cond_1

    .line 187
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->alertSyncDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCsvDatasLoadOver()V
    .locals 3

    const-string v0, "get_c_name"

    const-string v1, "...onCsvDatasLoadOver()...."

    .line 279
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getPagerItemDataList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    .line 282
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCsvDatasLoadOver()...pagerListDatas.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->initPager()V

    .line 284
    iget v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mPagerCurrentIndex:I

    invoke-direct {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->initBottomViewData(I)V

    .line 285
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mFlightLogEmptyView:Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->setVisibility(I)V

    .line 287
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->getAllCitiesName()V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mFlightLogEmptyView:Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->setVisibility(I)V

    .line 291
    :goto_0
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->onSyncResult()V

    .line 292
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->hideloadingDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 677
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->instance:Lcom/powervision/base/model/flightlog/FlightLogManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0, v1}, Lcom/powervision/base/model/flightlog/FlightLogManager;->setOnCvsDatasLoadOverListener(Lcom/powervision/base/model/flightlog/FlightLogManager$OnCsvDatasLoadOverListener;)V

    .line 680
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mService:Lcom/powervision/oss/service/OssService;

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {v0, v1}, Lcom/powervision/oss/service/OssService;->setOnUploadDownLoadListener(Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;)V

    .line 683
    :cond_1
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->syncFlightLogFragment:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    if-eqz v0, :cond_2

    .line 684
    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->setOnGetServerResultListener(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnGetServerResultListener;)V

    .line 685
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->syncFlightLogFragment:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->setOnCleanAllCsvListener(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$OnCleanAllCsvListener;)V

    .line 687
    :cond_2
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_3

    .line 688
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 690
    :cond_3
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 691
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 693
    :cond_4
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDownloadComplete(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 522
    new-instance p2, Lcn/powervision/flightlog/activity/-$$Lambda$FlightLogActivity$6AAwXOxaxsqF71hIWEgmgHkNR10;

    invoke-direct {p2, p0, p1}, Lcn/powervision/flightlog/activity/-$$Lambda$FlightLogActivity$6AAwXOxaxsqF71hIWEgmgHkNR10;-><init>(Lcn/powervision/flightlog/activity/FlightLogActivity;Z)V

    invoke-virtual {p0, p2}, Lcn/powervision/flightlog/activity/FlightLogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGetServerResult(Lcom/powervision/oss/bean/FlightLogUserAllData;)V
    .locals 3

    .line 386
    invoke-virtual {p1}, Lcom/powervision/oss/bean/FlightLogUserAllData;->getFlyLogs()Ljava/util/List;

    move-result-object p1

    .line 387
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " =onGetServerResult   \u670d\u52a1\u5668\u6570\u636e \u4e3a==== flyLogs\u3002size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 390
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 391
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;

    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getLogDatalist()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->uplaodCsvFiles(Ljava/util/List;)V

    goto :goto_0

    .line 393
    :cond_0
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->onSyncResult()V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->pagerListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 401
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->downloadCsvFiles(Ljava/util/List;)V

    goto :goto_0

    .line 406
    :cond_2
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->strippedUpDownData(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;II)V
    .locals 1

    .line 270
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->Tag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...onItemClick...position ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "list_pos"

    .line 272
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "pager_pos"

    .line 273
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onShowListClick(I)V
    .locals 1

    .line 213
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->initBottomViewData(I)V

    .line 214
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mLogListRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1}, Lcom/powervision/base/utils/AnimUtils;->doHideOrShowBottomView(Landroid/view/View;)V

    .line 215
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mBackBt:Landroid/widget/ImageView;

    sget v0, Lcn/powervision/flightlog/R$mipmap;->flightlog_white_close:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onUploadComplete(Z)V
    .locals 1

    .line 508
    new-instance v0, Lcn/powervision/flightlog/activity/-$$Lambda$FlightLogActivity$Oxjt1D9WEfTbYv5Adc8z-MWpxZE;

    invoke-direct {v0, p0, p1}, Lcn/powervision/flightlog/activity/-$$Lambda$FlightLogActivity$Oxjt1D9WEfTbYv5Adc8z-MWpxZE;-><init>(Lcn/powervision/flightlog/activity/FlightLogActivity;Z)V

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 149
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 150
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mSyncBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showloadingDialog()V
    .locals 1

    .line 660
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 663
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 664
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    :cond_1
    return-void
.end method
