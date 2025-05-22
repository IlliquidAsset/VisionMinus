.class public Lcom/lewis/edit/ui/activity/FilterAdjustActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "FilterAdjustActivity.java"

# interfaces
.implements Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;
.implements Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final ADJUST_COLOR_TEM_TYPE:I = 0x3

.field private static final ADJUST_CONTRAST_TYPE:I = 0x1

.field private static final ADJUST_LUM_TYPE:I = 0x0

.field private static final ADJUST_SATURATION_TYPE:I = 0x2

.field private static final BRIGHTNESS_NUM:I = 0x1

.field private static final CONTRAST_NUM:I = 0x2

.field private static final MID_VALUE:I = 0x7f

.field private static final SATURATION_NUM:I = 0x3


# instance fields
.field private isBitmapChange:Z

.field private mAdjustBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mAdjustImage:Landroid/widget/ImageView;

.field private mAdjustName:Landroid/widget/TextView;

.field private mAdjustType:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBottomTitle:Landroid/widget/TextView;

.field private mColorTemIcon:Landroid/widget/ImageView;

.field private mColorTemValue:F

.field private mContrast:F

.field private mContrastIcon:Landroid/widget/ImageView;

.field private mContrastValue:F

.field private mFileName:Ljava/lang/String;

.field private mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

.field private mFilterAdapter:Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;

.field private mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

.field private mGPUImage:Lcom/lewis/edit/widgets/MGPUImage;

.field private mImageUri:Landroid/net/Uri;

.field private mLum:F

.field private mLumIcon:Landroid/widget/ImageView;

.field private mLumValue:F

.field private mRvFilter:Landroidx/recyclerview/widget/RecyclerView;

.field private mSaturation:F

.field private mSaturationIcon:Landroid/widget/ImageView;

.field private mSaturationValue:F

.field private mSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

.field private mTitle:Ljava/lang/String;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    iput v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mLum:F

    iput v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSaturation:F

    const/high16 v0, 0x42fe0000    # 127.0f

    iput v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mContrast:F

    .line 95
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    invoke-direct {v0}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;)Landroid/net/Uri;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mImageUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method private filterDataFun()V
    .locals 10

    .line 222
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lewis/edit/R$array;->edit_filterName:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/edit/R$array;->edit_filterPic:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 233
    new-instance v6, Lcom/lewis/edit/model/entries/FilterBean;

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aget-object v8, v0, v5

    if-nez v5, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    invoke-direct {v6, v7, v8, v9}, Lcom/lewis/edit/model/entries/FilterBean;-><init>(ILjava/lang/String;Z)V

    .line 235
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    new-instance v0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;

    invoke-direct {v0, v3}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilterAdapter:Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;

    .line 240
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mRvFilter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initFilterView()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mRvFilter:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 214
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mRvFilter:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 215
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->filterDataFun()V

    return-void
.end method

.method private initFilters()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_1977:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 201
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_AMARO:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Amaro"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 202
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_LORDKELVIN:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "LordKelvin"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 203
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_INKWELL:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Inkwell"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 204
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_SIERRA:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Sierra"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 205
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_VALENCIA:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Valencia"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 206
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_WALDEN:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Walden"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 207
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_1977:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "1977"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 208
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_TOASTER:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Toaster"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 209
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_EARLYBIRD:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Earlybird"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    return-void
.end method

.method private initSeekBar()V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->reset()V

    .line 192
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    const/4 v1, 0x1

    int-to-float v2, v1

    const/16 v3, -0x64

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setSeekLength(IIIF)V

    .line 193
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    int-to-float v2, v5

    invoke-virtual {v0, v2, v1}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setValue(FZ)V

    return-void
.end method

.method private requestBasicPermission()V
    .locals 2

    .line 347
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 348
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;

    invoke-direct {v1, p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity$1;-><init>(Lcom/lewis/edit/ui/activity/FilterAdjustActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private resetStatus()V
    .locals 2

    .line 440
    iget v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 441
    iput v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mLumValue:F

    .line 442
    iput v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mContrastValue:F

    .line 443
    iput v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSaturationValue:F

    .line 444
    iput v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mColorTemValue:F

    .line 445
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->initSeekBar()V

    .line 447
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 450
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 452
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilterAdapter:Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0, v1}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->setItemSelect(I)V

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mRvFilter:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 459
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBottomTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private saveAdjustUri()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mGPUImage:Lcom/lewis/edit/widgets/MGPUImage;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/lewis/edit/widgets/MGPUImage;->saveToTempPictures(Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V

    return-void
.end method

.method private setOwnFilter(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 323
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    iget-object v0, v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->filters:Ljava/util/List;

    .line 326
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    .line 325
    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createFilterForType(Landroid/content/Context;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p1

    .line 327
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->switchFilterTo(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 328
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 329
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mGPUImage:Lcom/lewis/edit/widgets/MGPUImage;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/MGPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 332
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    return-void
.end method

.method private setTitleToReset()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBottomTitle:Landroid/widget/TextView;

    sget v1, Lcom/lewis/edit/R$string;->App_MediaLib_130:I

    invoke-virtual {p0, v1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setToolBar()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBottomTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/lewis/edit/R$mipmap;->icon_close_b:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 168
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 169
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setupView()V
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mRvFilter:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mType:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 179
    new-instance v0, Lcom/lewis/edit/widgets/MGPUImage;

    invoke-direct {v0, p0}, Lcom/lewis/edit/widgets/MGPUImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mGPUImage:Lcom/lewis/edit/widgets/MGPUImage;

    return-void
.end method

.method private switchFilterTo(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 339
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mGPUImage:Lcom/lewis/edit/widgets/MGPUImage;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/MGPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    :cond_1
    return-void
.end method

.method private workFilterImageSelect(I)V
    .locals 4

    .line 414
    sget v0, Lcom/lewis/edit/R$drawable;->ucrop_icon_lum_true:I

    .line 415
    sget v1, Lcom/lewis/edit/R$drawable;->ucrop_icon_contrast_false:I

    .line 416
    sget v2, Lcom/lewis/edit/R$drawable;->ucrop_icon_saturation_false:I

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    sget v0, Lcom/lewis/edit/R$drawable;->ucrop_icon_lum_false:I

    .line 430
    sget v1, Lcom/lewis/edit/R$drawable;->ucrop_icon_contrast_false:I

    .line 431
    sget v2, Lcom/lewis/edit/R$drawable;->ucrop_icon_saturation_true:I

    goto :goto_0

    .line 424
    :cond_1
    sget v0, Lcom/lewis/edit/R$drawable;->ucrop_icon_lum_false:I

    .line 425
    sget v1, Lcom/lewis/edit/R$drawable;->ucrop_icon_contrast_true:I

    .line 426
    sget v2, Lcom/lewis/edit/R$drawable;->ucrop_icon_saturation_false:I

    goto :goto_0

    .line 419
    :cond_2
    sget v0, Lcom/lewis/edit/R$drawable;->ucrop_icon_lum_true:I

    .line 420
    sget v1, Lcom/lewis/edit/R$drawable;->ucrop_icon_contrast_false:I

    .line 421
    sget v2, Lcom/lewis/edit/R$drawable;->ucrop_icon_saturation_false:I

    .line 434
    :goto_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mLumIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mContrastIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSaturationIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 106
    sget v0, Lcom/lewis/edit/R$layout;->edit_filter_adjust_activity:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 135
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->setToolBar()V

    .line 136
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->setupView()V

    .line 137
    iget v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->initSeekBar()V

    .line 139
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustName:Landroid/widget/TextView;

    sget v1, Lcom/lewis/edit/R$string;->App_MediaLib_102:I

    invoke-virtual {p0, v1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    iget v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mLumValue:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setValue(FZ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->initFilters()V

    .line 143
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->initFilterView()V

    .line 145
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->requestBasicPermission()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 3

    .line 111
    sget p1, Lcom/lewis/edit/R$id;->image_show:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustImage:Landroid/widget/ImageView;

    .line 112
    sget p1, Lcom/lewis/edit/R$id;->adjust_bottom:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 114
    sget p1, Lcom/lewis/edit/R$id;->rv_filter_list:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mRvFilter:Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    sget p1, Lcom/lewis/edit/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 116
    sget p1, Lcom/lewis/edit/R$id;->toolbar_title:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBottomTitle:Landroid/widget/TextView;

    .line 117
    sget p1, Lcom/lewis/edit/R$id;->adjust_seek_bar:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    .line 118
    sget p1, Lcom/lewis/edit/R$id;->iv_lum:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mLumIcon:Landroid/widget/ImageView;

    .line 119
    sget p1, Lcom/lewis/edit/R$id;->iv_contrast:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mContrastIcon:Landroid/widget/ImageView;

    .line 120
    sget p1, Lcom/lewis/edit/R$id;->iv_saturation:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSaturationIcon:Landroid/widget/ImageView;

    .line 121
    sget p1, Lcom/lewis/edit/R$id;->iv_color_tem:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mColorTemIcon:Landroid/widget/ImageView;

    .line 122
    sget p1, Lcom/lewis/edit/R$id;->adjust_name:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustName:Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "image_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fileName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFileName:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mType:I

    .line 128
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mTitle:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mImageUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 381
    sget v0, Lcom/lewis/edit/R$id;->iv_lum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 382
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustName:Landroid/widget/TextView;

    sget v0, Lcom/lewis/edit/R$string;->App_MediaLib_102:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iput v2, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustType:I

    .line 384
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    iget v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mLumValue:F

    invoke-virtual {p1, v0, v2}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setValue(FZ)V

    .line 385
    invoke-direct {p0, v1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->workFilterImageSelect(I)V

    goto :goto_0

    .line 386
    :cond_0
    sget v0, Lcom/lewis/edit/R$id;->iv_contrast:I

    const/4 v3, 0x2

    if-ne p1, v0, :cond_1

    .line 387
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustName:Landroid/widget/TextView;

    sget v0, Lcom/lewis/edit/R$string;->App_MediaLib_103:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iput v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustType:I

    .line 389
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    iget v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mContrastValue:F

    invoke-virtual {p1, v0, v2}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setValue(FZ)V

    .line 390
    invoke-direct {p0, v3}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->workFilterImageSelect(I)V

    goto :goto_0

    .line 391
    :cond_1
    sget v0, Lcom/lewis/edit/R$id;->iv_color_tem:I

    const/4 v1, 0x3

    if-ne p1, v0, :cond_2

    .line 392
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustName:Landroid/widget/TextView;

    sget v0, Lcom/lewis/edit/R$string;->App_MediaLib_105:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iput v1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustType:I

    .line 394
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    iget v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mColorTemValue:F

    invoke-virtual {p1, v0, v2}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setValue(FZ)V

    goto :goto_0

    .line 395
    :cond_2
    sget v0, Lcom/lewis/edit/R$id;->iv_saturation:I

    if-ne p1, v0, :cond_3

    .line 396
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustName:Landroid/widget/TextView;

    sget v0, Lcom/lewis/edit/R$string;->App_MediaLib_104:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iput v3, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustType:I

    .line 398
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    iget v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSaturationValue:F

    invoke-virtual {p1, v0, v2}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setValue(FZ)V

    .line 399
    invoke-direct {p0, v1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->workFilterImageSelect(I)V

    goto :goto_0

    .line 400
    :cond_3
    sget v0, Lcom/lewis/edit/R$id;->toolbar_title:I

    if-ne p1, v0, :cond_4

    .line 401
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBottomTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    sget v0, Lcom/lewis/edit/R$string;->App_MediaLib_130:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 402
    iput-boolean v2, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->isBitmapChange:Z

    .line 403
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->resetStatus()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/lewis/edit/R$menu;->edit_menu_filter_adjust:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 482
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 487
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 466
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBottomTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->setTitleToReset()V

    .line 471
    :goto_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilterAdapter:Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;

    if-eqz p1, :cond_1

    .line 472
    invoke-virtual {p1, p3}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->setItemSelect(I)V

    .line 475
    :cond_1
    invoke-direct {p0, p3}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->setOwnFilter(I)V

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 477
    :goto_1
    iput-boolean p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->isBitmapChange:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->finish()V

    goto :goto_0

    .line 269
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/lewis/edit/R$id;->menu_done:I

    if-ne v0, v1, :cond_2

    .line 270
    iget-boolean v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->isBitmapChange:Z

    if-eqz v0, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->saveAdjustUri()V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->finish()V

    .line 276
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "edit"

    .line 307
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tempUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->setResult(ILandroid/content/Intent;)V

    .line 309
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->finish()V

    return-void
.end method

.method public onSeekChanged(FFLcom/yalantis/ucrop/view/MiddlePopSeekBar;)V
    .locals 2

    .line 245
    iget p2, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustType:I

    const/high16 p3, 0x42fe0000    # 127.0f

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 246
    iput p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mContrastValue:F

    add-float/2addr p1, p3

    .line 247
    iput p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mContrast:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const v1, 0x3fa28f5c    # 1.27f

    if-ne p2, v0, :cond_1

    .line 249
    iput p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSaturationValue:F

    mul-float p1, p1, v1

    add-float/2addr p1, p3

    div-float/2addr p1, p3

    .line 250
    iput p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSaturation:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 252
    iput p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mColorTemValue:F

    goto :goto_0

    .line 254
    :cond_2
    iput p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mLumValue:F

    mul-float p1, p1, v1

    add-float/2addr p1, p3

    div-float/2addr p1, p3

    .line 255
    iput p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mLum:F

    :goto_0
    return-void
.end method

.method public onSeekStopped(FFLcom/yalantis/ucrop/view/MiddlePopSeekBar;)V
    .locals 1

    .line 288
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->setTitleToReset()V

    .line 289
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 291
    iget p2, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mContrast:F

    iget p3, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSaturation:F

    iget v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mLum:F

    invoke-static {p1, p2, p3, v0}, Lcom/yalantis/ucrop/util/ImageChangeHelper;->handleImageEffect(Landroid/graphics/Bitmap;FFF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 293
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 295
    :cond_0
    iget p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mLumValue:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    iget p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mContrastValue:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    iget p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSaturationValue:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->isBitmapChange:Z

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mLumIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSaturationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mContrastIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mColorTemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mBottomTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mFilterAdapter:Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p0}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/FilterAdjustActivity;->mSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    invoke-virtual {v0, p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setOnSeekChangeListener(Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;)V

    return-void
.end method
