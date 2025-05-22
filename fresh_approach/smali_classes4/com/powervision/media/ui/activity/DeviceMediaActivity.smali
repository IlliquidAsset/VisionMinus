.class public Lcom/powervision/media/ui/activity/DeviceMediaActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "DeviceMediaActivity.java"

# interfaces
.implements Lcom/powervision/media/ui/view/IDeviceMediaView;
.implements Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/activity/DeviceMediaActivity$DeviceMediaHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;",
        "Lcom/powervision/media/model/impl/DeviceMediaModel;",
        ">;",
        "Lcom/powervision/media/ui/view/IDeviceMediaView;",
        "Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;",
        "Landroid/widget/RadioGroup$OnCheckedChangeListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;"
    }
.end annotation


# instance fields
.field private isSelect:Z

.field private isSwitch:Z

.field private mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

.field private mBack:Landroid/widget/ImageView;

.field private mBlurImage:Landroid/widget/ImageView;

.field private mCustomProgress:Lcom/powervision/base/views/CustomProgress;

.field private mDelete:Landroid/widget/ImageView;

.field private mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/powervision/media/widgets/DownloadDialog;

.field private mDownload:Landroid/widget/ImageView;

.field private mFirstTitle:Landroid/widget/TextView;

.field private mMediaHandler:Lcom/powervision/media/ui/activity/DeviceMediaActivity$DeviceMediaHandler;

.field private mMediaType:I

.field private mPageCount:I

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

.field private mSecondTitle:Landroid/widget/TextView;

.field private mSelect:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleSelectLayout:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x2

    .line 81
    iput v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    .line 93
    new-instance v0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$DeviceMediaHandler;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity$DeviceMediaHandler;-><init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaHandler:Lcom/powervision/media/ui/activity/DeviceMediaActivity$DeviceMediaHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/activity/DeviceMediaActivity;I)Ljava/util/ArrayList;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getData(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)Lcom/powervision/media/widgets/DownloadDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/powervision/media/ui/activity/DeviceMediaActivity;Lcom/powervision/media/widgets/DownloadDialog;)Lcom/powervision/media/widgets/DownloadDialog;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method private dismissProgress()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->dismiss()V

    :cond_0
    return-void
.end method

.method private doDownload()V
    .locals 2

    .line 486
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 487
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity$2;-><init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)V

    .line 488
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private getData(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-virtual {v0, p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->getListByType(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private initAdapter()V
    .locals 5

    .line 338
    new-instance v0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    iget v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-direct {p0, v1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getData(I)Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->isSelect:Z

    iget-object v3, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v3, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iget v4, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-virtual {v3, v4}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->getOriginListByType(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;-><init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    .line 339
    iget-object v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->setLRecyclerView(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)V

    .line 340
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->setAdapter(Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;)V

    return-void
.end method

.method private initRecycler()V
    .locals 2

    .line 158
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 159
    new-instance v1, Lcom/powervision/media/ui/activity/DeviceMediaActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity$1;-><init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 175
    iget-object v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {v1, v0}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private showProgress(Ljava/lang/String;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    invoke-static {p0, p1, v0, v1}, Lcom/powervision/base/views/CustomProgress;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/powervision/base/views/CustomProgress;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CustomProgress;->setMessage(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {p1}, Lcom/powervision/base/views/CustomProgress;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 189
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {p1}, Lcom/powervision/base/views/CustomProgress;->show()V

    :cond_1
    return-void
.end method

.method private switchSDAndRam()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mSecondTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$string;->AP03_CameraSetting_54:I

    invoke-virtual {p0, v1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result v0

    if-lez v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->switchToSD()V

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->switchToRAM()V

    :cond_1
    :goto_0
    return-void
.end method

.method private tabClick()V
    .locals 4

    .line 395
    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->isSwitch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {v0}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->startRefresh()V

    .line 397
    iput-boolean v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->isSwitch:Z

    goto :goto_1

    .line 399
    :cond_0
    iget v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getData(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 401
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {v0}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->startRefresh()V

    goto :goto_1

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v2, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iget v3, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-virtual {v2, v3}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->getOriginListByType(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 404
    iget-object v3, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-virtual {v3, v0, v2}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->setData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 405
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPageCount:I

    .line 406
    iget-object v2, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {v2, v0, v1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->stopRefresh(IZ)V

    :goto_1
    return-void
.end method


# virtual methods
.method public cancelDownUpdate()V
    .locals 1

    .line 276
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->dismissProgress()V

    .line 277
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public cancelSaveData()V
    .locals 0

    return-void
.end method

.method public childDeleteSuccess(Landroid/util/SparseArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 534
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iget v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-virtual {v0, p1, v1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->generalNewListAfterDelete(II)V

    return-void
.end method

.method public childDownloadSuccess()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x8
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->notifyDataSetChanged()V

    .line 540
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {v0}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->notifyDataSetChanged()V

    return-void
.end method

.method public deleteError()V
    .locals 0

    return-void
.end method

.method public deleteSuccess()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    iget v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-direct {p0, v1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getData(I)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v2, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iget v3, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-virtual {v2, v3}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->getOriginListByType(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->setData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 310
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->clearSelects()V

    .line 311
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    iget v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPageCount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->stopRefresh(IZ)V

    return-void
.end method

.method protected getLayoutRes()I
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 110
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->systemFullScreen()V

    .line 111
    sget v0, Lcom/powervision/media/R$layout;->media_device_media_activity:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->initRecycler()V

    .line 152
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->initAdapter()V

    .line 154
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->requestCurrentState()V

    return-void
.end method

.method protected initEvent()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {v0, p0}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->setRefreshLoadListener(Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;)V

    .line 137
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mSelect:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mFirstTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mSecondTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mBlurImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-virtual {v0, p0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 116
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 117
    sget p1, Lcom/powervision/media/R$id;->media_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mBack:Landroid/widget/ImageView;

    .line 118
    sget p1, Lcom/powervision/media/R$id;->media_download:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDownload:Landroid/widget/ImageView;

    .line 119
    sget p1, Lcom/powervision/media/R$id;->media_delete:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDelete:Landroid/widget/ImageView;

    .line 120
    sget p1, Lcom/powervision/media/R$id;->media_select:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mSelect:Landroid/widget/TextView;

    .line 121
    sget p1, Lcom/powervision/media/R$id;->media_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mTitle:Landroid/widget/TextView;

    .line 122
    sget p1, Lcom/powervision/media/R$id;->title_first:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mFirstTitle:Landroid/widget/TextView;

    .line 123
    sget p1, Lcom/powervision/media/R$id;->title_second:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mSecondTitle:Landroid/widget/TextView;

    .line 124
    sget p1, Lcom/powervision/media/R$id;->media_radio_group:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 125
    sget p1, Lcom/powervision/media/R$id;->media_title_select:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mTitleSelectLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 126
    sget p1, Lcom/powervision/media/R$id;->media_blur_image:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mBlurImage:Landroid/widget/ImageView;

    .line 127
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    sget v0, Lcom/powervision/media/R$id;->radio_image:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 130
    sget p1, Lcom/powervision/media/R$id;->refresh_load_recycler:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    .line 131
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->initEvent()V

    return-void
.end method

.method public synthetic lambda$null$6$DeviceMediaActivity()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDeleteList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->deleteMedia(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public synthetic lambda$onClick$7$DeviceMediaActivity(Landroid/view/View;)V
    .locals 3

    .line 463
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$bHIjCru5RCT1SSzTV_hJPSAOM2s;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$bHIjCru5RCT1SSzTV_hJPSAOM2s;-><init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$onLoadMore$5$DeviceMediaActivity()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iget v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPageCount:I

    iget v2, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->requestData(II)V

    return-void
.end method

.method public synthetic lambda$onRefresh$4$DeviceMediaActivity()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iget v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPageCount:I

    iget v2, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->requestData(II)V

    return-void
.end method

.method public synthetic lambda$switchToRAMMode$1$DeviceMediaActivity()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/media/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {p0, v1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {v0}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->startRefresh()V

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->isSwitch:Z

    return-void
.end method

.method public synthetic lambda$switchToSDMode$2$DeviceMediaActivity()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/media/R$string;->AP03_CameraSetting_54:I

    invoke-virtual {p0, v1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {v0}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->startRefresh()V

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->isSwitch:Z

    return-void
.end method

.method public synthetic lambda$updateCurrentState$0$DeviceMediaActivity(I)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mTitle:Landroid/widget/TextView;

    if-nez p1, :cond_0

    sget p1, Lcom/powervision/media/R$string;->AP03_CameraSetting_54:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/powervision/media/R$string;->AP03_DV_CameraSetting_55:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->startRefresh()V

    return-void
.end method

.method public synthetic lambda$updateDownloadInfo$3$DeviceMediaActivity(II)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/DownloadDialog;->setOrder(I)V

    .line 297
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0, p2}, Lcom/powervision/media/widgets/DownloadDialog;->setPercent(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/DownloadDialog;->dismiss()V

    .line 300
    sget p1, Lcom/powervision/media/R$string;->AP03_Upgrade_50:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadPreviewImage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public loadStuckWork()V
    .locals 0

    return-void
.end method

.method public notifyAdapter(Lcom/powervision/localhttp/entity/FileInfo;)V
    .locals 3

    .line 213
    iget v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getData(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-string v0, "media"

    .line 214
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

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {v0, p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyData()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    iget v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-direct {p0, v1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getData(I)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v2, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    iget v3, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    invoke-virtual {v2, v3}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->getOriginListByType(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->setData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 208
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    iget v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPageCount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->stopRefresh(IZ)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 379
    sget p1, Lcom/powervision/media/R$id;->radio_video:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x3

    .line 380
    iput p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    .line 381
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->tabClick()V

    goto :goto_0

    .line 382
    :cond_0
    sget p1, Lcom/powervision/media/R$id;->radio_image:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    .line 383
    iput p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    .line 384
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->tabClick()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 386
    iput p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaType:I

    .line 387
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->tabClick()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 414
    sget v0, Lcom/powervision/media/R$id;->media_back:I

    if-ne p1, v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->finish()V

    goto/16 :goto_4

    .line 416
    :cond_0
    sget v0, Lcom/powervision/media/R$id;->media_select:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_4

    .line 417
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_21:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mSelect:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->isSelect:Z

    .line 418
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mSelect:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_20:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_21:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 419
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDelete:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->isSelect:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDownload:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->isSelect:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->isSelect:Z

    invoke-virtual {p1, v0}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->setSelectStatus(Z)V

    .line 423
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->notifyDataSetChanged()V

    goto/16 :goto_4

    .line 424
    :cond_4
    sget v0, Lcom/powervision/media/R$id;->title_first:I

    if-ne p1, v0, :cond_5

    .line 425
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mTitleSelectLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 426
    :cond_5
    sget v0, Lcom/powervision/media/R$id;->title_second:I

    if-ne p1, v0, :cond_6

    .line 427
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->switchSDAndRam()V

    .line 428
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mTitleSelectLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 429
    :cond_6
    sget v0, Lcom/powervision/media/R$id;->media_title:I

    if-ne p1, v0, :cond_8

    .line 430
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mTitleSelectLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 431
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mFirstTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$string;->AP03_CameraSetting_54:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 433
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mSecondTitle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/media/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 435
    :cond_7
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mSecondTitle:Landroid/widget/TextView;

    sget v0, Lcom/powervision/media/R$string;->AP03_CameraSetting_54:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :goto_3
    sget p1, Lcom/powervision/media/R$mipmap;->blurring_view:I

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 439
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 440
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/powervision/base/utils/BlurTransformation;

    const/16 v1, 0xf

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/utils/BlurTransformation;-><init>(II)V

    .line 441
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$mipmap;->blurring_view:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mBlurImage:Landroid/widget/ImageView;

    .line 442
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_4

    .line 443
    :cond_8
    sget v0, Lcom/powervision/media/R$id;->media_download:I

    if-ne p1, v0, :cond_a

    .line 444
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_9

    .line 445
    sget p1, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 448
    :cond_9
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->doDownload()V

    goto :goto_4

    .line 449
    :cond_a
    sget v0, Lcom/powervision/media/R$id;->media_delete:I

    if-ne p1, v0, :cond_e

    .line 450
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_b

    .line 451
    sget p1, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 454
    :cond_b
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-virtual {p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->getSelectList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDeleteList:Ljava/util/ArrayList;

    .line 455
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_c

    .line 457
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_193:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto :goto_4

    .line 458
    :cond_c
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_d

    .line 459
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_206:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto :goto_4

    .line 462
    :cond_d
    sget p1, Lcom/powervision/media/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p1, Lcom/powervision/media/R$string;->AP03_MediaLib_16:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_97:I

    .line 463
    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_20:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$Gv5VnD_QKEU0xHwSyw8R9c7sUgA;

    invoke-direct {v5, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$Gv5VnD_QKEU0xHwSyw8R9c7sUgA;-><init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)V

    const/4 v6, 0x0

    move-object v0, p0

    .line 462
    invoke-static/range {v0 .. v6}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    :cond_e
    :goto_4
    return-void
.end method

.method public onCloseCallBack()V
    .locals 1

    .line 289
    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_58:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->showProgress(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->release()V

    .line 546
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 547
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onLoadMore()V
    .locals 4

    .line 363
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    sget v0, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    iget v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPageCount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->stopRefresh(IZ)V

    return-void

    .line 368
    :cond_0
    iget v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPageCount:I

    .line 369
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$eB3y8dNDPJhGvlCSWx9bF9SEROE;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$eB3y8dNDPJhGvlCSWx9bF9SEROE;-><init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPinnedClick(I)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->notifyGroupSelectStatus(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 4

    const/4 v0, 0x1

    .line 348
    iput v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPageCount:I

    .line 349
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    sget v0, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    iget v1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mPageCount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->stopRefresh(IZ)V

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaHandler:Lcom/powervision/media/ui/activity/DeviceMediaActivity$DeviceMediaHandler;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$Lo2OQRm5h3lAnoXYsqFCLP6DoEE;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$Lo2OQRm5h3lAnoXYsqFCLP6DoEE;-><init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/media/ui/activity/DeviceMediaActivity$DeviceMediaHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mAdapter:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->clearSelects()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 528
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

.method public saveData()V
    .locals 0

    return-void
.end method

.method public saveOrCancelFail()V
    .locals 0

    return-void
.end method

.method public switchToRAMMode()V
    .locals 1

    .line 235
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$NajW_UhIM8jIHKjjnMciK8nDDDE;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$NajW_UhIM8jIHKjjnMciK8nDDDE;-><init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchToSDMode()V
    .locals 1

    .line 244
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$i3vZP5DrV3pbA-rDm1sm2BtwmCA;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$i3vZP5DrV3pbA-rDm1sm2BtwmCA;-><init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCurrentState(I)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mMediaHandler:Lcom/powervision/media/ui/activity/DeviceMediaActivity$DeviceMediaHandler;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$qzNSXz3Z9kR57bhzNJjdo1Y975c;

    invoke-direct {v1, p0, p1}, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$qzNSXz3Z9kR57bhzNJjdo1Y975c;-><init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/media/ui/activity/DeviceMediaActivity$DeviceMediaHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateDownError()V
    .locals 2

    .line 253
    sget v0, Lcom/powervision/media/R$string;->AP03_DV_Msg_17:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    sget v1, Lcom/powervision/media/R$string;->AP03_DV_Msg_17:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/DownloadDialog;->setContent(I)V

    return-void
.end method

.method public updateDownloadInfo(II)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$k_pWvbFu92Zx_wS_UrNIJP_jjBQ;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/media/ui/activity/-$$Lambda$DeviceMediaActivity$k_pWvbFu92Zx_wS_UrNIJP_jjBQ;-><init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;II)V

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
