.class public Lcom/powervision/media/ui/activity/MediaLibActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "MediaLibActivity.java"

# interfaces
.implements Lcom/powervision/media/ui/view/IMediaLibView;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/powervision/media/ui/adapter/MediaLibAdapter$BtnEnableListener;
.implements Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/media/presenter/impl/MediaLibPresenter;",
        "Lcom/powervision/media/model/impl/MediaLibModel;",
        ">;",
        "Lcom/powervision/media/ui/view/IMediaLibView;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/powervision/media/ui/adapter/MediaLibAdapter$BtnEnableListener;",
        "Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;",
        "Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

.field private mBack:Landroid/widget/ImageView;

.field private mBlurImage:Landroid/widget/ImageView;

.field private mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCollection:Landroid/widget/ImageView;

.field private mDelete:Landroid/widget/ImageView;

.field private mDialog:Lcom/powervision/media/widgets/DownloadDialog;

.field private mDownload:Landroid/widget/ImageView;

.field private mEmptyView:Landroid/widget/LinearLayout;

.field private mFirstTitle:Landroid/widget/TextView;

.field private mHorManager:Lme/jingbin/library/stickyview/StickyGridLayoutManager;

.field private mIsFront:Z

.field private mIsSelect:Z

.field private mLibRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mLocation:I

.field private mMediaType:I

.field private mProgress:Lcom/powervision/base/views/CustomProgress;

.field private mRecyclerView:Lme/jingbin/library/ByRecyclerView;

.field private mSecondTitle:Landroid/widget/TextView;

.field private mSelect:Landroid/widget/TextView;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mThirdTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleSelectLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mVerManager:Lme/jingbin/library/stickyview/StickyGridLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 99
    iput v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    .line 100
    iput v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mLocation:I

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lme/jingbin/library/ByRecyclerView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lme/jingbin/library/stickyview/StickyGridLayoutManager;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mHorManager:Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/media/ui/activity/MediaLibActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/media/ui/adapter/MediaLibAdapter;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lme/jingbin/library/stickyview/StickyGridLayoutManager;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mVerManager:Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/media/ui/activity/MediaLibActivity;)Landroid/widget/TextView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/media/ui/activity/MediaLibActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mCollection:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/media/ui/activity/MediaLibActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->dismissProgress()V

    return-void
.end method

.method static synthetic access$800(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/media/widgets/DownloadDialog;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    return-object p0
.end method

.method private dismissProgress()V
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->dismiss()V

    :cond_0
    return-void
.end method

.method private doCollectFun()V
    .locals 2

    .line 723
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$8_FphpyngrY0G39mYl_fqu1kLMs;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$8_FphpyngrY0G39mYl_fqu1kLMs;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 728
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 729
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/media/ui/activity/MediaLibActivity$4;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/MediaLibActivity$4;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    .line 730
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private doDeleteFun()V
    .locals 2

    .line 752
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$oEU-EXy05t11drKXksMKGNKjsvM;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$oEU-EXy05t11drKXksMKGNKjsvM;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 757
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 758
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/media/ui/activity/MediaLibActivity$5;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/MediaLibActivity$5;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    .line 759
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private doDownload()V
    .locals 2

    .line 781
    new-instance v0, Lcom/powervision/media/widgets/DownloadDialog;

    invoke-direct {v0, p0, p0}, Lcom/powervision/media/widgets/DownloadDialog;-><init>(Landroid/content/Context;Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    const/4 v1, 0x0

    .line 782
    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/DownloadDialog;->setCloseIsShow(Z)V

    .line 783
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->showNoBar()V

    .line 786
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 787
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NhJxYIICKyJFLXYvKjv_58VBHbM;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NhJxYIICKyJFLXYvKjv_58VBHbM;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    .line 788
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 795
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 796
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/media/ui/activity/MediaLibActivity$6;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/MediaLibActivity$6;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    .line 797
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getListData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private initAdapter()V
    .locals 4

    .line 399
    new-instance v0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getData()Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    iget-object v3, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v3, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-virtual {v3}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getOriginListData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    .line 400
    invoke-virtual {v0, p0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->setBtnEnableListener(Lcom/powervision/media/ui/adapter/MediaLibAdapter$BtnEnableListener;)V

    .line 402
    new-instance v0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;-><init>(Landroid/content/Context;IILme/jingbin/library/adapter/BaseByRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mHorManager:Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    .line 403
    new-instance v0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, v3, v1}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;-><init>(Landroid/content/Context;IILme/jingbin/library/adapter/BaseByRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mVerManager:Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    .line 405
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 406
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->workHorVerConfigure(Landroid/content/res/Configuration;)V

    .line 408
    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    iget-object v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-virtual {v1, v2}, Lme/jingbin/library/ByRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 410
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->workHorVerSpanSize(Landroid/content/res/Configuration;)V

    .line 412
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->showHideEmpty()V

    return-void
.end method

.method private initTabLayout()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$string;->AP03_MediaLib_1:I

    invoke-virtual {p0, v2}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 232
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$string;->AP03_MediaLib_2:I

    invoke-virtual {p0, v2}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 233
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$string;->AP03_MediaLib_3:I

    invoke-virtual {p0, v2}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 234
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$string;->AP03_MediaLib_4:I

    invoke-virtual {p0, v2}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method public static synthetic lambda$hMUuBDv02J0H1zBmuaMSmG3qWEo(Lcom/powervision/media/ui/activity/MediaLibActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->dismissProgress()V

    return-void
.end method

.method private selectClick()V
    .locals 5

    .line 593
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSelect:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_20:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_21:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 594
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSelect:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$color;->blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    .line 595
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 594
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 596
    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    sget v3, Lcom/powervision/media/R$string;->App_MediaLib_17:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 598
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 599
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_3

    .line 601
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result v0

    if-gtz v0, :cond_3

    .line 603
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    sget v3, Lcom/powervision/media/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 604
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 605
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_3

    .line 607
    :cond_3
    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mLocation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 608
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    sget v4, Lcom/powervision/media/R$string;->AP03_MediaLib_0:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 610
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    sget v4, Lcom/powervision/media/R$string;->AP03_DV_CameraSetting_54:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 612
    :cond_5
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    sget v4, Lcom/powervision/media/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 614
    :goto_2
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    sget v4, Lcom/powervision/media/R$mipmap;->icon_pack_down:I

    .line 615
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 614
    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 616
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 619
    :goto_3
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-boolean v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mCollection:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/media/R$mipmap;->media_save_n:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 621
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mCollection:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 622
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 623
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 625
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    iget-boolean v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->setSelect(Z)V

    return-void
.end method

.method private selectLocation(Ljava/lang/String;)V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitleSelectLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 701
    :cond_0
    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_0:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 702
    iput v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mLocation:I

    goto :goto_0

    .line 703
    :cond_1
    sget v0, Lcom/powervision/media/R$string;->AP03_DV_CameraSetting_54:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 704
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 707
    iput v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mLocation:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    .line 709
    iput v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mLocation:I

    .line 711
    :goto_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    if-eqz p1, :cond_4

    .line 714
    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    invoke-virtual {p1, v0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->setCurrentMediaType(I)V

    .line 716
    :cond_4
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->tabClick()V

    return-void
.end method

.method private showHideEmpty()V
    .locals 2

    .line 486
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mEmptyView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mEmptyView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showProgress(Ljava/lang/String;)V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 885
    invoke-static {p0, p1, v0, v1}, Lcom/powervision/base/views/CustomProgress;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/powervision/base/views/CustomProgress;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CustomProgress;->setMessage(Ljava/lang/CharSequence;)V

    .line 888
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {p1}, Lcom/powervision/base/views/CustomProgress;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 889
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {p1}, Lcom/powervision/base/views/CustomProgress;->show()V

    :cond_1
    return-void
.end method

.method private tabClick()V
    .locals 3

    .line 497
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    sget v0, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 502
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->showProgress(Ljava/lang/String;)V

    const-string v0, "media--"

    .line 503
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "requestData5 \u8fd9\u4e2a\u8981\u6dfb\u52a0\u4e00\u4e2a\u52a0\u8f7dloading"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mLocation:I

    iget v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->requestData(II)V

    return-void
.end method

.method private workCancelTitleShow()V
    .locals 2

    .line 657
    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_20:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSelect:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$JVGEZ1ExA9sY2ZcFM9gEEqTYdPo;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$JVGEZ1ExA9sY2ZcFM9gEEqTYdPo;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 671
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 672
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/media/ui/activity/MediaLibActivity$3;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/MediaLibActivity$3;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    .line 673
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method private workHorVerConfigure(Landroid/content/res/Configuration;)V
    .locals 1

    .line 419
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 421
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mHorManager:Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    invoke-virtual {p1, v0}, Lme/jingbin/library/ByRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mVerManager:Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    invoke-virtual {p1, v0}, Lme/jingbin/library/ByRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_0
    return-void
.end method

.method private workHorVerSpanSize(Landroid/content/res/Configuration;)V
    .locals 1

    .line 432
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 434
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mHorManager:Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    if-eqz v0, :cond_1

    .line 435
    new-instance v0, Lcom/powervision/media/ui/activity/MediaLibActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/MediaLibActivity$1;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    invoke-virtual {p1, v0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mVerManager:Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    if-eqz v0, :cond_1

    .line 459
    new-instance v0, Lcom/powervision/media/ui/activity/MediaLibActivity$2;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/MediaLibActivity$2;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    invoke-virtual {p1, v0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public btnEnable(ZI)V
    .locals 2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 637
    :goto_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mCollection:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    sget v1, Lcom/powervision/media/R$mipmap;->media_save_s:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/powervision/media/R$mipmap;->media_save_n:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 639
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mCollection:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_2

    :cond_2
    const-string p1, "0"

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 640
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mCollection:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 641
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDownload:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 642
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-nez p2, :cond_3

    .line 644
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mCollection:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/media/R$mipmap;->media_save_n:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 645
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_20:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSelect:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 646
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    sget p2, Lcom/powervision/media/R$string;->App_MediaLib_17:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 649
    :cond_3
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->workCancelTitleShow()V

    :cond_4
    :goto_3
    return-void
.end method

.method public cancelDownUpdate()V
    .locals 1

    .line 304
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->dismissProgress()V

    .line 305
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public cancelSaveData()V
    .locals 3

    .line 285
    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mLocation:I

    iget v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->requestData(II)V

    :cond_0
    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    .line 289
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->selectClick()V

    .line 291
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->dismissProgress()V

    return-void
.end method

.method public childDeleteSuccess(Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x9
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "media---\u9884\u89c8\u5220\u9664\u901a\u77e5\u5217\u8868"

    .line 843
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 846
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getListData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 847
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getOriginListData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 848
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-virtual {p1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public childDownloadSuccess()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x8
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public deleteBurstNotify(Landroid/util/SparseArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf36
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 859
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mLocation:I

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    invoke-virtual {p1, v0, v1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->requestData(II)V

    return-void
.end method

.method public deleteError()V
    .locals 1

    .line 369
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->dismissProgress()V

    .line 370
    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_34:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void
.end method

.method public deleteSuccess()V
    .locals 1

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    .line 360
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->selectClick()V

    .line 362
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->dismissProgress()V

    .line 363
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->showHideEmpty()V

    return-void
.end method

.method public getHadSelectData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->getSelectList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getLayoutRes()I
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 144
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 146
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 147
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->systemFullScreen()V

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 150
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 152
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 154
    :cond_0
    sget v0, Lcom/powervision/media/R$layout;->media_lib_activity:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 212
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->initTabLayout()V

    .line 213
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    sget v2, Lcom/powervision/media/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    sget v2, Lcom/powervision/media/R$string;->AP03_MediaLib_0:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    sget v2, Lcom/powervision/media/R$mipmap;->icon_pack_down:I

    .line 221
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 220
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 224
    :goto_0
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->initAdapter()V

    return-void
.end method

.method protected initEvent()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSelect:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 199
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mFirstTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSecondTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mThirdTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mBlurImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mCollection:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 160
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 163
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$IUXUuoeB7lk4262K7XSDbdt-6Cs;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$IUXUuoeB7lk4262K7XSDbdt-6Cs;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 175
    :cond_0
    sget p1, Lcom/powervision/media/R$id;->lib_root:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mLibRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 176
    sget p1, Lcom/powervision/media/R$id;->media_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mBack:Landroid/widget/ImageView;

    .line 177
    sget p1, Lcom/powervision/media/R$id;->media_download:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDownload:Landroid/widget/ImageView;

    .line 178
    sget p1, Lcom/powervision/media/R$id;->media_delete:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDelete:Landroid/widget/ImageView;

    .line 179
    sget p1, Lcom/powervision/media/R$id;->media_collection:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mCollection:Landroid/widget/ImageView;

    .line 180
    sget p1, Lcom/powervision/media/R$id;->media_select:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSelect:Landroid/widget/TextView;

    .line 181
    sget p1, Lcom/powervision/media/R$id;->media_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    .line 182
    sget p1, Lcom/powervision/media/R$id;->title_first:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mFirstTitle:Landroid/widget/TextView;

    .line 183
    sget p1, Lcom/powervision/media/R$id;->title_second:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSecondTitle:Landroid/widget/TextView;

    .line 184
    sget p1, Lcom/powervision/media/R$id;->title_third:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mThirdTitle:Landroid/widget/TextView;

    .line 185
    sget p1, Lcom/powervision/media/R$id;->tabLayout:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 186
    sget p1, Lcom/powervision/media/R$id;->media_title_select:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitleSelectLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 187
    sget p1, Lcom/powervision/media/R$id;->media_blur_image:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mBlurImage:Landroid/widget/ImageView;

    .line 188
    sget p1, Lcom/powervision/media/R$id;->refresh_load_recycler:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lme/jingbin/library/ByRecyclerView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    .line 189
    sget p1, Lcom/powervision/media/R$id;->media_bottom:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 190
    sget p1, Lcom/powervision/media/R$id;->empty_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mEmptyView:Landroid/widget/LinearLayout;

    .line 191
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->initEvent()V

    return-void
.end method

.method public synthetic lambda$doCollectFun$4$MediaLibActivity(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-virtual {v1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->getSelectList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->filterSelectListFun(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-virtual {v1, v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getAssertIds(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 727
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic lambda$doDeleteFun$5$MediaLibActivity(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-virtual {v1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->getSelectList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->filterSelectListFun(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-virtual {v1, v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->getAssertIds(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 756
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic lambda$doDownload$6$MediaLibActivity(Ljava/lang/Boolean;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 789
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 790
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-virtual {p1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->getSelectList()Ljava/util/ArrayList;

    move-result-object p1

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    invoke-virtual {v1, p1, v2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->filterSelectListFun(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$initView$0$MediaLibActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 164
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    .line 167
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 168
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    .line 169
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    .line 170
    iget-object v3, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mLibRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v0, v1, v2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setPadding(IIII)V

    .line 172
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onClick$2$MediaLibActivity(Landroid/view/View;)V
    .locals 0

    .line 567
    sget p1, Lcom/powervision/media/R$string;->AP03_MediaLib_77:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->showProgress(Ljava/lang/String;)V

    .line 569
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->doDeleteFun()V

    return-void
.end method

.method public synthetic lambda$onDeviceConnectionChange$7$MediaLibActivity()V
    .locals 1

    .line 940
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 941
    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsFront:Z

    if-nez v0, :cond_0

    .line 942
    const-class v0, Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->startActivity(Ljava/lang/Class;)V

    .line 944
    :cond_0
    sget v0, Lcom/powervision/media/R$string;->AP03_DV_Msg_17:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->finish()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$updateDownloadInfo$1$MediaLibActivity(II)V
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media---down-update-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/DownloadDialog;->setOrder(I)V

    .line 334
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0, p2}, Lcom/powervision/media/widgets/DownloadDialog;->setPercent(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/powervision/media/widgets/DownloadDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 337
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/DownloadDialog;->dismiss()V

    .line 339
    :cond_0
    iget-boolean p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsFront:Z

    if-eqz p1, :cond_1

    .line 340
    sget p1, Lcom/powervision/media/R$string;->AP03_Upgrade_50:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$workCancelTitleShow$3$MediaLibActivity(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->getSelectList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 663
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 664
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget v3, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    invoke-virtual {v0, v2, v3}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->filterSelectListFun(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    .line 668
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 670
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public loadPreviewImage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public loadStuckWork()V
    .locals 1

    .line 312
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$hMUuBDv02J0H1zBmuaMSmG3qWEo;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$hMUuBDv02J0H1zBmuaMSmG3qWEo;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyAdapter(Lcom/powervision/localhttp/entity/MediaLib;I)V
    .locals 4

    .line 258
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-string v0, "media--"

    .line 259
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->notifyItemChanged(I)V

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 267
    iput-boolean v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    .line 268
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->selectClick()V

    :cond_1
    return-void
.end method

.method public notifyData()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "media---notifyData"

    .line 243
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->generalGroupMap()V

    .line 246
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->notifyDataSetChanged()V

    .line 247
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->showHideEmpty()V

    .line 249
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->isCollected()Z

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    invoke-virtual {v1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->getSelectSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->btnEnable(ZI)V

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->dismissProgress()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 510
    sget v0, Lcom/powervision/media/R$id;->media_back:I

    if-ne p1, v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->finish()V

    goto/16 :goto_1

    .line 512
    :cond_0
    sget v0, Lcom/powervision/media/R$id;->media_select:I

    if-ne p1, v0, :cond_1

    .line 513
    iget-boolean p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    .line 514
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->selectClick()V

    goto/16 :goto_1

    .line 515
    :cond_1
    sget v0, Lcom/powervision/media/R$id;->title_first:I

    if-ne p1, v0, :cond_2

    .line 516
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mFirstTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->selectLocation(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 517
    :cond_2
    sget v0, Lcom/powervision/media/R$id;->title_second:I

    if-ne p1, v0, :cond_3

    .line 518
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSecondTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->selectLocation(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 519
    :cond_3
    sget v0, Lcom/powervision/media/R$id;->title_third:I

    if-ne p1, v0, :cond_4

    .line 520
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mThirdTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->selectLocation(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 521
    :cond_4
    sget v0, Lcom/powervision/media/R$id;->media_title:I

    if-ne p1, v0, :cond_7

    .line 522
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitleSelectLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 523
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 524
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mFirstTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_0:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 526
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSecondTitle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/media/R$string;->AP03_CameraSetting_54:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 527
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mThirdTitle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/media/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 528
    :cond_5
    sget v0, Lcom/powervision/media/R$string;->AP03_CameraSetting_54:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 529
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSecondTitle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_0:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 530
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mThirdTitle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/media/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 532
    :cond_6
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mSecondTitle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_0:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 533
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mThirdTitle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/media/R$string;->AP03_DV_CameraSetting_54:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 536
    :goto_0
    sget p1, Lcom/powervision/media/R$mipmap;->blurring_view:I

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 537
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 538
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/powervision/base/utils/BlurTransformation;

    const/16 v1, 0xf

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/utils/BlurTransformation;-><init>(II)V

    .line 539
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$mipmap;->blurring_view:I

    .line 540
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    .line 539
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mBlurImage:Landroid/widget/ImageView;

    .line 541
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_1

    .line 542
    :cond_7
    sget v0, Lcom/powervision/media/R$id;->media_download:I

    if-ne p1, v0, :cond_a

    .line 543
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 548
    :cond_8
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_9

    .line 549
    sget p1, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 552
    :cond_9
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->doDownload()V

    goto :goto_1

    .line 553
    :cond_a
    sget v0, Lcom/powervision/media/R$id;->media_delete:I

    if-ne p1, v0, :cond_d

    .line 554
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 559
    :cond_b
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_c

    .line 560
    sget p1, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 564
    sget p1, Lcom/powervision/media/R$string;->AP03_MediaLib_76:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_97:I

    .line 565
    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_20:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$h2Wo7xwJX0miKnmIikfqE1C2VzA;

    invoke-direct {v5, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$h2Wo7xwJX0miKnmIikfqE1C2VzA;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    const/4 v6, 0x0

    move-object v0, p0

    .line 564
    invoke-static/range {v0 .. v6}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 571
    :cond_d
    sget v0, Lcom/powervision/media/R$id;->media_collection:I

    if-ne p1, v0, :cond_10

    .line 572
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 577
    :cond_e
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_f

    .line 578
    sget p1, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    :cond_f
    const/4 p1, 0x0

    .line 582
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->showProgress(Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->doCollectFun()V

    :cond_10
    :goto_1
    return-void
.end method

.method public onCloseCallBack()V
    .locals 1

    .line 317
    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_58:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->showProgress(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 916
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "media----onConfigurationChanged"

    .line 917
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->workHorVerConfigure(Landroid/content/res/Configuration;)V

    .line 928
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->workHorVerSpanSize(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 953
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 954
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->cancelDown()V

    .line 957
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 958
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 959
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 960
    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    .line 963
    :cond_1
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 939
    new-instance p1, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$65h-EzDWqO76gRSLCQ_6UYPldw8;

    invoke-direct {p1, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$65h-EzDWqO76gRSLCQ_6UYPldw8;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 910
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 911
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsFront:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 904
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    const/4 v0, 0x1

    .line 905
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsFront:Z

    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    const-string p1, "media--"

    .line 138
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onTabReselected"

    invoke-interface {p1, v1, v0}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 115
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 116
    iput v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 118
    iput v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    if-ne p1, v2, :cond_2

    const/4 p1, 0x3

    .line 120
    iput p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 122
    iput p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    .line 124
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    if-eqz p1, :cond_3

    .line 126
    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    invoke-virtual {p1, v0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->setCurrentMediaType(I)V

    .line 128
    :cond_3
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->tabClick()V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    const-string p1, "media--"

    .line 133
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onTabUnselected"

    invoke-interface {p1, v1, v0}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 835
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/powervision/media/R$id;->media_blur_image:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public saveCancelSaveNotify()V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf37
    .end annotation

    .line 867
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mLocation:I

    iget v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mMediaType:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->requestData(II)V

    return-void
.end method

.method public saveData()V
    .locals 1

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mIsSelect:Z

    .line 278
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->selectClick()V

    .line 280
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->dismissProgress()V

    return-void
.end method

.method public saveOrCancelFail()V
    .locals 1

    .line 297
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->dismissProgress()V

    .line 298
    sget v0, Lcom/powervision/media/R$string;->APP_function_25:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(I)V

    return-void
.end method

.method public updateDownError()V
    .locals 2

    .line 322
    sget v0, Lcom/powervision/media/R$string;->AP03_DV_Msg_17:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    sget v1, Lcom/powervision/media/R$string;->AP03_DV_Msg_17:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/DownloadDialog;->setContent(I)V

    .line 325
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->cancelDown()V

    return-void
.end method

.method public updateDownloadInfo(II)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NL0RRJKG_A2SvvSh5_tX7jIoNN8;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NL0RRJKG_A2SvvSh5_tX7jIoNN8;-><init>(Lcom/powervision/media/ui/activity/MediaLibActivity;II)V

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
