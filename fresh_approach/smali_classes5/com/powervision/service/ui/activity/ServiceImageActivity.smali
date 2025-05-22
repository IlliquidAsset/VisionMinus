.class public Lcom/powervision/service/ui/activity/ServiceImageActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "ServiceImageActivity.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# static fields
.field public static final IMG_PATH_LOGO:Ljava/lang/String; = "img_path"


# instance fields
.field private final LIMIT:I

.field private mCurrentPage:I

.field private mDataDisposable:Lio/reactivex/disposables/Disposable;

.field private mImageAdapter:Lcom/powervision/service/adapter/ServiceImageAdapter;

.field private mImageArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/service/bean/ImageBean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRefreshFlag:Z

.field private mIvClose:Landroid/widget/ImageView;

.field private mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field private mSrlRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageArray:Ljava/util/List;

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mCurrentPage:I

    const/16 v1, 0x18

    .line 58
    iput v1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->LIMIT:I

    .line 61
    iput-boolean v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mIsRefreshFlag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/service/ui/activity/ServiceImageActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mSrlRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method private getMediaImageList(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/powervision/service/bean/ImageBean;",
            ">;"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x18

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-virtual {p0}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id"

    const-string v3, "title"

    const-string v4, "_data"

    const-string v5, "mime_type"

    const-string v6, "date_added"

    const-string v7, "date_modified"

    const-string v8, "latitude"

    const-string v9, "longitude"

    const-string v10, "_size"

    const-string v11, "width"

    const-string v12, "height"

    .line 266
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v3

    .line 268
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title DESC LIMIT 24 OFFSET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 272
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 274
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->parseImageCursorAndCreateImage(Landroid/database/Cursor;)Lcom/powervision/service/bean/ImageBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    if-eqz p1, :cond_3

    .line 284
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 285
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method private initRecycleView()V
    .locals 3

    .line 110
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 111
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setOrientation(I)V

    .line 112
    iget-object v2, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 116
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    .line 118
    new-instance v0, Lcom/powervision/service/adapter/ServiceImageAdapter;

    sget v1, Lcom/powervision/service/R$layout;->service_item_grid_image:I

    iget-object v2, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageArray:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/powervision/service/adapter/ServiceImageAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageAdapter:Lcom/powervision/service/adapter/ServiceImageAdapter;

    .line 119
    new-instance v1, Lcom/powervision/service/ui/activity/ServiceImageActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/service/ui/activity/ServiceImageActivity$1;-><init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/service/adapter/ServiceImageAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    .line 141
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageAdapter:Lcom/powervision/service/adapter/ServiceImageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static synthetic lambda$RpEmbWWMcGjM_7urtfj-zcvxyvA(Lcom/powervision/service/ui/activity/ServiceImageActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->onLoadData(Ljava/util/List;)V

    return-void
.end method

.method private onLoadData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/service/bean/ImageBean;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-boolean v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mIsRefreshFlag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mIsRefreshFlag:Z

    .line 230
    iget-object v2, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mSrlRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 231
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageAdapter:Lcom/powervision/service/adapter/ServiceImageAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/service/adapter/ServiceImageAdapter;->setEnableLoadMore(Z)V

    .line 233
    :cond_0
    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageAdapter:Lcom/powervision/service/adapter/ServiceImageAdapter;

    invoke-virtual {v0}, Lcom/powervision/service/adapter/ServiceImageAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_3

    .line 237
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x18

    if-ge p1, v0, :cond_2

    goto :goto_0

    .line 242
    :cond_2
    iget-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageAdapter:Lcom/powervision/service/adapter/ServiceImageAdapter;

    invoke-virtual {p1}, Lcom/powervision/service/adapter/ServiceImageAdapter;->loadMoreComplete()V

    goto :goto_1

    .line 239
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageAdapter:Lcom/powervision/service/adapter/ServiceImageAdapter;

    invoke-virtual {p1}, Lcom/powervision/service/adapter/ServiceImageAdapter;->loadMoreEnd()V

    .line 245
    :goto_1
    iget p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mCurrentPage:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mCurrentPage:I

    return-void
.end method

.method private parseImageCursorAndCreateImage(Landroid/database/Cursor;)Lcom/powervision/service/bean/ImageBean;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "_size"

    .line 294
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "_data"

    .line 295
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "_id"

    .line 299
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v5, "title"

    .line 300
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mime_type"

    .line 301
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "date_added"

    .line 302
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v9, "date_modified"

    .line 303
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v11, "width"

    .line 304
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "height"

    .line 305
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "latitude"

    .line 306
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    const-string v15, "longitude"

    .line 307
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-wide/from16 v16, v13

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    .line 308
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 310
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getJpgImagePath()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v18, v0

    .line 311
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v0, v4, v1}, Lcom/powervision/base/utils/FileUtils;->compressAndSaveImage(Ljava/io/File;Ljava/lang/String;I)V

    .line 313
    new-instance v0, Lcom/powervision/service/bean/ImageBean;

    invoke-direct {v0}, Lcom/powervision/service/bean/ImageBean;-><init>()V

    .line 314
    invoke-virtual {v0, v2, v3}, Lcom/powervision/service/bean/ImageBean;->setId(J)V

    .line 315
    invoke-virtual {v0, v5}, Lcom/powervision/service/bean/ImageBean;->setTitle(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, v4}, Lcom/powervision/service/bean/ImageBean;->setOriginalPath(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, v6}, Lcom/powervision/service/bean/ImageBean;->setMimeType(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, v7, v8}, Lcom/powervision/service/bean/ImageBean;->setCreateDate(J)V

    .line 319
    invoke-virtual {v0, v9, v10}, Lcom/powervision/service/bean/ImageBean;->setModifiedDate(J)V

    .line 320
    invoke-virtual {v0, v15}, Lcom/powervision/service/bean/ImageBean;->setThumbnailPath(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v11}, Lcom/powervision/service/bean/ImageBean;->setWidth(I)V

    .line 322
    invoke-virtual {v0, v12}, Lcom/powervision/service/bean/ImageBean;->setHeight(I)V

    move-wide/from16 v1, v16

    .line 323
    invoke-virtual {v0, v1, v2}, Lcom/powervision/service/bean/ImageBean;->setLatitude(D)V

    .line 324
    invoke-virtual {v0, v13, v14}, Lcom/powervision/service/bean/ImageBean;->setLongitude(D)V

    move-wide/from16 v1, v18

    .line 325
    invoke-virtual {v0, v1, v2}, Lcom/powervision/service/bean/ImageBean;->setLength(J)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private requestBasicPermission()V
    .locals 3

    .line 158
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 159
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/service/ui/activity/ServiceImageActivity$2;

    invoke-direct {v1, p0}, Lcom/powervision/service/ui/activity/ServiceImageActivity$2;-><init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;)V

    .line 160
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private workImageData(I)V
    .locals 1

    .line 210
    new-instance v0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$drKEfAY0a4HZVYysjGBoPUTnPhI;

    invoke-direct {v0, p0, p1}, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$drKEfAY0a4HZVYysjGBoPUTnPhI;-><init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;I)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 216
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 217
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$RpEmbWWMcGjM_7urtfj-zcvxyvA;

    invoke-direct {v0, p0}, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$RpEmbWWMcGjM_7urtfj-zcvxyvA;-><init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;)V

    .line 218
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mDataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    sget v0, Lcom/powervision/service/R$layout;->service_activity_image_select:I

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 75
    sget p1, Lcom/powervision/service/R$id;->iv_img_close:I

    invoke-virtual {p0, p1}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mIvClose:Landroid/widget/ImageView;

    .line 76
    sget p1, Lcom/powervision/service/R$id;->srl_refresh_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mSrlRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 77
    sget p1, Lcom/powervision/service/R$id;->rv_img_content:I

    invoke-virtual {p0, p1}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    invoke-direct {p0}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->initRecycleView()V

    .line 81
    invoke-direct {p0}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->requestBasicPermission()V

    return-void
.end method

.method public synthetic lambda$onLoadMoreRequested$3$ServiceImageActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mIsRefreshFlag:Z

    .line 200
    iget v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->workImageData(I)V

    return-void
.end method

.method public synthetic lambda$onRefresh$2$ServiceImageActivity()V
    .locals 1

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mIsRefreshFlag:Z

    .line 191
    iput v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mCurrentPage:I

    .line 192
    invoke-direct {p0, v0}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->workImageData(I)V

    return-void
.end method

.method public synthetic lambda$setListener$0$ServiceImageActivity(Landroid/view/View;)V
    .locals 1

    .line 87
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$setListener$1$ServiceImageActivity(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageArray:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/service/bean/ImageBean;

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/powervision/service/bean/ImageBean;->getThumbnailPath()Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "img_path"

    .line 96
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->finish()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$workImageData$4$ServiceImageActivity(ILio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->getMediaImageList(I)Ljava/util/List;

    move-result-object p1

    .line 212
    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 213
    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 147
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 148
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mDataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mDataDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mDataDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onLoadMoreRequested()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$6MzpqsBA4XxYWQ7ceDkcBskcD28;

    invoke-direct {v1, p0}, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$6MzpqsBA4XxYWQ7ceDkcBskcD28;-><init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onRefresh()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageAdapter:Lcom/powervision/service/adapter/ServiceImageAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/service/adapter/ServiceImageAdapter;->setEnableLoadMore(Z)V

    .line 189
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$eokcacj7HoECLnks1YOx7VK-vKA;

    invoke-direct {v1, p0}, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$eokcacj7HoECLnks1YOx7VK-vKA;-><init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mIvClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$JstujjZQPerNRDqyx1WVh0U4JhY;

    invoke-direct {v1, p0}, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$JstujjZQPerNRDqyx1WVh0U4JhY;-><init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageAdapter:Lcom/powervision/service/adapter/ServiceImageAdapter;

    new-instance v1, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$JJN28ItOBDeoNBa4GGvKJzlfGhw;

    invoke-direct {v1, p0}, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$JJN28ItOBDeoNBa4GGvKJzlfGhw;-><init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/service/adapter/ServiceImageAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mSrlRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 103
    iget-object v0, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mImageAdapter:Lcom/powervision/service/adapter/ServiceImageAdapter;

    iget-object v1, p0, Lcom/powervision/service/ui/activity/ServiceImageActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0, v1}, Lcom/powervision/service/adapter/ServiceImageAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
