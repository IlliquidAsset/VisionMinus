.class public Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "MediaLibPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ItemClick;
.implements Lcom/powervision/media/ui/view/IMediaView;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;
.implements Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;",
        "Lcom/powervision/media/model/impl/MediaPreviewModel;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ItemClick;",
        "Lcom/powervision/media/ui/view/IMediaView;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;",
        "Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;"
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x1f4

.field private static final MSG_HIDE_TOP_BOTTOM:I = 0x2

.field private static final MSG_UPDATE_TIME_PROGRESS:I = 0x1


# instance fields
.field private isFront:Z

.field private isShow:Z

.field private mAdapter:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

.field private mBack:Landroid/widget/ImageView;

.field private mCollection:Landroid/widget/ImageView;

.field private mCustomProgress:Lcom/powervision/base/views/CustomProgress;

.field private mDelete:Landroid/widget/ImageView;

.field private mDialog:Lcom/powervision/media/widgets/DownloadDialog;

.field private mDistance:I

.field private mDownload:Landroid/widget/ImageView;

.field private mEnterBurst:Landroid/widget/TextView;

.field private mHandler:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

.field private mHorManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mIsFlyPreVideoFlag:Z

.field private mIsVertical:Z

.field private mLandSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mMediaDetail:Landroid/widget/TextView;

.field private mMediaTitle:Landroid/widget/TextView;

.field private mMediaType:Landroid/widget/TextView;

.field private mPlayIcon:Landroid/widget/ImageView;

.field private mPortSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private mPreviewBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mPreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mProgress:Lcom/powervision/base/views/LoadingProgressBar;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private mSelectIndex:I

.field private mTimeProgress:Landroid/widget/Chronometer;

.field private mTimeTotal:Landroid/widget/Chronometer;

.field private mVerManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isShow:Z

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mIsFlyPreVideoFlag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)Lcom/powervision/media/widgets/TextureVideoPlayer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    return p0
.end method

.method static synthetic access$202(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->stateControl()V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDistance:I

    return p0
.end method

.method static synthetic access$402(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDistance:I

    return p1
.end method

.method static synthetic access$500(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->updatePlayTimeAndProgress()V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;ZZ)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->uiHideShow(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->seekControl(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private bottomLayoutControl(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 565
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 568
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private clearMediaTypeData()V
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaType:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 597
    invoke-direct {p0, v1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getTextRes(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaType:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getImageResId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :cond_0
    return-void
.end method

.method private continuePlay()V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->continuePlay()V

    .line 499
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 500
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->updatePlayTimeAndProgress()V

    return-void
.end method

.method private controlPlay()V
    .locals 5

    .line 452
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->getMediaState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    const-string v3, "media--"

    .line 454
    invoke-static {v3}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getPreVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 455
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 456
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->isLrvExist()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->downFile(Lcom/powervision/localhttp/entity/MediaLib;I)V

    goto :goto_1

    .line 457
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getPreVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->startPlay(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_2
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getPreVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->startPlay(Ljava/lang/String;)V

    goto :goto_1

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->getMediaState()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 466
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->pausePlay()V

    .line 467
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 468
    :cond_4
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->getMediaState()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 469
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->continuePlay()V

    :cond_5
    :goto_1
    return-void
.end method

.method private dismissProgress()V
    .locals 1

    .line 886
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->dismiss()V

    :cond_0
    return-void
.end method

.method private downFile(Lcom/powervision/localhttp/entity/MediaLib;I)V
    .locals 1

    .line 634
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 635
    sget p1, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 639
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/base/views/LoadingProgressBar;->show(Z)V

    :cond_1
    const/4 p1, 0x1

    .line 641
    iput-boolean p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mIsFlyPreVideoFlag:Z

    .line 642
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {p1, p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->downloadLrv(Lcom/powervision/localhttp/entity/MediaLib;)V

    return-void
.end method

.method private getImageResId(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 271
    sget p1, Lcom/powervision/media/R$mipmap;->media_slow_motion:I

    return p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 273
    sget p1, Lcom/powervision/media/R$mipmap;->media_delay_shot:I

    return p1

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 275
    sget p1, Lcom/powervision/media/R$mipmap;->media_hdr:I

    return p1

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 277
    sget p1, Lcom/powervision/media/R$mipmap;->media_burst:I

    return p1

    :cond_3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    .line 279
    sget p1, Lcom/powervision/media/R$mipmap;->media_aeb_burst:I

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private getTextRes(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 252
    sget p1, Lcom/powervision/media/R$string;->AP03_DV_Msg_18:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 254
    sget p1, Lcom/powervision/media/R$string;->AP03_DV_Msg_19:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 256
    sget p1, Lcom/powervision/media/R$string;->AP03_CameraSetting_9:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 258
    sget p1, Lcom/powervision/media/R$string;->AP03_CameraSetting_10:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public static goInTo(Landroid/content/Context;I)V
    .locals 2

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "index"

    .line 125
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initAdapter()V
    .locals 2

    .line 218
    new-instance v0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    .line 219
    invoke-virtual {v0, p0}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->setOnItemClick(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ItemClick;)V

    .line 220
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 221
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private mediaTypeControl(ZZ)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 583
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaType:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 586
    :cond_1
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaType:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private pausePlay()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->pausePlay()V

    .line 492
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHandler:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;->removeMessages(I)V

    return-void
.end method

.method private saveCancelSaveControl(Z)V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/entity/MediaLib;->setCollected(I)V

    .line 808
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCollection:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 809
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCollection:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    sget p1, Lcom/powervision/media/R$mipmap;->media_save_s:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/powervision/media/R$mipmap;->media_save_n:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 811
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf37

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 813
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->dismissProgress()V

    return-void
.end method

.method private seekControl(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 609
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    if-eqz p1, :cond_1

    .line 610
    invoke-virtual {p1}, Lcom/powervision/media/widgets/TextureVideoPlayer;->isShowSeekState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 611
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 615
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setMediaType()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    .line 229
    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getTextRes(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getImageResId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 232
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v1

    .line 233
    iget-object v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v2

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    :cond_1
    const/16 v2, 0x8

    .line 238
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->clearMediaTypeData()V

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaType:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showDetail()V
    .locals 12

    .line 509
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media---showDetail= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/powervision/media/R$layout;->media_detail_layout:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 513
    sget v3, Lcom/powervision/media/R$id;->media_name:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 514
    sget v4, Lcom/powervision/media/R$id;->shot_time:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 515
    sget v5, Lcom/powervision/media/R$id;->file_length:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 516
    sget v6, Lcom/powervision/media/R$id;->file_ratio:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 517
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x4

    if-ge v7, v9, :cond_0

    .line 518
    sget v7, Lcom/powervision/media/R$id;->group_detail:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/Group;

    .line 519
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 520
    sget v7, Lcom/powervision/media/R$id;->video_duration:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 521
    sget v9, Lcom/powervision/media/R$id;->frame_rate:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 522
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getDuration()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getFrameRate()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    const-string v11, "%d fps"

    invoke-static {v7, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :cond_0
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getCreateDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getFileSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/powervision/base/utils/StorageUtil;->calculateFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getWidth()I

    move-result v3

    const-string v4, " x "

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v3

    const/4 v5, 0x5

    if-le v3, v5, :cond_1

    .line 530
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/BurstInfo;

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/BurstInfo;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/BurstInfo;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 537
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 539
    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 540
    iget-object v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaDetail:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v2, v1

    .line 541
    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaDetail:Landroid/widget/TextView;

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method private showDialog()V
    .locals 2

    .line 623
    new-instance v0, Lcom/powervision/media/widgets/DownloadDialog;

    invoke-direct {v0, p0, p0}, Lcom/powervision/media/widgets/DownloadDialog;-><init>(Landroid/content/Context;Lcom/powervision/media/widgets/DownloadDialog$DownloadDialogListener;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    const/4 v1, 0x1

    .line 624
    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/DownloadDialog;->setValue(I)V

    .line 625
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->showNoBar()V

    :cond_0
    return-void
.end method

.method private showProgress(Ljava/lang/String;)V
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 874
    invoke-static {p0, p1, v0, v1}, Lcom/powervision/base/views/CustomProgress;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/powervision/base/views/CustomProgress;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CustomProgress;->setMessage(Ljava/lang/CharSequence;)V

    .line 877
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {p1}, Lcom/powervision/base/views/CustomProgress;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 878
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCustomProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {p1}, Lcom/powervision/base/views/CustomProgress;->show()V

    :cond_1
    return-void
.end method

.method private startPlay(Ljava/lang/String;)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setPlayUrl(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/TextureVideoPlayer;->startPlay(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 483
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/LoadingProgressBar;->show(Z)V

    :cond_0
    return-void
.end method

.method private stateControl()V
    .locals 7

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media---stateControl= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    iget v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    .line 350
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v2

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    iget-object v3, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mEnterBurst:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 353
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object v3

    .line 354
    iget-object v6, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mEnterBurst:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 355
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v3, 0x8

    .line 354
    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    :goto_3
    iget-object v3, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getCreateDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getCollected()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 363
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCollection:Landroid/widget/ImageView;

    sget v3, Lcom/powervision/media/R$mipmap;->media_save_s:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCollection:Landroid/widget/ImageView;

    const-string v3, "1"

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCollection:Landroid/widget/ImageView;

    sget v3, Lcom/powervision/media/R$mipmap;->media_save_n:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCollection:Landroid/widget/ImageView;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 370
    :goto_4
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->setMediaType()V

    const/4 v0, 0x4

    if-ge v2, v0, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_7

    .line 375
    iput-boolean v5, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isShow:Z

    .line 376
    iget-object v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    sget v3, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    iget-object v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    invoke-direct {p0, v5}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->topLayoutControl(Z)V

    .line 379
    invoke-direct {p0, v5}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->bottomLayoutControl(Z)V

    goto :goto_6

    .line 381
    :cond_7
    iget-object v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    :goto_6
    iget-object v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v2, v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setVisibility(I)V

    .line 384
    invoke-direct {p0, v1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->seekControl(Z)V

    return-void
.end method

.method private topLayoutControl(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 550
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private uiHideShow(ZZ)V
    .locals 0

    .line 652
    iput-boolean p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isShow:Z

    .line 653
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->topLayoutControl(Z)V

    .line 654
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->bottomLayoutControl(Z)V

    .line 655
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mediaTypeControl(ZZ)V

    return-void
.end method

.method private updateAfterDelete()V
    .locals 3

    .line 852
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media---\u9884\u89c8\u9875\u8fde\u62cd\u5220\u96641= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->finish()V

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    iget v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v2}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->notifyItemRemoved(I)V

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media---\u9884\u89c8\u9875\u8fde\u62cd\u5220\u96642= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    if-ge v0, v1, :cond_1

    .line 861
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    .line 863
    :cond_1
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->stateControl()V

    :goto_0
    return-void
.end method

.method private updatePlayTimeAndProgress()V
    .locals 4

    .line 1046
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->getCurrentPosition()I

    move-result v0

    .line 1047
    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 1049
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHandler:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private workScreenChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 907
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPortSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v1}, Lcom/powervision/media/widgets/TextureVideoPlayer;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 908
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPortSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 909
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPortSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 910
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPortSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 911
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPortSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 912
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPortSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_0

    .line 914
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mLandSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v1}, Lcom/powervision/media/widgets/TextureVideoPlayer;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 915
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mLandSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 916
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mLandSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 917
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mLandSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 918
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mLandSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 919
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mLandSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelDownUpdate()V
    .locals 1

    .line 779
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->dismissProgress()V

    .line 780
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public cancelSaveData()V
    .locals 1

    const/4 v0, 0x0

    .line 766
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->saveCancelSaveControl(Z)V

    return-void
.end method

.method public deleteBurstNotify(Landroid/util/SparseArray;)V
    .locals 4
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

    const/4 v0, 0x0

    .line 818
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->updateAfterDelete()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 822
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    .line 823
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/MediaLib;

    .line 825
    iget-object v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    invoke-virtual {v2, v1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->notifyItemChanged(I)V

    .line 828
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x8

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 837
    :cond_1
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mEnterBurst:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 830
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 831
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v0, :cond_4

    .line 832
    :cond_3
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mEnterBurst:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 833
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaType:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 834
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->clearMediaTypeData()V

    :cond_4
    :goto_1
    return-void
.end method

.method public deleteError()V
    .locals 1

    .line 724
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->dismissProgress()V

    .line 725
    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_34:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void
.end method

.method public deleteSuccess()V
    .locals 3

    .line 710
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 711
    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 712
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    .line 713
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 714
    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_44:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 716
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->updateAfterDelete()V

    .line 718
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->dismissProgress()V

    return-void
.end method

.method protected getLayoutRes()I
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 132
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 134
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 135
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->systemFullScreen()V

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 138
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 140
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 142
    :cond_0
    sget v0, Lcom/powervision/media/R$layout;->media_lib_preview_activity:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 193
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    .line 196
    invoke-static {}, Lcom/powervision/media/utils/MediaLibDataManager;->getInstance()Lcom/powervision/media/utils/MediaLibDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/media/utils/MediaLibDataManager;->getMediaPreData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    .line 199
    :cond_0
    new-instance v0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;-><init>(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHandler:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

    .line 200
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    .line 202
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->stateControl()V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "media---initData11111111111111"

    .line 203
    invoke-static {v2, v0}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHorManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 205
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVerManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 206
    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mIsVertical:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHorManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 208
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->initAdapter()V

    .line 210
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 150
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$TN8NQVfw3IGP686VSlaNKMLz44Y;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$TN8NQVfw3IGP686VSlaNKMLz44Y;-><init>(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 162
    :cond_0
    sget p1, Lcom/powervision/media/R$id;->media_recycler:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    sget p1, Lcom/powervision/media/R$id;->media_title_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 164
    sget p1, Lcom/powervision/media/R$id;->media_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mBack:Landroid/widget/ImageView;

    .line 165
    sget p1, Lcom/powervision/media/R$id;->media_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaTitle:Landroid/widget/TextView;

    .line 166
    sget p1, Lcom/powervision/media/R$id;->media_detail:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaDetail:Landroid/widget/TextView;

    .line 167
    sget p1, Lcom/powervision/media/R$id;->media_option:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 168
    sget p1, Lcom/powervision/media/R$id;->media_collection:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCollection:Landroid/widget/ImageView;

    .line 169
    sget p1, Lcom/powervision/media/R$id;->media_download:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDownload:Landroid/widget/ImageView;

    .line 170
    sget p1, Lcom/powervision/media/R$id;->media_delete:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDelete:Landroid/widget/ImageView;

    .line 171
    sget p1, Lcom/powervision/media/R$id;->burst_enter:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mEnterBurst:Landroid/widget/TextView;

    .line 172
    sget p1, Lcom/powervision/media/R$id;->media_type:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaType:Landroid/widget/TextView;

    .line 173
    sget p1, Lcom/powervision/media/R$id;->video_player:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/widgets/TextureVideoPlayer;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    .line 174
    sget p1, Lcom/powervision/media/R$id;->media_control:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    .line 175
    sget p1, Lcom/powervision/media/R$id;->time_seek:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 176
    sget p1, Lcom/powervision/media/R$id;->time_progress:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Chronometer;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mTimeProgress:Landroid/widget/Chronometer;

    .line 177
    sget p1, Lcom/powervision/media/R$id;->time_total:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Chronometer;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mTimeTotal:Landroid/widget/Chronometer;

    .line 178
    sget p1, Lcom/powervision/media/R$id;->media_seekbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 179
    sget p1, Lcom/powervision/media/R$id;->preview_root:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 181
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mIsVertical:Z

    .line 182
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPortSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 183
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 184
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mLandSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 185
    sget v0, Lcom/powervision/media/R$layout;->media_lib_preview_activity_land:I

    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    .line 186
    iget-boolean p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mIsVertical:Z

    if-nez p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mLandSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$initView$0$MediaLibPreviewActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 151
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 155
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    .line 156
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    .line 157
    iget-object v3, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v0, v1, v2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setPadding(IIII)V

    .line 159
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$loadStuckWork$3$MediaLibPreviewActivity()V
    .locals 1

    .line 788
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->dismissProgress()V

    .line 789
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onClick$1$MediaLibPreviewActivity(Landroid/view/View;)V
    .locals 2

    .line 413
    sget p1, Lcom/powervision/media/R$string;->AP03_MediaLib_77:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->showProgress(Ljava/lang/String;)V

    .line 415
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/TextureVideoPlayer;->stopPlay()V

    .line 417
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {p1, v0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->deleteMedia(Lcom/powervision/localhttp/entity/MediaLib;)V

    return-void
.end method

.method public synthetic lambda$onStart$4$MediaLibPreviewActivity()V
    .locals 2

    .line 988
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$updateDownloadInfo$2$MediaLibPreviewActivity(II)V
    .locals 3

    .line 683
    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mIsFlyPreVideoFlag:Z

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-nez v0, :cond_0

    return-void

    .line 685
    :cond_0
    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/DownloadDialog;->setOrder(I)V

    .line 686
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0, p2}, Lcom/powervision/media/widgets/DownloadDialog;->setPercent(I)V

    if-ne p1, v2, :cond_3

    if-ne p2, v1, :cond_3

    .line 688
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/DownloadDialog;->dismiss()V

    .line 689
    iget-boolean p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFront:Z

    if-eqz p1, :cond_1

    .line 690
    sget p1, Lcom/powervision/media/R$string;->AP03_Upgrade_50:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 692
    :cond_1
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    if-ne p2, v1, :cond_3

    const/4 p1, 0x0

    .line 697
    iput-boolean p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mIsFlyPreVideoFlag:Z

    .line 698
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public loadPreviewImage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public loadStuckWork()V
    .locals 1

    .line 787
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$1X58V1fDYzXqxslwJeysWejY8aE;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$1X58V1fDYzXqxslwJeysWejY8aE;-><init>(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 390
    sget v0, Lcom/powervision/media/R$id;->media_back:I

    if-ne p1, v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->finish()V

    goto/16 :goto_0

    .line 392
    :cond_0
    sget v0, Lcom/powervision/media/R$id;->media_detail:I

    if-ne p1, v0, :cond_1

    .line 393
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->showDetail()V

    goto/16 :goto_0

    .line 394
    :cond_1
    sget v0, Lcom/powervision/media/R$id;->burst_enter:I

    if-ne p1, v0, :cond_2

    .line 395
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/media/mediaLibBurstActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    const-string v1, "index"

    .line 396
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->withInt(Ljava/lang/String;I)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    .line 397
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "burst"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto/16 :goto_0

    .line 399
    :cond_2
    sget v0, Lcom/powervision/media/R$id;->media_delete:I

    if-ne p1, v0, :cond_5

    .line 400
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 404
    :cond_3
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_4

    .line 405
    sget p1, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 408
    :cond_4
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {p1, v0}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->notifyItemChanged(I)V

    const/4 v2, 0x0

    .line 410
    sget p1, Lcom/powervision/media/R$string;->AP03_MediaLib_76:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_97:I

    .line 411
    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_20:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$O3iF3tzXGLCV3NiI2dNd1dEakag;

    invoke-direct {v6, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$O3iF3tzXGLCV3NiI2dNd1dEakag;-><init>(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V

    const/4 v7, 0x0

    move-object v1, p0

    .line 410
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 419
    :cond_5
    sget v0, Lcom/powervision/media/R$id;->media_collection:I

    if-ne p1, v0, :cond_7

    .line 420
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 425
    :cond_6
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->pausePlay()V

    const/4 p1, 0x0

    .line 427
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->showProgress(Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCollection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->saveAndCancelSave(ZLcom/powervision/localhttp/entity/MediaLib;)V

    goto :goto_0

    .line 429
    :cond_7
    sget v0, Lcom/powervision/media/R$id;->media_download:I

    if-ne p1, v0, :cond_a

    .line 430
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 434
    :cond_8
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_9

    .line 435
    sget p1, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 439
    :cond_9
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->pausePlay()V

    .line 441
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->showDialog()V

    .line 442
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {p1, v0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->download(Lcom/powervision/localhttp/entity/MediaLib;)V

    goto :goto_0

    .line 443
    :cond_a
    sget v0, Lcom/powervision/media/R$id;->media_control:I

    if-ne p1, v0, :cond_b

    .line 444
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->controlPlay()V

    :cond_b
    :goto_0
    return-void
.end method

.method public onCloseCallBack()V
    .locals 1

    .line 797
    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_58:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->showProgress(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 4

    .line 1005
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHandler:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;->removeMessages(I)V

    .line 1006
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHandler:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;->removeMessages(I)V

    .line 1007
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1008
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setVisibility(I)V

    .line 1010
    invoke-direct {p0, v1, v2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->uiHideShow(ZZ)V

    .line 1011
    invoke-direct {p0, v2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->seekControl(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 893
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 896
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mIsVertical:Z

    .line 897
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVerManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHorManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 898
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSelectIndex:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 899
    iget-boolean p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mIsVertical:Z

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->workScreenChanged(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 925
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 926
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->onDestroyVideo()V

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->release()V

    .line 930
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->cancelDown()V

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHandler:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 934
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    if-eqz v0, :cond_2

    .line 935
    iput-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mAdapter:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    .line 937
    :cond_2
    invoke-static {}, Lcom/powervision/media/utils/MediaLibDataManager;->getInstance()Lcom/powervision/media/utils/MediaLibDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/media/utils/MediaLibDataManager;->setMediaPreData(Ljava/util/ArrayList;)V

    .line 938
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1028
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    invoke-static {p1}, Lcom/powervision/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 1031
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHandler:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;->removeMessages(I)V

    .line 1032
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHandler:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;->removeMessages(I)V

    .line 1033
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1034
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setVisibility(I)V

    .line 1035
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1036
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_1
    const/4 p1, 0x0

    .line 1038
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->seekControl(Z)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    .line 943
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/MediaLib;

    if-eqz p1, :cond_6

    .line 945
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-ne v0, v4, :cond_2

    .line 950
    :cond_1
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 951
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    .line 953
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->clearMediaTypeData()V

    const/4 p1, 0x1

    .line 957
    :goto_2
    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isShow:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isShow:Z

    if-eqz v1, :cond_5

    .line 959
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->seekControl(Z)V

    .line 960
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isShow:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 962
    :cond_5
    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isShow:Z

    invoke-direct {p0, v0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->uiHideShow(ZZ)V

    :cond_6
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 668
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 669
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFront:Z

    .line 670
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->removeRequestListener()V

    .line 671
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->pausePlay()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 968
    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mTimeProgress:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 660
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 661
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->addRequestListener()V

    const/4 v0, 0x1

    .line 662
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFront:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "media---onResume"

    .line 663
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStart(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 984
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mTimeTotal:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 985
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setMax(I)V

    .line 986
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 987
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$3reyQJ1ncom1TzH46LnELzVcOQ8;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$3reyQJ1ncom1TzH46LnELzVcOQ8;-><init>(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Lcom/powervision/media/widgets/TextureVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 994
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_pause:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "media-------onStart"

    .line 995
    invoke-static {v0, p1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 996
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->updatePlayTimeAndProgress()V

    const/4 p1, 0x1

    .line 997
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->seekControl(Z)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 973
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->pausePlay()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setSeek(I)V

    .line 979
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->continuePlay()V

    return-void
.end method

.method public recordStarted()V
    .locals 0
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf52
    .end annotation

    .line 844
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Aircraft;->getAircraftActivity()Landroid/app/Activity;

    .line 845
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->finish()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHandler:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;->removeMessages(I)V

    .line 1017
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mHandler:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;->removeMessages(I)V

    .line 1018
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1019
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setVisibility(I)V

    .line 1020
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1023
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->seekControl(Z)V

    return-void
.end method

.method public saveData()V
    .locals 1

    const/4 v0, 0x1

    .line 760
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->saveCancelSaveControl(Z)V

    return-void
.end method

.method public saveOrCancelFail()V
    .locals 1

    .line 772
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->dismissProgress()V

    .line 773
    sget v0, Lcom/powervision/media/R$string;->APP_function_25:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mMediaDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mEnterBurst:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mCollection:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 295
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mVideoPlayer:Lcom/powervision/media/widgets/TextureVideoPlayer;

    invoke-virtual {v0, p0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setVideoStatusListener(Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;)V

    .line 296
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;-><init>(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public updateDownError()V
    .locals 2

    .line 743
    sget v0, Lcom/powervision/media/R$string;->AP03_DV_Msg_17:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 744
    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mIsFlyPreVideoFlag:Z

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    if-nez v0, :cond_0

    return-void

    .line 746
    :cond_0
    sget v1, Lcom/powervision/media/R$string;->AP03_DV_Msg_17:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/DownloadDialog;->setContent(I)V

    .line 747
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mDialog:Lcom/powervision/media/widgets/DownloadDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/DownloadDialog;->cancelDown()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 750
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mIsFlyPreVideoFlag:Z

    .line 751
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateDownloadInfo(II)V
    .locals 1

    .line 682
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$A-lwgziYvc00ohws8wNrKcoSk-s;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$A-lwgziYvc00ohws8wNrKcoSk-s;-><init>(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;II)V

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
