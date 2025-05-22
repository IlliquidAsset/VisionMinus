.class public Lcom/powervision/media/ui/fragment/MediaPreviewFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "MediaPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/powervision/media/ui/view/IMediaView;
.implements Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseFragment<",
        "Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;",
        "Lcom/powervision/media/model/impl/MediaPreviewModel;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "Lcom/powervision/media/ui/view/IMediaView;",
        "Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;"
    }
.end annotation


# instance fields
.field downDir:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field filePath:Ljava/lang/String;

.field private isPrepared:Z

.field private isVisible:Z

.field loadPath:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mCustomProgress:Lcom/powervision/base/views/CustomProgress;

.field private mDialog:Lcom/powervision/media/widgets/DownloadDialog;

.field private mDownload:Landroid/widget/ImageView;

.field private mIndex:I

.field private mMediaBack:Landroid/widget/ImageView;

.field private mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mMediaControl:Landroid/widget/ImageView;

.field private mMediaDelete:Landroid/widget/ImageView;

.field private mMediaDetail:Landroid/widget/ImageView;

.field private mMediaHandle:Landroid/widget/TextView;

.field private mMediaTime:Landroid/widget/TextView;

.field private mMediaToolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mParam:Lcom/powervision/localhttp/entity/FileInfo;

.field mPlayer:Landroid/media/MediaPlayer;

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mProgress:Lcom/powervision/base/views/LoadingProgressBar;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private mTimeProgress:Landroid/widget/Chronometer;

.field private mTimeTotal:Landroid/widget/Chronometer;

.field mTimer:Ljava/util/Timer;

.field mTimerTask:Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;

.field private mType:Ljava/lang/String;

.field private mVideoView:Lcom/powervision/media/widgets/LVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->isPrepared:Z

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method private bottomLayoutControl()V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 519
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->hideBottom()V

    goto :goto_0

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->showBottom()V

    :cond_1
    :goto_0
    return-void
.end method

.method private controlPlay()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    const-string v0, "media"

    .line 294
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v2}, Lcom/powervision/localhttp/entity/FileInfo;->getLrv_file_path()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 295
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 296
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->isLrvExist()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->showDialog()V

    goto :goto_1

    .line 297
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getLrv_file_path()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->startPlay(Ljava/lang/String;)V

    goto :goto_1

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getLrv_file_path()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->startPlay(Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 306
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->pausePlay()V

    .line 307
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 309
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->continuePlay()V

    .line 310
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private dismissProgress()V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->dismiss()V

    :cond_0
    return-void
.end method

.method private hideBottom()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/powervision/media/R$anim;->anim_bottom_out:I

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    return-void
.end method

.method private hideTopLayout()V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaToolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaToolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/powervision/media/R$anim;->anim_top_out:I

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    return-void
.end method

.method private initPopupWindow()V
    .locals 5

    .line 266
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$layout;->media_file_detail:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 267
    sget v1, Lcom/powervision/media/R$id;->detail_create_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 268
    sget v2, Lcom/powervision/media/R$id;->detail_type:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 269
    sget v3, Lcom/powervision/media/R$id;->detail_length:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 270
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v4}, Lcom/powervision/localhttp/entity/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v1}, Lcom/powervision/localhttp/entity/FileInfo;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "record"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/powervision/media/R$string;->AP03_MediaLib_3:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/powervision/media/R$string;->AP03_MediaLib_2:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v1}, Lcom/powervision/localhttp/entity/FileInfo;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/powervision/base/utils/StorageUtil;->calculateFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v0, 0x1

    .line 274
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 275
    sget v0, Lcom/powervision/media/R$style;->PopupAnimationBottom:I

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 276
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mRootView:Landroid/widget/FrameLayout;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private loadData()V
    .locals 4

    .line 596
    iget-boolean v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->isVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->isPrepared:Z

    if-eqz v0, :cond_2

    .line 597
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "mediafragment"

    .line 598
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPath= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadPath:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadImage(Ljava/lang/String;)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/powervision/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->downDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->downPreviewImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadImage(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private loadImage(Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 200
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPreviewImage:Landroid/widget/ImageView;

    .line 201
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private playIconControl()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 494
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showBottom()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/powervision/media/R$anim;->anim_bottom_in:I

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    return-void
.end method

.method private showDialog()V
    .locals 2

    .line 284
    new-instance v0, Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/powervision/media/widgets/DownloadDialog;-><init>(Landroid/content/Context;Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;)V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    const/4 v1, 0x1

    .line 285
    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/DownloadDialog;->setValue(I)V

    .line 286
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->showNoBar()V

    return-void
.end method

.method private showProgress(Ljava/lang/String;)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/powervision/base/views/CustomProgress;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/powervision/base/views/CustomProgress;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CustomProgress;->setMessage(Ljava/lang/CharSequence;)V

    .line 371
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {p1}, Lcom/powervision/base/views/CustomProgress;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 372
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {p1}, Lcom/powervision/base/views/CustomProgress;->show()V

    :cond_1
    return-void
.end method

.method private showTopLayout()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaToolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaToolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/powervision/media/R$anim;->anim_top_in:I

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    return-void
.end method

.method private startPlay(Ljava/lang/String;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/LVideoView;->startPlay(Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    :cond_0
    return-void
.end method

.method private topLayoutControl()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaToolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->hideTopLayout()V

    goto :goto_0

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->showTopLayout()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelDownUpdate()V
    .locals 1

    .line 436
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->dismissProgress()V

    .line 437
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public cancelSaveData()V
    .locals 0

    return-void
.end method

.method public deleteError()V
    .locals 0

    return-void
.end method

.method public deleteSuccess()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 395
    iget v2, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/powervision/media/R$string;->AP03_MediaLib_44:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 105
    sget v0, Lcom/powervision/media/R$layout;->media_preview_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaHandle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mType:Ljava/lang/String;

    const-string v2, "brust"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaDetail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaDelete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDownload:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "media"

    .line 173
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v1}, Lcom/powervision/localhttp/entity/FileInfo;->getThm_file_path()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mType:Ljava/lang/String;

    const-string v1, "record"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimer:Ljava/util/Timer;

    .line 176
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getThm_file_path()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadPath:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03ThmDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->downDir:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getTempThmName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->fileName:Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->downDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v1}, Lcom/powervision/localhttp/entity/FileInfo;->getThmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->filePath:Ljava/lang/String;

    goto :goto_4

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getPreview_file_path()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadPath:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03PrevDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->downDir:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getTempPrevName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->fileName:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->downDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v1}, Lcom/powervision/localhttp/entity/FileInfo;->getPrevName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->filePath:Ljava/lang/String;

    :goto_4
    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->isPrepared:Z

    .line 188
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadData()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 127
    sget p1, Lcom/powervision/media/R$id;->surfaceview:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/widgets/LVideoView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    .line 128
    sget p1, Lcom/powervision/media/R$id;->media_control:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    .line 129
    sget p1, Lcom/powervision/media/R$id;->preview_image:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPreviewImage:Landroid/widget/ImageView;

    .line 130
    sget p1, Lcom/powervision/media/R$id;->preview_root:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mRootView:Landroid/widget/FrameLayout;

    .line 132
    sget p1, Lcom/powervision/media/R$id;->media_toolbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaToolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 133
    sget p1, Lcom/powervision/media/R$id;->media_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaBack:Landroid/widget/ImageView;

    .line 134
    sget p1, Lcom/powervision/media/R$id;->media_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaTime:Landroid/widget/TextView;

    .line 135
    sget p1, Lcom/powervision/media/R$id;->media_handle:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaHandle:Landroid/widget/TextView;

    .line 136
    sget p1, Lcom/powervision/media/R$id;->media_detail:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaDetail:Landroid/widget/ImageView;

    .line 137
    sget p1, Lcom/powervision/media/R$id;->media_delete:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaDelete:Landroid/widget/ImageView;

    .line 138
    sget p1, Lcom/powervision/media/R$id;->media_download:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDownload:Landroid/widget/ImageView;

    .line 140
    sget p1, Lcom/powervision/media/R$id;->video_progress:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 141
    sget p1, Lcom/powervision/media/R$id;->time_progress:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Chronometer;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimeProgress:Landroid/widget/Chronometer;

    .line 142
    sget p1, Lcom/powervision/media/R$id;->time_total:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Chronometer;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimeTotal:Landroid/widget/Chronometer;

    .line 143
    sget p1, Lcom/powervision/media/R$id;->media_seekbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 145
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimeTotal:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 146
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimeProgress:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 147
    new-instance p1, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    return-void
.end method

.method public synthetic lambda$loadPreviewImage$3$MediaPreviewFragment(Ljava/lang/String;)V
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadImage(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$0$MediaPreviewFragment(Ljava/util/ArrayList;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mType:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->deleteMedia(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onClick$1$MediaPreviewFragment(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 3

    .line 254
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPreviewImage:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$FEWzlnEAOmFO3trKoKg5hLhnmJM;

    invoke-direct {v0, p0, p1}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$FEWzlnEAOmFO3trKoKg5hLhnmJM;-><init>(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;Ljava/util/ArrayList;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$updateDownloadInfo$2$MediaPreviewFragment(II)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/DownloadDialog;->setOrder(I)V

    .line 352
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0, p2}, Lcom/powervision/media/widgets/DownloadDialog;->setPercent(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/DownloadDialog;->dismiss()V

    .line 355
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 356
    sget p1, Lcom/powervision/media/R$string;->AP03_Upgrade_50:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadPreviewImage(Ljava/lang/String;)V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPreviewImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$DgmFYLlFLx7wQyHmhSbCywnN7Ec;

    invoke-direct {v1, p0, p1}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$DgmFYLlFLx7wQyHmhSbCywnN7Ec;-><init>(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadStuckWork()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 221
    sget v0, Lcom/powervision/media/R$id;->media_control:I

    if-ne p1, v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->controlPlay()V

    goto/16 :goto_0

    .line 223
    :cond_0
    sget v0, Lcom/powervision/media/R$id;->surfaceview:I

    if-ne p1, v0, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->bottomLayoutControl()V

    .line 225
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->topLayoutControl()V

    .line 226
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->playIconControl()V

    goto/16 :goto_0

    .line 227
    :cond_1
    sget v0, Lcom/powervision/media/R$id;->preview_image:I

    if-ne p1, v0, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->topLayoutControl()V

    goto/16 :goto_0

    .line 229
    :cond_2
    sget v0, Lcom/powervision/media/R$id;->media_back:I

    if-ne p1, v0, :cond_3

    .line 230
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 231
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 233
    :cond_3
    sget v0, Lcom/powervision/media/R$id;->media_download:I

    if-ne p1, v0, :cond_5

    .line 234
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_4

    .line 235
    sget p1, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 239
    :cond_4
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->showDialog()V

    .line 242
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 243
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_device_media_video_download"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 245
    :cond_5
    sget v0, Lcom/powervision/media/R$id;->media_delete:I

    if-ne p1, v0, :cond_7

    .line 246
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_6

    .line 247
    sget p1, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 250
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/powervision/media/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_30:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_97:I

    .line 254
    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_20:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$NRMVHUoF-QT7TMSgjdo8cFjxtZU;

    invoke-direct {v6, p0, p1}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$NRMVHUoF-QT7TMSgjdo8cFjxtZU;-><init>(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;Ljava/util/ArrayList;)V

    const/4 v7, 0x0

    .line 253
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 256
    :cond_7
    sget v0, Lcom/powervision/media/R$id;->media_detail:I

    if-ne p1, v0, :cond_8

    .line 257
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->initPopupWindow()V

    :cond_8
    :goto_0
    return-void
.end method

.method public onCloseCallBack()V
    .locals 1

    .line 449
    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_58:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->showProgress(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimerTask:Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;->cancel()Z

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/LVideoView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->hideBottom()V

    .line 473
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->showTopLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mActivity:Landroid/app/Activity;

    .line 112
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "model"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/FileInfo;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    .line 114
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mIndex:I

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "\u9519\u8bef\uff1a\u53c2\u6570\u4e3a\u7a7a"

    .line 119
    invoke-static {v0, p1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->release()V

    .line 614
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->onDestroy()V

    .line 615
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->release()V

    .line 616
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 213
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onPause()V

    .line 214
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->removeRequestListener()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 545
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimeProgress:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 206
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 207
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->addRequestListener()V

    return-void
.end method

.method public onStart(Landroid/media/MediaPlayer;)V
    .locals 8

    .line 328
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 331
    :cond_0
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPlayer:Landroid/media/MediaPlayer;

    .line 332
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimeTotal:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 333
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setMax(I)V

    .line 334
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 335
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPreviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/LVideoView;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/media/R$mipmap;->media_icon_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->hideTopLayout()V

    .line 343
    new-instance v3, Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;-><init>(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;Lcom/powervision/media/ui/fragment/MediaPreviewFragment$1;)V

    iput-object v3, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimerTask:Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;

    .line 344
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/LVideoView;->setSeek(I)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimerTask:Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment$SeekTask;->cancel()Z

    .line 564
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 565
    iput-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mTimer:Ljava/util/Timer;

    .line 566
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->stopPlay()V

    .line 567
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 568
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/LVideoView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public saveData()V
    .locals 0

    return-void
.end method

.method public saveOrCancelFail()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaHandle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaDetail:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0, p0}, Lcom/powervision/media/widgets/LVideoView;->setVideoStatusListener(Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;)V

    .line 160
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 161
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0, p0}, Lcom/powervision/media/widgets/LVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 575
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->isVisible:Z

    .line 578
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->loadData()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 580
    iput-boolean v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->isVisible:Z

    :goto_0
    if-nez p1, :cond_1

    .line 582
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    if-eqz v0, :cond_1

    .line 583
    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->pausePlay()V

    .line 584
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mMediaControl:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 587
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mParam:Lcom/powervision/localhttp/entity/FileInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 588
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_device_media_video_preview"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public updateDownError()V
    .locals 2

    .line 413
    sget v0, Lcom/powervision/media/R$string;->AP03_DV_Msg_17:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    sget v1, Lcom/powervision/media/R$string;->AP03_DV_Msg_17:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/DownloadDialog;->setContent(I)V

    return-void
.end method

.method public updateDownloadInfo(II)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$7reI-lcbo6FvtKK2M49GvE5uwCI;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$7reI-lcbo6FvtKK2M49GvE5uwCI;-><init>(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
