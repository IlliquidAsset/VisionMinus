.class public Lcom/lewis/edit/ui/activity/AVEditActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "AVEditActivity.java"

# interfaces
.implements Lcom/lewis/edit/ui/view/IAVEditView;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lewis/edit/widgets/RangeSeekBar$OnSeekChangeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/lewis/edit/ui/adapter/SpliceAdapter$OnItemClickListener;
.implements Lcom/lewis/edit/ui/adapter/EditViewAdapter$OnItemClickListener;
.implements Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;
.implements Lcom/lewis/edit/widgets/BackgroundMusicLayout$WorkBackgroundMusicListener;
.implements Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;
.implements Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;
.implements Lcom/lewis/edit/widgets/GLVideoRenderer$OnVideoMediaCompletionListener;
.implements Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/ui/activity/AVEditActivity$SeparateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/lewis/edit/presenter/impl/AVEditPresenter;",
        "Lcom/lewis/edit/model/impl/AVEditModel;",
        ">;",
        "Lcom/lewis/edit/ui/view/IAVEditView;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/lewis/edit/widgets/RangeSeekBar$OnSeekChangeListener;",
        "Landroid/widget/RadioGroup$OnCheckedChangeListener;",
        "Landroid/media/MediaPlayer$OnCompletionListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/media/MediaPlayer$OnPreparedListener;",
        "Lcom/lewis/edit/ui/adapter/SpliceAdapter$OnItemClickListener;",
        "Lcom/lewis/edit/ui/adapter/EditViewAdapter$OnItemClickListener;",
        "Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;",
        "Lcom/lewis/edit/widgets/BackgroundMusicLayout$WorkBackgroundMusicListener;",
        "Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;",
        "Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;",
        "Lcom/lewis/edit/widgets/GLVideoRenderer$OnVideoMediaCompletionListener;",
        "Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;"
    }
.end annotation


# static fields
.field private static final OBBTAG:Ljava/lang/String; = "obb========="

.field private static final PLAY_STATE_PAUSE:Ljava/lang/String; = "pause"

.field private static final PLAY_STATE_PLAY:Ljava/lang/String; = "play"

.field private static final REQUEST_CODE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "AVEditActivity"

.field private static final VIDEO_FRAME_TIME_NUM:I = 0x1e8480

.field private static final VIDEO_REQUEST_CODE:I = 0x3e8


# instance fields
.field private mAdapter:Lcom/lewis/edit/ui/adapter/FrameAdapter;

.field private mAudioPlay:Landroid/media/MediaPlayer;

.field private mAudioSize:F

.field private mBmLayout:Lcom/lewis/edit/widgets/BackgroundMusicLayout;

.field private mCmLayout:Lcom/lewis/edit/widgets/EditColorMixingLayout;

.field private mCmRunVideoPath:Ljava/lang/String;

.field private mComplete:Landroid/widget/TextView;

.field private mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mContainerGone:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCropLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCropRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mCropTime:Landroid/widget/TextView;

.field private mCurrentVideoHadPlayLength:I

.field private mEditRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mEditViewAdapter:Lcom/lewis/edit/ui/adapter/EditViewAdapter;

.field private mEndTrimTime:Landroid/widget/TextView;

.field private mFlEditRecycleLayout:Landroid/widget/FrameLayout;

.field private mFlVideo:Landroid/widget/FrameLayout;

.field private mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

.field private mGLVideoView:Landroid/opengl/GLSurfaceView;

.field private mHadSelectVideoAllTime:J

.field private mHandler:Landroid/os/Handler;

.field private mImageAVMerge:Landroid/widget/ImageView;

.field private mImageCancel:Landroid/widget/ImageView;

.field private mImageConfirm:Landroid/widget/ImageView;

.field private mImageCrop:Landroid/widget/ImageView;

.field private mImageHolder:Landroid/widget/ImageView;

.field private mImageTexture:Landroid/widget/ImageView;

.field private mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

.field private mIntentPath:Ljava/lang/String;

.field private mIntentPathArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAllVideoPlayFinishFlag:Z

.field private mIsClipping:Z

.field private mIsCmRunningFlag:Z

.field private mIsGoInToShareFlag:Z

.field private mIsSeparate:Z

.field private mIsTitleGoIntoFlag:Z

.field private mIsWorkAddVideoFlag:Z

.field private mIsWorkSpeedFlag:Z

.field private mIvShowAudio:Landroid/widget/ImageView;

.field private mLastButton:I

.field private mLastClickTextPosition:I

.field private mLastTexture:I

.field private mLayoutProgress:Landroid/widget/RelativeLayout;

.field private mLoadingDialog:Lcom/powervision/base/views/LoadingProgressBar;

.field private mMp4Processor:Lcom/lewis/edit/utils/mp4/Mp4Processor;

.field private mMusicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

.field private mMusicLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mMusicList:Landroidx/recyclerview/widget/RecyclerView;

.field private mMuteStateArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/SingleVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mObbDownloadServiceEnable:Z

.field private mObbHelper:Lcom/cclink/obbdownloader/ObbHelper;

.field private mPicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

.field private mPlayState:Landroid/widget/ImageView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mQuickCutView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mRangeSeekBar:Lcom/lewis/edit/widgets/RangeSeekBar;

.field private mRankSeekNum:I

.field private mRankSeekStart:I

.field private mRankSeekStop:I

.field private mRankWidth:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectMusicPosition:I

.field private mSeparateHandler:Landroid/os/Handler;

.field private mSeparateTimeThread:Ljava/lang/Runnable;

.field private mShowPositionGroup:Landroid/widget/RadioGroup;

.field private mShowTexture:Landroid/widget/ImageView;

.field private mSingleClipVideoLength:I

.field private mSpeedLayout:Lcom/lewis/edit/widgets/EditSpeedLayout;

.field private mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

.field private mSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTrimTime:Landroid/widget/TextView;

.field private mTVImage:Landroid/widget/TextView;

.field private mTVImageLine:Landroid/widget/TextView;

.field private mTVPlayState:Landroid/widget/TextView;

.field private mTVTitle:Landroid/widget/TextView;

.field private mTVTitleLine:Landroid/widget/TextView;

.field private mTextAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

.field private mTextCancel:Landroid/widget/TextView;

.field private mTextProgress:Landroid/widget/TextView;

.field private mTextView:Landroid/view/View;

.field private mTextViewGone:Landroid/view/View;

.field private mTextureItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mTextureLayout:Landroidx/core/widget/NestedScrollView;

.field private mTextureList:Landroidx/recyclerview/widget/RecyclerView;

.field private mTimeThread:Ljava/lang/Runnable;

.field private mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

.field private mVideoLogoPath:Ljava/lang/String;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field private mVideoProgress:Landroid/widget/ProgressBar;

.field private mVideoScreenRate:F

.field private mVideoSound:F

.field private mVideoTime:Landroid/widget/TextView;

.field private mVideoView:Landroid/widget/VideoView;

.field private mVsLayout:Lcom/lewis/edit/widgets/VideoSeparateLayout;

.field private mVwEditRecycleClick:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSingleClipVideoLength:I

    .line 185
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsClipping:Z

    .line 186
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsSeparate:Z

    .line 189
    sget v1, Lcom/lewis/edit/R$id;->image_crop:I

    iput v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLastButton:I

    .line 190
    sget v1, Lcom/lewis/edit/R$id;->texture_pic:I

    iput v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLastTexture:I

    .line 206
    iput v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCurrentVideoHadPlayLength:I

    .line 217
    iput v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSelectMusicPosition:I

    .line 220
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsTitleGoIntoFlag:Z

    .line 223
    iput v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLastClickTextPosition:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 234
    iput v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioSize:F

    .line 237
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsAllVideoPlayFinishFlag:Z

    .line 240
    iput v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoSound:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 243
    iput v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoScreenRate:F

    .line 248
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsCmRunningFlag:Z

    const-string v1, ""

    .line 250
    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCmRunVideoPath:Ljava/lang/String;

    .line 253
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkSpeedFlag:Z

    .line 256
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkAddVideoFlag:Z

    .line 259
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsGoInToShareFlag:Z

    .line 265
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 267
    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbHelper:Lcom/cclink/obbdownloader/ObbHelper;

    .line 268
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbDownloadServiceEnable:Z

    .line 1884
    new-instance v0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;

    invoke-direct {v0, p0}, Lcom/lewis/edit/ui/activity/AVEditActivity$2;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTimeThread:Ljava/lang/Runnable;

    .line 1908
    new-instance v0, Lcom/lewis/edit/ui/activity/AVEditActivity$SeparateHandler;

    invoke-direct {v0, p0}, Lcom/lewis/edit/ui/activity/AVEditActivity$SeparateHandler;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSeparateHandler:Landroid/os/Handler;

    .line 1926
    new-instance v0, Lcom/lewis/edit/ui/activity/AVEditActivity$3;

    invoke-direct {v0, p0}, Lcom/lewis/edit/ui/activity/AVEditActivity$3;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSeparateTimeThread:Ljava/lang/Runnable;

    .line 2022
    new-instance v0, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$U8I0nGvcBEBr0TXjqgOrn6I5MfY;

    invoke-direct {v0, p0}, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$U8I0nGvcBEBr0TXjqgOrn6I5MfY;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextureItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/edit/ui/activity/AVEditActivity;)Ljava/util/List;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lewis/edit/ui/activity/AVEditActivity;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lewis/edit/ui/activity/AVEditActivity;)Landroid/os/Handler;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSeparateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/cclink/obbdownloader/ObbHelper;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbHelper:Lcom/cclink/obbdownloader/ObbHelper;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/lewis/edit/ui/activity/AVEditActivity;Z)Z
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbDownloadServiceEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lewis/edit/ui/activity/AVEditActivity;)Landroid/widget/VideoView;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lewis/edit/ui/activity/AVEditActivity;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsCmRunningFlag:Z

    return p0
.end method

.method static synthetic access$400(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/lewis/edit/widgets/GLVideoRenderer;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/lewis/edit/model/entries/VideoEditInfo;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lewis/edit/ui/activity/AVEditActivity;)Landroid/os/Handler;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/lewis/edit/widgets/VideoSeparateLayout;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVsLayout:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lewis/edit/ui/activity/AVEditActivity;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsSeparate:Z

    return p0
.end method

.method private cancelMerge()V
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->cancelVideoEdit()V

    .line 1480
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->successCancel()V

    return-void
.end method

.method private checkExpansionFilesDelivered()V
    .locals 5

    const-string v0, "AVEditActivity"

    .line 2698
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v1

    const-string v2, "obb=========checkExpansionFilesDelivered"

    invoke-interface {v1, v2}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 2701
    new-instance v1, Lcom/cclink/obbdownloader/ObbHelper;

    new-instance v2, Lcom/lewis/edit/ui/activity/AVEditActivity$4;

    invoke-direct {v2, p0}, Lcom/lewis/edit/ui/activity/AVEditActivity$4;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/cclink/obbdownloader/ObbHelper;-><init>(Landroid/content/Context;Lcom/cclink/obbdownloader/ObbInfo;)V

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbHelper:Lcom/cclink/obbdownloader/ObbHelper;

    .line 2726
    invoke-virtual {v1}, Lcom/cclink/obbdownloader/ObbHelper;->expansionFilesDelivered()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2727
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "obb=========expansionFilesDelivered   no"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2728
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbDownloadServiceEnable:Z

    .line 2730
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbHelper:Lcom/cclink/obbdownloader/ObbHelper;

    new-instance v1, Lcom/lewis/edit/ui/activity/AVEditActivity$5;

    invoke-direct {v1, p0}, Lcom/lewis/edit/ui/activity/AVEditActivity$5;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/cclink/obbdownloader/ObbHelper;->downloadExpansionFiles(Landroid/app/Activity;Lcom/cclink/obbdownloader/ObbHelperListener;)V

    goto :goto_0

    .line 2765
    :cond_0
    iput-boolean v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbDownloadServiceEnable:Z

    .line 2766
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v1

    const-string v3, "obb=========expansionFilesDelivered   yes"

    invoke-interface {v1, v3}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 2769
    invoke-static {p0}, Lcom/powervision/resources/ObbResourcesUtil;->checkObbResUnzip(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2771
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "obb=========checkObbResUnzip  no"

    invoke-interface {v1, v4, v3}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2772
    invoke-static {p0}, Lcom/powervision/resources/ObbResourcesUtil;->getObbParseDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2773
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obb=========obb parse directory folder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2774
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbHelper:Lcom/cclink/obbdownloader/ObbHelper;

    new-instance v2, Lcom/lewis/edit/ui/activity/AVEditActivity$6;

    invoke-direct {v2, p0}, Lcom/lewis/edit/ui/activity/AVEditActivity$6;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/cclink/obbdownloader/ObbHelper;->unzipMainobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/ObbHelperListener;)V

    goto :goto_0

    .line 2790
    :cond_1
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "obb=========checkObbResUnzip  yes"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private controlWatermarkShow()V
    .locals 5

    .line 1162
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideWatermark()V

    .line 1163
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getCheckId()I

    move-result v0

    .line 1164
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getVideoAllTime()I

    move-result v1

    .line 1166
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isHaveDefaultLogo()Z

    move-result v2

    .line 1168
    sget v3, Lcom/lewis/edit/R$id;->show_start:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4, v1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->controlWatermarkShow(III)V

    goto :goto_2

    .line 1171
    :cond_0
    sget v3, Lcom/lewis/edit/R$id;->show_end:I

    if-ne v0, v3, :cond_3

    .line 1173
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    add-int/lit8 v3, v1, -0x3

    if-eqz v2, :cond_1

    add-int/lit8 v3, v3, -0x2

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, -0x2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->controlWatermarkShow(III)V

    goto :goto_2

    .line 1175
    :cond_3
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, -0x2

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    invoke-virtual {v0, v1, v4, v2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->controlWatermarkShow(III)V

    :goto_2
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    .line 1790
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLayoutProgress:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1791
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextProgress:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private getLayoutParams(II)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    .line 2194
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 2197
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2198
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/high16 p1, 0x40c00000    # 6.0f

    .line 2199
    invoke-static {p1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 2201
    :cond_0
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2202
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2203
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2204
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    :goto_0
    return-object v0
.end method

.method private getSingleVideoTimeLength(Ljava/lang/String;)J
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 1063
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getVideoThumb(Ljava/lang/String;)V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAdapter:Lcom/lewis/edit/ui/adapter/FrameAdapter;

    invoke-virtual {v0}, Lcom/lewis/edit/ui/adapter/FrameAdapter;->clearData()V

    .line 820
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->getCropVideoThumb(Ljava/lang/String;)V

    return-void
.end method

.method private glDestroyFun()V
    .locals 1

    .line 2590
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    if-eqz v0, :cond_0

    .line 2591
    invoke-virtual {v0}, Lcom/lewis/edit/widgets/GLVideoRenderer;->destroyRenderer()V

    :cond_0
    const/4 v0, 0x0

    .line 2593
    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    return-void
.end method

.method private hideTitle()V
    .locals 2

    .line 2664
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mComplete:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2665
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2666
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private initAdapter()V
    .locals 4

    .line 785
    new-instance v0, Lcom/lewis/edit/ui/adapter/FrameAdapter;

    invoke-direct {v0, p0}, Lcom/lewis/edit/ui/adapter/FrameAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAdapter:Lcom/lewis/edit/ui/adapter/FrameAdapter;

    const-string v0, "AVEditActivity"

    .line 786
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankWidth:I

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAdapter:Lcom/lewis/edit/ui/adapter/FrameAdapter;

    iget v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankWidth:I

    div-int/lit8 v1, v1, 0x3

    const/high16 v3, 0x425c0000    # 55.0f

    invoke-static {v3}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/lewis/edit/ui/adapter/FrameAdapter;->setItemWidthAndHeight(II)V

    .line 788
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCropRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAdapter:Lcom/lewis/edit/ui/adapter/FrameAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    .line 792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    .line 794
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPathArray:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPathArray:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    :goto_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 801
    new-instance v3, Lcom/lewis/edit/model/entries/SingleVideoBean;

    invoke-direct {v3, v1, v2}, Lcom/lewis/edit/model/entries/SingleVideoBean;-><init>(Ljava/lang/String;Z)V

    .line 802
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoLogoPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setHaveDefaultLogo(Z)V

    .line 808
    new-instance v0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    .line 809
    invoke-virtual {v0, p0}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->setOnItemClickListener(Lcom/lewis/edit/ui/adapter/SpliceAdapter$OnItemClickListener;)V

    .line 810
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initMediaPlayer()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private initRangeSeekBar(I)V
    .locals 8

    .line 600
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->cancelCropVideoThumb()V

    .line 603
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 605
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSingleVideoTimeLength(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHadSelectVideoAllTime:J

    .line 608
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRangeSeekBar:Lcom/lewis/edit/widgets/RangeSeekBar;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/lewis/edit/widgets/RangeSeekBar;->setBlockPosition(F)V

    .line 609
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRangeSeekBar:Lcom/lewis/edit/widgets/RangeSeekBar;

    iget-wide v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHadSelectVideoAllTime:J

    iget v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankWidth:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/lewis/edit/widgets/RangeSeekBar;->setDefaultMinLength(JI)V

    const/4 v1, 0x0

    .line 610
    iput v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    int-to-long v2, v1

    .line 611
    invoke-static {v2, v3}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v2

    .line 612
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mStartTrimTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-wide v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHadSelectVideoAllTime:J

    int-to-long v5, p1

    mul-long v3, v3, v5

    iget p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankWidth:I

    int-to-long v5, p1

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int p1, v3

    iput p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStop:I

    .line 615
    iput p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSingleClipVideoLength:I

    .line 617
    iget v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    sub-int v3, p1, v3

    iput v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    int-to-long v3, p1

    .line 618
    invoke-static {v3, v4}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object p1

    .line 619
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mEndTrimTime:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCropTime:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStop:I

    iget v7, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%ds"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    invoke-direct {p0, v2, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->setVideoPlayTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStop:I

    iget v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 628
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 630
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getVideoThumb(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->startPlayVideo(Ljava/lang/String;)V

    return-void
.end method

.method private initRecyclerView()V
    .locals 3

    .line 499
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 500
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 502
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 503
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCropRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 505
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 506
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMusicList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 508
    iput v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSelectMusicPosition:I

    .line 509
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->addMusicList()V

    .line 511
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 512
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextureList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 513
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->addPicList()V

    .line 515
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 516
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mEditRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 517
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->addEditFunctionList()V

    return-void
.end method

.method private initVideoState()V
    .locals 5

    .line 555
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsClipping:Z

    .line 559
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsSeparate:Z

    .line 561
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsAllVideoPlayFinishFlag:Z

    .line 563
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsGoInToShareFlag:Z

    .line 565
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkAddVideoFlag:Z

    .line 567
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideWatermark()V

    .line 569
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 571
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1, v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSingleVideoPlayFlag(Z)V

    .line 573
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->getVideoAllTime(Ljava/util/List;IIZ)V

    return-void
.end method

.method private playAudio(Ljava/lang/String;Z)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initMediaPlayer()V

    :cond_0
    if-eqz p2, :cond_1

    .line 458
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 459
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 464
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectAudioPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 465
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    .line 467
    :cond_2
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 468
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 470
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private playState(Ljava/lang/String;)V
    .locals 1

    .line 2263
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPlayState:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const-string v0, "pause"

    .line 2264
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2265
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPlayState:Landroid/widget/ImageView;

    sget v0, Lcom/lewis/edit/R$mipmap;->edit_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2266
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVPlayState:Landroid/widget/TextView;

    sget v0, Lcom/lewis/edit/R$string;->App_MediaLib_192:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2268
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPlayState:Landroid/widget/ImageView;

    sget v0, Lcom/lewis/edit/R$mipmap;->edit_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2269
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVPlayState:Landroid/widget/TextView;

    sget v0, Lcom/lewis/edit/R$string;->App_MediaLib_125:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private requestPermissions()V
    .locals 3

    .line 524
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 525
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/lewis/edit/ui/activity/AVEditActivity$1;

    invoke-direct {v1, p0}, Lcom/lewis/edit/ui/activity/AVEditActivity$1;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V

    .line 526
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private selectTexture(Z)V
    .locals 4

    .line 1722
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSelectTitle(Z)V

    .line 1724
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVImage:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1725
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVImageLine:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1726
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1727
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVTitleLine:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 1730
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->addTextList()V

    goto :goto_1

    .line 1732
    :cond_2
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->addPicList()V

    :goto_1
    return-void
.end method

.method private setVideoPlayTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1878
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoTime:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "%s/%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showOrHideColorMixing()V
    .locals 3

    .line 2648
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCmLayout:Lcom/lewis/edit/widgets/EditColorMixingLayout;

    invoke-static {v0}, Lcom/powervision/base/utils/AnimUtils;->doHideOrShowBottomView(Landroid/view/View;)V

    .line 2649
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCmLayout:Lcom/lewis/edit/widgets/EditColorMixingLayout;

    invoke-virtual {v0}, Lcom/lewis/edit/widgets/EditColorMixingLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 2651
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLVideoView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 2652
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideTitle()V

    goto :goto_0

    .line 2654
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 2655
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLVideoView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 2656
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showTitle()V

    :goto_0
    return-void
.end method

.method private showOrHideEditViewList(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2317
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mFlEditRecycleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2320
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mFlEditRecycleLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/powervision/base/utils/AnimUtils;->doHideOrShowBottomView(Landroid/view/View;)V

    return-void
.end method

.method private showOrHideQuickCutView()V
    .locals 1

    .line 2600
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mQuickCutView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Lcom/powervision/base/utils/AnimUtils;->doHideOrShowBottomView(Landroid/view/View;)V

    .line 2601
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mQuickCutView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2602
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideTitle()V

    goto :goto_0

    .line 2604
    :cond_0
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showTitle()V

    :goto_0
    return-void
.end method

.method private showOrHideVideoSeparate()V
    .locals 1

    .line 2612
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVsLayout:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    invoke-static {v0}, Lcom/powervision/base/utils/AnimUtils;->doHideOrShowBottomView(Landroid/view/View;)V

    .line 2613
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVsLayout:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    invoke-virtual {v0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2614
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideTitle()V

    goto :goto_0

    .line 2616
    :cond_0
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showTitle()V

    :goto_0
    return-void
.end method

.method private showOrHideVideoSound()V
    .locals 1

    .line 2636
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mBmLayout:Lcom/lewis/edit/widgets/BackgroundMusicLayout;

    invoke-static {v0}, Lcom/powervision/base/utils/AnimUtils;->doHideOrShowBottomView(Landroid/view/View;)V

    .line 2637
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mBmLayout:Lcom/lewis/edit/widgets/BackgroundMusicLayout;

    invoke-virtual {v0}, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2638
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideTitle()V

    goto :goto_0

    .line 2640
    :cond_0
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showTitle()V

    :goto_0
    return-void
.end method

.method private showOrHideVideoSpeed()V
    .locals 1

    .line 2624
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpeedLayout:Lcom/lewis/edit/widgets/EditSpeedLayout;

    invoke-static {v0}, Lcom/powervision/base/utils/AnimUtils;->doHideOrShowBottomView(Landroid/view/View;)V

    .line 2625
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpeedLayout:Lcom/lewis/edit/widgets/EditSpeedLayout;

    invoke-virtual {v0}, Lcom/lewis/edit/widgets/EditSpeedLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2626
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideTitle()V

    goto :goto_0

    .line 2628
    :cond_0
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showTitle()V

    :goto_0
    return-void
.end method

.method private showProgress(I)V
    .locals 4

    if-gez p1, :cond_0

    return-void

    .line 1802
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1803
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextProgress:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%d%%"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showProgressDialog()V
    .locals 4

    .line 1764
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->stopWatermarkInterval()V

    .line 1766
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    const-string v0, "pause"

    .line 1768
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1771
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    .line 1773
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLayoutProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1774
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "video"

    const-string v2, "video/thumbnails"

    .line 1775
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp4"

    const-string v3, "jpg"

    .line 1776
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1777
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1780
    :goto_0
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageHolder:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/lewis/edit/R$mipmap;->edit_video_save_photo_holder:I

    .line 1781
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholderOf(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget v2, Lcom/lewis/edit/R$mipmap;->edit_video_save_photo_holder:I

    .line 1782
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    const-wide/32 v2, 0x1e8480

    .line 1783
    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    .line 1781
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageHolder:Landroid/widget/ImageView;

    .line 1783
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private showTitle()V
    .locals 2

    .line 2674
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mComplete:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2675
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2676
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private showWatermarkTitle()V
    .locals 6

    .line 2123
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeAllViews()V

    .line 2124
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainerGone:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 2126
    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextView:Landroid/view/View;

    .line 2127
    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextViewGone:Landroid/view/View;

    .line 2128
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSelectTextIndex()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2130
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2132
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    .line 2136
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2138
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 2142
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/lewis/edit/R$layout;->edit_text_to_pic1:I

    iget-object v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextView:Landroid/view/View;

    .line 2143
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/lewis/edit/R$layout;->edit_text_to_pic1:I

    iget-object v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainerGone:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextViewGone:Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 2145
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/lewis/edit/R$layout;->edit_text_to_pic2:I

    iget-object v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextView:Landroid/view/View;

    .line 2146
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/lewis/edit/R$layout;->edit_text_to_pic2:I

    iget-object v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainerGone:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextViewGone:Landroid/view/View;

    .line 2147
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    .line 2149
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextView:Landroid/view/View;

    sget v4, Lcom/lewis/edit/R$id;->text_subtitle:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2150
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget v5, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoScreenRate:F

    mul-float v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2151
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2153
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextViewGone:Landroid/view/View;

    sget v4, Lcom/lewis/edit/R$id;->text_subtitle:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2154
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 2156
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/lewis/edit/R$layout;->edit_text_to_pic3:I

    iget-object v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextView:Landroid/view/View;

    .line 2157
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/lewis/edit/R$layout;->edit_text_to_pic3:I

    iget-object v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainerGone:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextViewGone:Landroid/view/View;

    goto :goto_0

    .line 2159
    :cond_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/lewis/edit/R$layout;->edit_text_to_pic4:I

    iget-object v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextView:Landroid/view/View;

    .line 2160
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/lewis/edit/R$layout;->edit_text_to_pic4:I

    iget-object v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainerGone:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextViewGone:Landroid/view/View;

    .line 2162
    :goto_0
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 2164
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextView:Landroid/view/View;

    sget v4, Lcom/lewis/edit/R$id;->text_title:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2165
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget v5, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoScreenRate:F

    mul-float v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2166
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2168
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextViewGone:Landroid/view/View;

    sget v4, Lcom/lewis/edit/R$id;->text_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2169
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    const/high16 v1, 0x41e00000    # 28.0f

    .line 2171
    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->sp2px(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    .line 2172
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2173
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2176
    :cond_5
    sget v1, Lcom/lewis/edit/R$id;->container:I

    invoke-direct {p0, v0, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getLayoutParams(II)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v1

    .line 2177
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2178
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 2180
    sget v1, Lcom/lewis/edit/R$id;->container_gone:I

    invoke-direct {p0, v0, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getLayoutParams(II)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    .line 2181
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextViewGone:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2182
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainerGone:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextViewGone:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 2185
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method private startPlayVideo(Ljava/lang/String;)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 585
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 588
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    const-string p1, "play"

    .line 589
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 591
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 592
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTimeThread:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startShare(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 1072
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsGoInToShareFlag:Z

    .line 1073
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/share/shareActivity"

    .line 1074
    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    const-string v1, "video_path"

    .line 1075
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 1076
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method

.method private switchView(I)V
    .locals 4

    .line 1743
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageCrop:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/edit/R$id;->image_crop:I

    if-ne p1, v1, :cond_0

    sget v1, Lcom/lewis/edit/R$mipmap;->edit_crop_select:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/lewis/edit/R$mipmap;->edit_crop_normal:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1744
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageAVMerge:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/edit/R$id;->image_avmerge:I

    if-ne p1, v1, :cond_1

    sget v1, Lcom/lewis/edit/R$mipmap;->edit_avmerge_select:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/lewis/edit/R$mipmap;->edit_avmerge_normal:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1745
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageTexture:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/edit/R$id;->image_texture:I

    if-ne p1, v1, :cond_2

    sget v1, Lcom/lewis/edit/R$mipmap;->edit_texture_select:I

    goto :goto_2

    :cond_2
    sget v1, Lcom/lewis/edit/R$mipmap;->edit_texture_normal:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1747
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCropLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/lewis/edit/R$id;->image_crop:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1748
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMusicLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/lewis/edit/R$id;->image_avmerge:I

    if-ne p1, v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1749
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextureLayout:Landroidx/core/widget/NestedScrollView;

    sget v1, Lcom/lewis/edit/R$id;->image_texture:I

    if-ne p1, v1, :cond_5

    goto :goto_5

    :cond_5
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setVisibility(I)V

    .line 1750
    sget v0, Lcom/lewis/edit/R$id;->image_avmerge:I

    if-ne v0, p1, :cond_6

    .line 1752
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMusicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSelectMusicIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setSelect(I)V

    goto :goto_6

    .line 1753
    :cond_6
    sget v0, Lcom/lewis/edit/R$id;->image_texture:I

    if-ne v0, p1, :cond_7

    .line 1754
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSelectTitle()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->selectTexture(Z)V

    .line 1756
    :cond_7
    :goto_6
    iput p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLastButton:I

    return-void
.end method

.method private updateMuteState(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1312
    sget p1, Lcom/lewis/edit/R$mipmap;->edit_mute_true:I

    .line 1313
    sget v0, Lcom/lewis/edit/R$string;->App_MediaLib_119:I

    goto :goto_0

    .line 1315
    :cond_0
    sget p1, Lcom/lewis/edit/R$mipmap;->edit_mute:I

    .line 1316
    sget v0, Lcom/lewis/edit/R$string;->App_MediaLib_95:I

    .line 1318
    :goto_0
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mEditViewAdapter:Lcom/lewis/edit/ui/adapter/EditViewAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, v0}, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->updateItemData(III)V

    return-void
.end method

.method private updateVideoProgressData(IZ)V
    .locals 5

    .line 1016
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    int-to-long v0, p1

    .line 1018
    invoke-static {v0, v1}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v0

    .line 1021
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSingleVideoPlayFlag()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1024
    iget-boolean v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsClipping:Z

    if-eqz v1, :cond_0

    .line 1025
    iget v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    goto :goto_0

    .line 1027
    :cond_0
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    .line 1028
    invoke-virtual {v2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1027
    invoke-direct {p0, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSingleVideoTimeLength(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    :goto_0
    int-to-long v1, v1

    .line 1030
    invoke-static {v1, v2}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v1

    .line 1031
    iget-boolean v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsClipping:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    if-lt p1, v2, :cond_1

    .line 1033
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    iget v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1034
    iget p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_4

    .line 1042
    iget-boolean p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsClipping:Z

    if-eqz p1, :cond_2

    .line 1043
    iget p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    int-to-long p1, p1

    invoke-static {p1, p2}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 1048
    :cond_3
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getVideoAllTime()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v1

    .line 1051
    :cond_4
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->setVideoPlayTime(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private workAudioPlayState(Z)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectAudioPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 483
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 484
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 487
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 488
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    :cond_1
    :goto_0
    return-void
.end method

.method private workColorMixing()V
    .locals 6

    .line 731
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideColorMixing()V

    .line 734
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 737
    invoke-static {v1, v2}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v1

    .line 738
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSingleVideoTimeLength(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    int-to-long v4, v3

    .line 740
    invoke-static {v4, v5}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v2

    .line 743
    iget-object v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCmLayout:Lcom/lewis/edit/widgets/EditColorMixingLayout;

    if-eqz v4, :cond_0

    .line 744
    invoke-virtual {v4}, Lcom/lewis/edit/widgets/EditColorMixingLayout;->initShowView()V

    .line 748
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/lewis/edit/ui/activity/AVEditActivity;->setVideoPlayTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 753
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 757
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 759
    new-instance v1, Lcom/lewis/edit/widgets/GLVideoRenderer;

    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLVideoView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, p0, v2, p0}, Lcom/lewis/edit/widgets/GLVideoRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/lewis/edit/widgets/GLVideoRenderer$OnVideoMediaCompletionListener;)V

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    const/4 v2, 0x1

    .line 761
    :cond_1
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    invoke-virtual {v1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->setColorInit()V

    .line 762
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    invoke-virtual {v1, v0}, Lcom/lewis/edit/widgets/GLVideoRenderer;->initMediaPlayer(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 764
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLVideoView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 765
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLVideoView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    goto :goto_0

    .line 767
    :cond_2
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    invoke-virtual {v1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->createTexFun()V

    .line 768
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLVideoView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 771
    :goto_0
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 772
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 775
    new-instance v1, Lcom/lewis/edit/utils/mp4/Mp4Processor;

    invoke-direct {v1, v0, p0}, Lcom/lewis/edit/utils/mp4/Mp4Processor;-><init>(Ljava/lang/String;Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;)V

    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMp4Processor:Lcom/lewis/edit/utils/mp4/Mp4Processor;

    .line 776
    invoke-static {}, Lcom/lewis/edit/utils/FileUtil;->getMP4OutPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCmRunVideoPath:Ljava/lang/String;

    .line 777
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMp4Processor:Lcom/lewis/edit/utils/mp4/Mp4Processor;

    invoke-virtual {v1, v0}, Lcom/lewis/edit/utils/mp4/Mp4Processor;->setOutputPath(Ljava/lang/String;)V

    return-void
.end method

.method private workVideoSeparate()V
    .locals 8

    .line 641
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->cancelVideoThumbBySecond()V

    .line 644
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 647
    invoke-static {v1, v2}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSingleVideoTimeLength(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 650
    div-long v4, v2, v4

    long-to-int v5, v4

    int-to-long v6, v5

    .line 652
    invoke-static {v6, v7}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v4

    .line 655
    iget-object v6, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVsLayout:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    if-eqz v6, :cond_0

    long-to-int v3, v2

    .line 656
    invoke-virtual {v6, v3, v0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->initShowData(ILjava/lang/String;)V

    .line 660
    :cond_0
    invoke-direct {p0, v1, v4}, Lcom/lewis/edit/ui/activity/AVEditActivity;->setVideoPlayTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 665
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 668
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v1, v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->getVideoThumbBySecond(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showVideoSeparate(Ljava/lang/String;)V

    return-void
.end method

.method private workVideoShowFun(Ljava/lang/String;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mFlVideo:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$qUxa6IAXc3Qi7HoVNDXmUSd_lFY;

    invoke-direct {v1, p0, p1}, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$qUxa6IAXc3Qi7HoVNDXmUSd_lFY;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private workVideoSpeed()V
    .locals 7

    const/4 v0, 0x0

    .line 696
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkSpeedFlag:Z

    .line 698
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 701
    invoke-static {v2, v3}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-direct {p0, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSingleVideoTimeLength(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v4, v3

    int-to-long v5, v4

    .line 704
    invoke-static {v5, v6}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object v3

    .line 707
    iget-object v5, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpeedLayout:Lcom/lewis/edit/widgets/EditSpeedLayout;

    if-eqz v5, :cond_0

    .line 708
    invoke-virtual {v5}, Lcom/lewis/edit/widgets/EditSpeedLayout;->initShowView()V

    .line 712
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/lewis/edit/ui/activity/AVEditActivity;->setVideoPlayTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 717
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 720
    invoke-direct {p0, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->startPlayVideo(Ljava/lang/String;)V

    .line 723
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideVideoSpeed()V

    return-void
.end method


# virtual methods
.method public addKeyFrameSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addResourceList(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1127
    new-instance p2, Lcom/lewis/edit/ui/adapter/ListAdapter;

    invoke-direct {p2, p1}, Lcom/lewis/edit/ui/adapter/ListAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMusicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    .line 1128
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMusicList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1130
    new-instance p2, Lcom/lewis/edit/ui/adapter/ListAdapter;

    invoke-direct {p2, p1}, Lcom/lewis/edit/ui/adapter/ListAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    .line 1131
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextureList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1132
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSelectPicIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setSelect(I)V

    .line 1133
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextureItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 1135
    new-instance p2, Lcom/lewis/edit/ui/adapter/ListAdapter;

    invoke-direct {p2, p1}, Lcom/lewis/edit/ui/adapter/ListAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    .line 1136
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextureList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1137
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSelectTextIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setSelect(I)V

    .line 1138
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextureItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 1140
    :cond_2
    new-instance p2, Lcom/lewis/edit/ui/adapter/EditViewAdapter;

    invoke-direct {p2, p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mEditViewAdapter:Lcom/lewis/edit/ui/adapter/EditViewAdapter;

    .line 1141
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mEditRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1142
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mEditViewAdapter:Lcom/lewis/edit/ui/adapter/EditViewAdapter;

    invoke-virtual {p1, p0}, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->setOnItemClickListener(Lcom/lewis/edit/ui/adapter/EditViewAdapter$OnItemClickListener;)V

    :goto_0
    return-void
.end method

.method public cancelDialog()V
    .locals 1

    .line 1299
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLoadingDialog:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLoadingDialog:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_0
    return-void
.end method

.method public clipSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1233
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideQuickCutView()V

    .line 1236
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v0

    .line 1239
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1240
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {v1, v0}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyItemChanged(I)V

    .line 1243
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/model/entries/SingleVideoBean;

    .line 1244
    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->setOriginalVideoPath(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1245
    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->setMuteStateFlag(Z)V

    .line 1248
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public controlMute(Ljava/lang/String;Z)V
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v0

    if-eqz p2, :cond_0

    .line 1280
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lewis/edit/model/entries/SingleVideoBean;

    .line 1281
    invoke-virtual {p2, p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->setMuteVideoPath(Ljava/lang/String;)V

    .line 1284
    :cond_0
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1285
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {p1, v0}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyItemChanged(I)V

    .line 1287
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public editFailure(Ljava/lang/String;)V
    .locals 0

    .line 1084
    sget p1, Lcom/lewis/edit/R$string;->App_MediaLib_194:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 1085
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->dismissProgressDialog()V

    return-void
.end method

.method public editProgress(I)V
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showProgress(I)V

    return-void
.end method

.method public editSuccess(Ljava/lang/String;)V
    .locals 2

    .line 899
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->dismissProgressDialog()V

    .line 901
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_video_share"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 903
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->startShare(Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->saveDataFileToDb(Ljava/lang/String;)V

    return-void
.end method

.method public encoderSuccess()V
    .locals 1

    .line 1579
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCmRunVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCmRunVideoPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->videoColorMixingSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected getLayoutRes()I
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 274
    sget v0, Lcom/lewis/edit/R$layout;->edit_activity_avedit:I

    return v0
.end method

.method public getVideoAllTime(IZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 917
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p2, p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setVideoAllTime(I)V

    .line 918
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    const-wide/16 v2, 0x0

    .line 920
    invoke-static {v2, v3}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object p2

    int-to-long v2, p1

    .line 922
    invoke-static {v2, v3}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object p1

    .line 924
    invoke-direct {p0, p2, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->setVideoPlayTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setCurrentPlayVideoPosition(I)V

    .line 928
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->startPlayVideo(Ljava/lang/String;)V

    .line 930
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectAudioPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 931
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 932
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    .line 936
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSingleVideoPlayFlag()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    .line 937
    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSelectTitle()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSelectPicIndex()I

    move-result p2

    if-eqz p2, :cond_2

    .line 939
    :cond_1
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p2, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->stopWatermarkInterval()V

    .line 941
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->controlWatermarkShow()V

    .line 944
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->updateVideoProgressData(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public hideWatermark()V
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected initData()V
    .locals 3

    .line 419
    invoke-static {}, Lcom/powervision/base/utils/DensityUtils;->screenWidth()I

    move-result v0

    const/high16 v1, 0x42820000    # 65.0f

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankWidth:I

    const-string v0, "logo_1080.mp4"

    .line 421
    invoke-static {p0, v0}, Lcom/lewis/edit/utils/FileUtil;->copyAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoLogoPath:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPathArray:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPathArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPath:Ljava/lang/String;

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    .line 430
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPathArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workEditVideo(Ljava/util/List;I)V

    .line 433
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->checkExpansionFilesDelivered()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 279
    sget p1, Lcom/lewis/edit/R$id;->edit_toolbar:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 280
    sget v0, Lcom/lewis/edit/R$id;->complete:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mComplete:Landroid/widget/TextView;

    .line 281
    sget v0, Lcom/lewis/edit/R$id;->video_time:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoTime:Landroid/widget/TextView;

    .line 282
    sget v0, Lcom/lewis/edit/R$id;->fl_video_view:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mFlVideo:Landroid/widget/FrameLayout;

    .line 283
    sget v0, Lcom/lewis/edit/R$id;->video_view:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    .line 284
    sget v0, Lcom/lewis/edit/R$id;->gl_video_view:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLVideoView:Landroid/opengl/GLSurfaceView;

    .line 285
    sget v0, Lcom/lewis/edit/R$id;->range_seek_bar:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/widgets/RangeSeekBar;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRangeSeekBar:Lcom/lewis/edit/widgets/RangeSeekBar;

    .line 286
    sget v0, Lcom/lewis/edit/R$id;->start_time_trim:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mStartTrimTime:Landroid/widget/TextView;

    .line 287
    sget v0, Lcom/lewis/edit/R$id;->end_time_trim:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mEndTrimTime:Landroid/widget/TextView;

    .line 288
    sget v0, Lcom/lewis/edit/R$id;->crop_time:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCropTime:Landroid/widget/TextView;

    .line 289
    sget v0, Lcom/lewis/edit/R$id;->progress:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    .line 290
    sget v0, Lcom/lewis/edit/R$id;->show_style_group:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowPositionGroup:Landroid/widget/RadioGroup;

    .line 291
    sget v0, Lcom/lewis/edit/R$id;->image_state:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPlayState:Landroid/widget/ImageView;

    .line 292
    sget v0, Lcom/lewis/edit/R$id;->play_state:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVPlayState:Landroid/widget/TextView;

    .line 293
    sget v0, Lcom/lewis/edit/R$id;->image_crop:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageCrop:Landroid/widget/ImageView;

    .line 294
    sget v0, Lcom/lewis/edit/R$id;->image_avmerge:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageAVMerge:Landroid/widget/ImageView;

    .line 295
    sget v0, Lcom/lewis/edit/R$id;->image_texture:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageTexture:Landroid/widget/ImageView;

    .line 296
    sget v0, Lcom/lewis/edit/R$id;->crop_layout:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCropLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 297
    sget v0, Lcom/lewis/edit/R$id;->sound_layout:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMusicLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 298
    sget v0, Lcom/lewis/edit/R$id;->texture_layout:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextureLayout:Landroidx/core/widget/NestedScrollView;

    .line 299
    sget v0, Lcom/lewis/edit/R$id;->splice_view:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 300
    sget v0, Lcom/lewis/edit/R$id;->iv_show_audio:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIvShowAudio:Landroid/widget/ImageView;

    .line 301
    sget v0, Lcom/lewis/edit/R$id;->music_list:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMusicList:Landroidx/recyclerview/widget/RecyclerView;

    .line 302
    sget v0, Lcom/lewis/edit/R$id;->texture_list:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextureList:Landroidx/recyclerview/widget/RecyclerView;

    .line 303
    sget v0, Lcom/lewis/edit/R$id;->texture_pic:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVImage:Landroid/widget/TextView;

    .line 304
    sget v0, Lcom/lewis/edit/R$id;->pic_underline:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVImageLine:Landroid/widget/TextView;

    .line 305
    sget v0, Lcom/lewis/edit/R$id;->texture_text:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVTitle:Landroid/widget/TextView;

    .line 306
    sget v0, Lcom/lewis/edit/R$id;->text_underline:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVTitleLine:Landroid/widget/TextView;

    .line 307
    sget v0, Lcom/lewis/edit/R$id;->show_texture:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    .line 308
    sget v0, Lcom/lewis/edit/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 309
    sget v0, Lcom/lewis/edit/R$id;->container_gone:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainerGone:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 310
    sget v0, Lcom/lewis/edit/R$id;->edit_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mEditRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 311
    sget v0, Lcom/lewis/edit/R$id;->fl_edit_recycler_layout:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mFlEditRecycleLayout:Landroid/widget/FrameLayout;

    .line 312
    sget v0, Lcom/lewis/edit/R$id;->vw_edit_view_click:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVwEditRecycleClick:Landroid/view/View;

    .line 313
    sget v0, Lcom/lewis/edit/R$id;->crop_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCropRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 314
    sget v0, Lcom/lewis/edit/R$id;->quick_cut_layout:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mQuickCutView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 315
    sget v0, Lcom/lewis/edit/R$id;->edit_cancel_icon:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageCancel:Landroid/widget/ImageView;

    .line 316
    sget v0, Lcom/lewis/edit/R$id;->edit_confirm_icon:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageConfirm:Landroid/widget/ImageView;

    .line 318
    sget v0, Lcom/lewis/edit/R$id;->progress_layout:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLayoutProgress:Landroid/widget/RelativeLayout;

    .line 319
    sget v0, Lcom/lewis/edit/R$id;->text_progress:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextProgress:Landroid/widget/TextView;

    .line 320
    sget v0, Lcom/lewis/edit/R$id;->text_cancel:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextCancel:Landroid/widget/TextView;

    .line 321
    sget v0, Lcom/lewis/edit/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 322
    sget v0, Lcom/lewis/edit/R$id;->image_holder:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageHolder:Landroid/widget/ImageView;

    .line 324
    sget v0, Lcom/lewis/edit/R$id;->fl_vs_layout:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/widgets/VideoSeparateLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVsLayout:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    .line 325
    invoke-virtual {v0, p0}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->setVideoSeparateListener(Lcom/lewis/edit/widgets/VideoSeparateLayout$WorkVideoSeparateListener;)V

    .line 327
    sget v0, Lcom/lewis/edit/R$id;->fl_speed_layout:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/widgets/EditSpeedLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpeedLayout:Lcom/lewis/edit/widgets/EditSpeedLayout;

    .line 328
    invoke-virtual {v0, p0}, Lcom/lewis/edit/widgets/EditSpeedLayout;->setSpeedListener(Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;)V

    .line 330
    sget v0, Lcom/lewis/edit/R$id;->fl_bm_layout:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mBmLayout:Lcom/lewis/edit/widgets/BackgroundMusicLayout;

    .line 331
    invoke-virtual {v0, p0}, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->setBackgroundMusicListener(Lcom/lewis/edit/widgets/BackgroundMusicLayout$WorkBackgroundMusicListener;)V

    .line 333
    sget v0, Lcom/lewis/edit/R$id;->fl_color_mixing:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/widgets/EditColorMixingLayout;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCmLayout:Lcom/lewis/edit/widgets/EditColorMixingLayout;

    .line 334
    invoke-virtual {v0, p0}, Lcom/lewis/edit/widgets/EditColorMixingLayout;->setColorMixingListener(Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;)V

    .line 337
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 338
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->bringToFront()V

    .line 341
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLVideoView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsCmRunningFlag:Z

    .line 344
    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 345
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "video_path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPath:Ljava/lang/String;

    .line 355
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "video_path_array"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPathArray:Ljava/util/ArrayList;

    .line 359
    :cond_1
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    .line 362
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPathArray:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPathArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPath:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workVideoShowFun(Ljava/lang/String;)V

    .line 365
    new-instance p1, Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-direct {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    .line 368
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initMediaPlayer()V

    .line 371
    iput v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCurrentVideoHadPlayLength:I

    .line 374
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initRecyclerView()V

    .line 377
    invoke-static {p0}, Lcom/lewis/edit/utils/DialogUtil;->showProgressDialog(Landroid/content/Context;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLoadingDialog:Lcom/powervision/base/views/LoadingProgressBar;

    return-void
.end method

.method public synthetic lambda$new$3$AVEditActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 2023
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2027
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSelectTitle()Z

    move-result p1

    if-eqz p1, :cond_4

    if-lez p3, :cond_2

    const/4 p1, 0x1

    .line 2029
    iput-boolean p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsTitleGoIntoFlag:Z

    .line 2030
    new-instance p2, Landroid/content/Intent;

    const-class p4, Lcom/lewis/edit/ui/activity/InputTitleActivity;

    invoke-direct {p2, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2031
    iget-object p4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p4}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getTitle()Ljava/lang/String;

    move-result-object p4

    const-string p5, "title"

    invoke-virtual {p2, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2032
    iget-object p4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p4}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSubTitle()Ljava/lang/String;

    move-result-object p4

    const-string p5, "subtitle"

    invoke-virtual {p2, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "position"

    .line 2033
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2035
    iget p4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLastClickTextPosition:I

    if-ne p3, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p3, "sameClick"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0xc8

    .line 2036
    invoke-virtual {p0, p2, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 2038
    :cond_2
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    if-eqz p1, :cond_3

    .line 2039
    invoke-virtual {p1, p3}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setSelect(I)V

    .line 2041
    :cond_3
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, p3}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSelectTextIndex(I)V

    .line 2043
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setTitle(Ljava/lang/String;)V

    .line 2044
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSubTitle(Ljava/lang/String;)V

    .line 2045
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showWatermarkTitle()V

    goto :goto_1

    .line 2048
    :cond_4
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSelectPicIndex()I

    move-result p1

    if-ne p1, p3, :cond_5

    return-void

    .line 2051
    :cond_5
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    if-eqz p1, :cond_6

    .line 2052
    invoke-virtual {p1, p3}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setSelect(I)V

    .line 2054
    :cond_6
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, p3}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSelectPicIndex(I)V

    .line 2056
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->stopWatermarkInterval()V

    .line 2058
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p1, p3}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->getPicPath(I)V

    .line 2060
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onPrepared$2$AVEditActivity(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1985
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    const-string p1, "play"

    .line 1986
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setListener$1$AVEditActivity(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 845
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public synthetic lambda$workVideoShowFun$0$AVEditActivity(Ljava/lang/String;)V
    .locals 6

    .line 385
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mFlVideo:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mFlVideo:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 387
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 389
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v3, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoRotationDegree()I

    move-result p1

    .line 391
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v3}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoWidth()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 392
    iget-object v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v4}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoHeight()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x5a

    if-eq p1, v5, :cond_0

    const/16 v5, 0x10e

    if-ne p1, v5, :cond_1

    :cond_0
    xor-int p1, v3, v4

    xor-int/2addr v4, p1

    xor-int v3, p1, v4

    :cond_1
    if-le v4, v3, :cond_2

    mul-int/lit8 p1, v1, 0x9

    .line 400
    div-int/lit8 p1, p1, 0x10

    int-to-float v3, p1

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v0, v0, v4

    div-float/2addr v3, v0

    .line 401
    iput v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoScreenRate:F

    .line 402
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mFlVideo:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 403
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 405
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 406
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 407
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mFlVideo:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 v2, v2, 0x9

    .line 409
    div-int/lit8 v2, v2, 0x10

    .line 410
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 411
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 412
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public mergeSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1259
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMusicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    if-eqz v0, :cond_0

    .line 1260
    iget v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSelectMusicPosition:I

    invoke-virtual {v0, v1}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setSelect(I)V

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    iget v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSelectMusicPosition:I

    invoke-virtual {v0, v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSelectMusicIndex(I)V

    .line 1263
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->startPlayVideo(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->cancelDialog()V

    return-void
.end method

.method public notifyAdapter(Lcom/lewis/edit/model/entries/VideoThumb;)V
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAdapter:Lcom/lewis/edit/ui/adapter/FrameAdapter;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/ui/adapter/FrameAdapter;->addItem(Lcom/lewis/edit/model/entries/VideoThumb;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 2073
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "play"

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0xc8

    if-ne p1, v4, :cond_3

    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    const-string p1, "title"

    .line 2076
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "subtitle"

    .line 2077
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "position"

    .line 2078
    invoke-virtual {p3, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "cancel"

    .line 2079
    invoke-virtual {p3, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    if-eq p3, v2, :cond_1

    .line 2081
    iput v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLastClickTextPosition:I

    .line 2082
    iget-object p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    if-eqz p3, :cond_0

    .line 2083
    invoke-virtual {p3, v4}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setSelect(I)V

    .line 2085
    :cond_0
    iget-object p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p3, v4}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSelectTextIndex(I)V

    .line 2086
    iget-object p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p3, p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setTitle(Ljava/lang/String;)V

    .line 2087
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSubTitle(Ljava/lang/String;)V

    .line 2089
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showWatermarkTitle()V

    goto :goto_0

    .line 2091
    :cond_1
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2092
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 2093
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 2095
    :cond_2
    invoke-direct {p0, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_5

    if-ne p2, v2, :cond_5

    if-eqz p3, :cond_5

    .line 2099
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    const-string p1, "EDIT_URL_LIST"

    .line 2100
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2101
    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2102
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p2, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p2, p1, v1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workEditVideo(Ljava/util/List;I)V

    goto :goto_0

    .line 2104
    :cond_4
    iput-boolean v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkAddVideoFlag:Z

    .line 2105
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->cancelDialog()V

    goto :goto_0

    .line 2109
    :cond_5
    iput-boolean v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkAddVideoFlag:Z

    .line 2110
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2111
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 2112
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 2114
    :cond_6
    invoke-direct {p0, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 2685
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLayoutProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2686
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->cancelMerge()V

    goto :goto_0

    .line 2688
    :cond_0
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onBmCancelClick()V
    .locals 0

    .line 2476
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideVideoSound()V

    return-void
.end method

.method public onBmConfirmClick(FF)V
    .locals 0

    .line 2487
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    .line 2488
    iput p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioSize:F

    .line 2489
    iput p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoSound:F

    .line 2490
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2491
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideVideoSound()V

    .line 2493
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1816
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getCheckId()I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 1820
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setCheckId(I)V

    .line 1822
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->stopWatermarkInterval()V

    .line 1824
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideWatermark()V

    .line 1825
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSelectTitle()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1827
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showWatermarkTitle()V

    goto :goto_0

    .line 1830
    :cond_1
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSelectPicIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->getPicPath(I)V

    .line 1832
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 1323
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1326
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1328
    iget v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLastButton:I

    if-eq v0, p1, :cond_21

    iget v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLastTexture:I

    if-ne v0, p1, :cond_1

    goto/16 :goto_8

    .line 1329
    :cond_1
    sget v0, Lcom/lewis/edit/R$id;->complete:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, p1, :cond_9

    .line 1331
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    if-eqz p1, :cond_2

    .line 1332
    invoke-virtual {p1, v1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->setSelect(I)V

    .line 1334
    :cond_2
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mFlEditRecycleLayout:Landroid/widget/FrameLayout;

    invoke-static {v3, p1}, Lcom/powervision/base/utils/AnimUtils;->doHideOrShowBottomView(ZLandroid/view/View;)V

    .line 1336
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideWatermark()V

    .line 1337
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showProgressDialog()V

    const-string p1, ""

    const/4 v0, 0x4

    .line 1343
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSelectTitle()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSelectPicIndex()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v10, p1

    const/4 v9, 0x0

    const/4 v11, 0x4

    goto :goto_2

    .line 1345
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSelectTitle()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1347
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextViewGone:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 1348
    invoke-static {v1}, Lcom/lewis/edit/utils/BitmapUtil;->viewConversionBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1350
    invoke-static {v1}, Lcom/lewis/edit/utils/FileUtil;->bitmapToPNG(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 1352
    :cond_5
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSelectTextIndex()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    .line 1358
    :cond_6
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSelectPicIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->getPicName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/FileUtil;->copyAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1361
    :cond_7
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    move-object v10, p1

    move v11, v0

    if-eqz v1, :cond_8

    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    const/4 v9, 0x1

    .line 1366
    :goto_2
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    move-object v4, p1

    check-cast v4, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iget-object v5, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectAudioPath()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioSize:F

    iget v8, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoSound:F

    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    .line 1367
    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getCheckId()I

    move-result v12

    iget-object v13, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    .line 1366
    invoke-virtual/range {v4 .. v13}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workAllVideoEdit(Ljava/util/List;Ljava/lang/String;FFZLjava/lang/String;IILcom/lewis/edit/model/entries/VideoEditInfo;)V

    goto/16 :goto_8

    .line 1368
    :cond_9
    sget v0, Lcom/lewis/edit/R$id;->image_crop:I

    const-string v4, "ap03_video_add_text"

    const-string v5, "ap03_video_add_pic"

    if-eq v0, p1, :cond_1d

    sget v0, Lcom/lewis/edit/R$id;->image_avmerge:I

    if-eq v0, p1, :cond_1d

    sget v0, Lcom/lewis/edit/R$id;->image_texture:I

    if-ne v0, p1, :cond_a

    goto/16 :goto_6

    .line 1377
    :cond_a
    sget v0, Lcom/lewis/edit/R$id;->image_state:I

    const-string v6, "pause"

    if-ne v0, p1, :cond_10

    .line 1378
    iget-boolean p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsCmRunningFlag:Z

    if-eqz p1, :cond_c

    .line 1380
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    if-eqz p1, :cond_21

    .line 1381
    invoke-virtual {p1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->getMediaPlayState()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1382
    invoke-direct {p0, v6}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 1383
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    invoke-virtual {p1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->pauseVideoPlay()V

    goto/16 :goto_8

    :cond_b
    const-string p1, "play"

    .line 1385
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 1386
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    invoke-virtual {p1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->startVideoPlay()V

    goto/16 :goto_8

    .line 1391
    :cond_c
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/lewis/edit/ui/activity/AVEditActivity;->PLAY_STATE_PAUSE:Ljava/lang/String;

    goto :goto_3

    :cond_d
    sget-object p1, Lcom/lewis/edit/ui/activity/AVEditActivity;->PLAY_STATE_PLAY:Ljava/lang/String;

    :goto_3
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 1392
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1393
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 1395
    invoke-direct {p0, v3}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    .line 1396
    iget-boolean p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsSeparate:Z

    goto/16 :goto_8

    .line 1401
    :cond_e
    iget-boolean p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsAllVideoPlayFinishFlag:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSingleVideoPlayFlag()Z

    move-result p1

    if-nez p1, :cond_f

    .line 1403
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    goto/16 :goto_8

    .line 1406
    :cond_f
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 1408
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSingleVideoPlayFlag()Z

    move-result p1

    if-nez p1, :cond_21

    .line 1410
    invoke-direct {p0, v2}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    .line 1411
    iget-boolean p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsSeparate:Z

    goto/16 :goto_8

    .line 1419
    :cond_10
    sget v0, Lcom/lewis/edit/R$id;->texture_pic:I

    if-eq v0, p1, :cond_1a

    sget v0, Lcom/lewis/edit/R$id;->texture_text:I

    if-ne v0, p1, :cond_11

    goto/16 :goto_4

    .line 1428
    :cond_11
    sget v0, Lcom/lewis/edit/R$id;->text_cancel:I

    if-ne v0, p1, :cond_12

    .line 1430
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->cancelMerge()V

    goto/16 :goto_8

    .line 1431
    :cond_12
    sget v0, Lcom/lewis/edit/R$id;->edit_cancel_icon:I

    if-ne v0, p1, :cond_13

    .line 1433
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->cancelCropVideoThumb()V

    .line 1435
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideQuickCutView()V

    .line 1437
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    goto/16 :goto_8

    .line 1438
    :cond_13
    sget v0, Lcom/lewis/edit/R$id;->edit_confirm_icon:I

    if-ne v0, p1, :cond_17

    .line 1440
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->cancelCropVideoThumb()V

    .line 1441
    iget p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    if-nez p1, :cond_14

    iget p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    iget v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSingleClipVideoLength:I

    if-ne p1, v0, :cond_14

    .line 1444
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideQuickCutView()V

    .line 1446
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    goto/16 :goto_8

    .line 1448
    :cond_14
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    .line 1450
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1451
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 1452
    invoke-direct {p0, v6}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 1455
    :cond_15
    iget p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    if-nez p1, :cond_16

    .line 1457
    iput v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    .line 1459
    :cond_16
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    iget v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workClipVideo(Ljava/lang/String;II)V

    goto :goto_8

    .line 1461
    :cond_17
    sget v0, Lcom/lewis/edit/R$id;->iv_show_audio:I

    if-ne v0, p1, :cond_19

    .line 1463
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mBmLayout:Lcom/lewis/edit/widgets/BackgroundMusicLayout;

    if-eqz p1, :cond_18

    .line 1464
    iget v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioSize:F

    iget v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoSound:F

    invoke-virtual {p1, v0, v1}, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->initShowView(FF)V

    .line 1466
    :cond_18
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideVideoSound()V

    goto :goto_8

    .line 1467
    :cond_19
    sget v0, Lcom/lewis/edit/R$id;->vw_edit_view_click:I

    if-ne v0, p1, :cond_21

    .line 1468
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {p1, v1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->setSelect(I)V

    .line 1469
    invoke-direct {p0, v3}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideEditViewList(Z)V

    goto :goto_8

    .line 1420
    :cond_1a
    :goto_4
    sget v0, Lcom/lewis/edit/R$id;->texture_text:I

    if-ne v0, p1, :cond_1b

    goto :goto_5

    :cond_1b
    const/4 v2, 0x0

    :goto_5
    invoke-direct {p0, v2}, Lcom/lewis/edit/ui/activity/AVEditActivity;->selectTexture(Z)V

    .line 1421
    iput p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLastTexture:I

    .line 1423
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    .line 1425
    sget v0, Lcom/lewis/edit/R$id;->texture_pic:I

    if-ne p1, v0, :cond_1c

    move-object v4, v5

    .line 1427
    :cond_1c
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object p1

    .line 1425
    invoke-static {p0, v4, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_8

    .line 1369
    :cond_1d
    :goto_6
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->switchView(I)V

    .line 1371
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    .line 1373
    sget v0, Lcom/lewis/edit/R$id;->image_crop:I

    if-ne p1, v0, :cond_1e

    const-string v4, "ap03_video_clip"

    goto :goto_7

    :cond_1e
    sget v0, Lcom/lewis/edit/R$id;->image_avmerge:I

    if-ne p1, v0, :cond_1f

    const-string v4, "ap03_video_music"

    goto :goto_7

    :cond_1f
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    .line 1375
    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSelectTitle()Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_7

    :cond_20
    move-object v4, v5

    .line 1376
    :goto_7
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object p1

    .line 1373
    invoke-static {p0, v4, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_21
    :goto_8
    return-void
.end method

.method public onCmCancelClick()V
    .locals 1

    .line 2501
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    .line 2502
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    if-eqz v0, :cond_0

    .line 2503
    invoke-virtual {v0}, Lcom/lewis/edit/widgets/GLVideoRenderer;->workMediaDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 2505
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsCmRunningFlag:Z

    .line 2506
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideColorMixing()V

    .line 2508
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public onCmConfirmClick(FFFFFF)V
    .locals 8

    .line 2566
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    const/4 v0, 0x0

    .line 2567
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsCmRunningFlag:Z

    .line 2569
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    if-eqz v0, :cond_0

    .line 2570
    invoke-virtual {v0}, Lcom/lewis/edit/widgets/GLVideoRenderer;->pauseVideoPlay()V

    const-string v0, "pause"

    .line 2571
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 2574
    :cond_0
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMp4Processor:Lcom/lewis/edit/utils/mp4/Mp4Processor;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/lewis/edit/utils/mp4/Mp4Processor;->setColorMixingData(FFFFFF)V

    .line 2575
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMp4Processor:Lcom/lewis/edit/utils/mp4/Mp4Processor;

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/Mp4Processor;->startVideoEncoder()V

    return-void
.end method

.method public onColorTemperatureClick(F)V
    .locals 1

    .line 2534
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    if-eqz v0, :cond_0

    .line 2535
    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->setColorTem(F)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1995
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSingleVideoPlayFlag()Z

    move-result p1

    const-string v0, "pause"

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1997
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getCurrentPlayVideoPosition()I

    move-result p1

    add-int/2addr p1, v1

    .line 1999
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setCurrentPlayVideoPosition(I)V

    .line 2001
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->startPlayVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 2004
    :cond_0
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 2005
    iput-boolean v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsAllVideoPlayFinishFlag:Z

    const/4 p1, 0x0

    .line 2007
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    .line 2009
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getVideoAllTime()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->updateVideoProgressData(IZ)V

    goto :goto_0

    .line 2013
    :cond_1
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 2015
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getVideoAllTime()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->updateVideoProgressData(IZ)V

    :goto_0
    return-void
.end method

.method public onContrastClick(F)V
    .locals 1

    .line 2520
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    if-eqz v0, :cond_0

    .line 2521
    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->setContrast(F)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1945
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1946
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1947
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    if-eqz v0, :cond_0

    .line 1948
    invoke-virtual {v0, v1}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1950
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {v0, v1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->setOnItemClickListener(Lcom/lewis/edit/ui/adapter/SpliceAdapter$OnItemClickListener;)V

    .line 1951
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mEditViewAdapter:Lcom/lewis/edit/ui/adapter/EditViewAdapter;

    invoke-virtual {v0, v1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->setOnItemClickListener(Lcom/lewis/edit/ui/adapter/EditViewAdapter$OnItemClickListener;)V

    .line 1952
    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextView:Landroid/view/View;

    .line 1953
    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextViewGone:Landroid/view/View;

    .line 1954
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 1956
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1957
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1959
    :cond_1
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1960
    iput-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    .line 1963
    :cond_2
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->deleteEditFileData()V

    .line 1965
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->glDestroyFun()V

    .line 1966
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(I)V
    .locals 7

    .line 2330
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2335
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsClipping:Z

    .line 2337
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsSeparate:Z

    .line 2339
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v1

    .line 2341
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isHaveDefaultLogo()Z

    move-result v2

    .line 2343
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez p1, :cond_2

    if-eqz v2, :cond_1

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_17

    .line 2347
    :cond_1
    iput-boolean v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsClipping:Z

    .line 2349
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, v4}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSingleVideoPlayFlag(Z)V

    .line 2351
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setCurrentPlayVideoPosition(I)V

    .line 2353
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideWatermark()V

    .line 2355
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    .line 2357
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideQuickCutView()V

    .line 2359
    iget p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankWidth:I

    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initRangeSeekBar(I)V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v4, :cond_4

    if-eqz v2, :cond_3

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_17

    .line 2364
    :cond_3
    iput-boolean v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsSeparate:Z

    .line 2366
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, v4}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSingleVideoPlayFlag(Z)V

    .line 2368
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setCurrentPlayVideoPosition(I)V

    .line 2370
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideWatermark()V

    .line 2372
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    .line 2374
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workVideoSeparate()V

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x2

    if-ne p1, v5, :cond_7

    if-eqz v2, :cond_5

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_17

    .line 2379
    :cond_5
    iput-boolean v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsCmRunningFlag:Z

    .line 2380
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2381
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 2384
    :cond_6
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, v4}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSingleVideoPlayFlag(Z)V

    .line 2386
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setCurrentPlayVideoPosition(I)V

    .line 2388
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideWatermark()V

    .line 2390
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    .line 2392
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workColorMixing()V

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x3

    if-ne p1, v6, :cond_9

    if-eqz v2, :cond_8

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_17

    .line 2398
    :cond_8
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, v4}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSingleVideoPlayFlag(Z)V

    .line 2400
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setCurrentPlayVideoPosition(I)V

    .line 2402
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->hideWatermark()V

    .line 2404
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    .line 2406
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workVideoSpeed()V

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x4

    if-ne p1, v6, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x5

    if-ne p1, v6, :cond_e

    if-eqz v2, :cond_b

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_17

    .line 2422
    :cond_b
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    .line 2423
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2424
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 2427
    :cond_c
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/model/entries/SingleVideoBean;

    .line 2428
    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->isMuteStateFlag()Z

    move-result v1

    xor-int/2addr v1, v4

    .line 2429
    invoke-virtual {p1, v1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->setMuteStateFlag(Z)V

    if-eqz v1, :cond_d

    .line 2432
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->getOriginalVideoPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workMuteFun(Ljava/lang/String;)V

    goto :goto_0

    .line 2435
    :cond_d
    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->getOriginalVideoPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->controlMute(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_e
    const/4 v6, 0x6

    if-ne p1, v6, :cond_10

    if-eqz v2, :cond_f

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_17

    .line 2441
    :cond_f
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    .line 2442
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2443
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v1, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workVideoCopy(Ljava/lang/String;)V

    goto :goto_0

    :cond_10
    const/4 v6, 0x7

    if-ne p1, v6, :cond_17

    if-nez v2, :cond_11

    if-eq v3, v4, :cond_12

    :cond_11
    if-eqz v2, :cond_13

    if-ne v3, v5, :cond_13

    add-int/lit8 p1, v3, -0x1

    if-eq p1, v1, :cond_13

    .line 2449
    :cond_12
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->finish()V

    goto :goto_0

    .line 2451
    :cond_13
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    if-eqz v2, :cond_14

    add-int/lit8 p1, v3, -0x1

    if-ne p1, v1, :cond_14

    .line 2454
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setHaveDefaultLogo(Z)V

    .line 2457
    :cond_14
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2458
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {p1, v1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyItemRemoved(I)V

    if-eqz v2, :cond_15

    sub-int/2addr v3, v4

    if-eq v3, v1, :cond_16

    .line 2461
    :cond_15
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2464
    :cond_16
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    .line 2467
    :cond_17
    :goto_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->setSelect(I)V

    .line 2468
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideEditViewList(Z)V

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

    .line 2214
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2217
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getSelectMusicIndex()I

    move-result p1

    if-ne p1, p3, :cond_1

    return-void

    .line 2220
    :cond_1
    iput p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSelectMusicPosition:I

    .line 2221
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    .line 2223
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMusicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    if-eqz p1, :cond_2

    .line 2224
    iget p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSelectMusicPosition:I

    invoke-virtual {p1, p2}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setSelect(I)V

    .line 2226
    :cond_2
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    iget p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSelectMusicPosition:I

    invoke-virtual {p1, p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setSelectMusicIndex(I)V

    const/4 p1, 0x1

    if-lez p3, :cond_3

    .line 2228
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p2, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {p2, p3}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->getMusicName(I)Ljava/lang/String;

    move-result-object p2

    .line 2234
    invoke-static {p0, p2}, Lcom/lewis/edit/utils/FileUtil;->getReoucesPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2237
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 2238
    iget-object p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p3, p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setHadSelectAudioPath(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2240
    invoke-direct {p0, p2, p3}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playAudio(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2245
    :cond_3
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setHadSelectAudioPath(Ljava/lang/String;)V

    .line 2247
    invoke-direct {p0, p3, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playAudio(Ljava/lang/String;Z)V

    .line 2249
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    .line 2251
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mBmLayout:Lcom/lewis/edit/widgets/BackgroundMusicLayout;

    if-eqz p2, :cond_5

    .line 2253
    iget-object p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p3}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectAudioPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->isShowAudioLayout(Z)V

    :cond_5
    return-void
.end method

.method public onLightClick(F)V
    .locals 1

    .line 2513
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    if-eqz v0, :cond_0

    .line 2514
    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->setBrightness(F)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1808
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1809
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->finish()V

    .line 1811
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 877
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    .line 878
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLayoutProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLoadingDialog:Lcom/powervision/base/views/LoadingProgressBar;

    .line 879
    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCurrentVideoHadPlayLength:I

    .line 881
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    const/4 v0, 0x0

    .line 884
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    :cond_1
    const-string v0, "AVEditActivity"

    .line 887
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obb=========onPause, mObbDownloadServiceEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbDownloadServiceEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 888
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbHelper:Lcom/cclink/obbdownloader/ObbHelper;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbDownloadServiceEnable:Z

    if-eqz v1, :cond_2

    .line 889
    invoke-virtual {v0}, Lcom/cclink/obbdownloader/ObbHelper;->disconnect()V

    :cond_2
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    const-string v0, "AVEditActivity"

    .line 1974
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edit-cancel-dialog-video-1-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkSpeedFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkAddVideoFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1975
    iget-boolean v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkSpeedFlag:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkAddVideoFlag:Z

    if-nez v1, :cond_0

    .line 1976
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "edit-cancel-dialog-video-2"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1977
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->cancelDialog()V

    .line 1979
    :cond_0
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 1981
    iget v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoSound:F

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1983
    iget-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsSeparate:Z

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1984
    new-instance v0, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$8gEuICrsujNngTHd9WJc4qhQcqk;

    invoke-direct {v0, p0}, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$8gEuICrsujNngTHd9WJc4qhQcqk;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 853
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 855
    iget-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsTitleGoIntoFlag:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLayoutProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLoadingDialog:Lcom/powervision/base/views/LoadingProgressBar;

    .line 856
    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 858
    iget-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsGoInToShareFlag:Z

    if-nez v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCurrentVideoHadPlayLength:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    const/4 v0, 0x1

    .line 862
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->workAudioPlayState(Z)V

    goto :goto_0

    .line 864
    :cond_1
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 867
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsTitleGoIntoFlag:Z

    const-string v0, "AVEditActivity"

    .line 869
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obb=========onResume, mObbDownloadServiceEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbDownloadServiceEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 870
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbHelper:Lcom/cclink/obbdownloader/ObbHelper;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mObbDownloadServiceEnable:Z

    if-eqz v1, :cond_3

    .line 871
    invoke-virtual {v0}, Lcom/cclink/obbdownloader/ObbHelper;->connect()V

    :cond_3
    return-void
.end method

.method public onSaturationClick(F)V
    .locals 1

    .line 2527
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    if-eqz v0, :cond_0

    .line 2528
    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->setSaturation(F)V

    :cond_0
    return-void
.end method

.method public onSharpnessClick(F)V
    .locals 1

    .line 2548
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    if-eqz v0, :cond_0

    .line 2549
    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->setSharpness(F)V

    :cond_0
    return-void
.end method

.method public onSpeedCancel()V
    .locals 0

    .line 1689
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    .line 1690
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideVideoSpeed()V

    .line 1692
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public onSpeedChange(F)V
    .locals 3

    .line 1671
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1672
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1674
    :try_start_0
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/media/PlaybackParams;

    invoke-direct {v2}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v2, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "AVEditActivity"

    .line 1676
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speed-change---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1678
    :goto_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1679
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onSpeedConfirm(F)V
    .locals 2

    .line 1702
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    const/4 v0, 0x1

    .line 1704
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkSpeedFlag:Z

    .line 1706
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    const-string v0, "pause"

    .line 1708
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v0

    .line 1711
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1712
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v1, v0, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workVideoSpeed(Ljava/lang/String;F)V

    return-void
.end method

.method public onSpliceItemClick(ZI)V
    .locals 4

    const-string v0, "AVEditActivity"

    .line 2278
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLast= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pos= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 2279
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2282
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mFlEditRecycleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2284
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->setSelect(I)V

    .line 2285
    invoke-direct {p0, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideEditViewList(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2289
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkAddVideoFlag:Z

    .line 2290
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string p2, "/edit/editFileSelectActivity"

    invoke-virtual {p1, p2}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/app/Activity;I)V

    goto :goto_0

    .line 2293
    :cond_2
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1, p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->setHadSelectSplicePosition(I)V

    .line 2295
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isHaveDefaultLogo()Z

    move-result p1

    .line 2297
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p1, :cond_3

    add-int/lit8 v3, v2, -0x1

    if-eq v3, p2, :cond_4

    .line 2301
    :cond_3
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lewis/edit/model/entries/SingleVideoBean;

    .line 2302
    invoke-virtual {v3}, Lcom/lewis/edit/model/entries/SingleVideoBean;->isMuteStateFlag()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/lewis/edit/ui/activity/AVEditActivity;->updateMuteState(Z)V

    .line 2305
    :cond_4
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {v3, p2}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->setSelect(I)V

    .line 2307
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mEditViewAdapter:Lcom/lewis/edit/ui/adapter/EditViewAdapter;

    if-eqz p1, :cond_5

    sub-int/2addr v2, v0

    if-ne v2, p2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v3, v1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->updateLogoView(Z)V

    .line 2309
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideEditViewList(Z)V

    :goto_0
    return-void
.end method

.method public onVideoMediaCompletion()V
    .locals 2

    const-string v0, "pause"

    .line 2581
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 2583
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getVideoAllTime()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->updateVideoProgressData(IZ)V

    return-void
.end method

.method public onVignettingClick(F)V
    .locals 1

    .line 2541
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    if-eqz v0, :cond_0

    .line 2542
    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->setVignette(F)V

    :cond_0
    return-void
.end method

.method public onVsCancelClick()V
    .locals 2

    .line 1629
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    .line 1631
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->cancelVideoThumbBySecond()V

    .line 1633
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSeparateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSeparateTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1635
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->deleteSeparateFileData()V

    .line 1636
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideVideoSeparate()V

    .line 1638
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public onVsConfirmClick(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1643
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showDialog()V

    .line 1645
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->cancelVideoThumbBySecond()V

    .line 1647
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSeparateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSeparateTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1649
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->deleteSeparateFileData()V

    .line 1651
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    const-string v0, "pause"

    .line 1653
    invoke-direct {p0, v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->workVideoSeparate(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onVsPartClick()V
    .locals 0

    return-void
.end method

.method public onVsRevertClick()V
    .locals 0

    return-void
.end method

.method public prepareToPlay(Ljava/lang/String;)V
    .locals 2

    .line 1502
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v0

    .line 1505
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1506
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {v1, v0}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyItemChanged(I)V

    .line 1509
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/model/entries/SingleVideoBean;

    .line 1510
    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->setOriginalVideoPath(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1511
    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->setMuteStateFlag(Z)V

    .line 1514
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public seekChange(IFFI)V
    .locals 8

    const-string p1, "AVEditActivity"

    .line 1838
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ave---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHadSelectVideoAllTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  left---"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " right---"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "  stop---"

    const-string v1, "  start---"

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne p4, v5, :cond_1

    .line 1840
    iget-wide v5, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHadSelectVideoAllTime:J

    long-to-float p4, v5

    mul-float p4, p4, p2

    iget p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankWidth:I

    int-to-float v7, p2

    div-float/2addr p4, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr p4, v7

    float-to-int p4, p4

    iput p4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    long-to-float p4, v5

    mul-float p4, p4, p3

    int-to-float p2, p2

    div-float/2addr p4, p2

    div-float/2addr p4, v7

    float-to-int p2, p4

    .line 1841
    iput p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStop:I

    .line 1842
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mHadSelectVideoAllTime:J

    invoke-virtual {p3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStop:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-interface {p2, p3, p4}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1844
    iget p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStop:I

    iget p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    sub-int p3, p2, p3

    iput p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    if-ge p3, v4, :cond_0

    .line 1846
    iput v4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    add-int/2addr p2, v4

    .line 1847
    iput p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStop:I

    .line 1849
    :cond_0
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mStartTrimTime:Landroid/widget/TextView;

    iget p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    int-to-long p3, p3

    invoke-static {p3, p4}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1850
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mEndTrimTime:Landroid/widget/TextView;

    iget p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStop:I

    int-to-long p3, p3

    invoke-static {p3, p4}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1851
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ave---seekNum_1---"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStop:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1852
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mCropTime:Landroid/widget/TextView;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p3, v4, [Ljava/lang/Object;

    iget p4, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v3

    const-string p4, "%ds"

    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne p4, v4, :cond_2

    .line 1854
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ave---seekNum_2 = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStop:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    .line 1856
    invoke-static {p1, p2}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    int-to-long p2, p2

    invoke-static {p2, p3}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/lewis/edit/ui/activity/AVEditActivity;->setVideoPlayTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    iget p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekNum:I

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1860
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1862
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    iget p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRankSeekStart:I

    mul-int/lit16 p2, p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_0

    .line 1864
    :cond_2
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1865
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    const-string p1, "pause"

    .line 1866
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->playState(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public separateVideoSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 988
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideVideoSeparate()V

    .line 989
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v0

    .line 991
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 992
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 993
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    if-eqz v1, :cond_0

    .line 994
    invoke-virtual {v1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyDataSetChanged()V

    .line 997
    :cond_0
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 998
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 999
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1000
    new-instance v3, Lcom/lewis/edit/model/entries/SingleVideoBean;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/lewis/edit/model/entries/SingleVideoBean;-><init>(Ljava/lang/String;Z)V

    .line 1001
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1003
    :cond_1
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1005
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mComplete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mRangeSeekBar:Lcom/lewis/edit/widgets/RangeSeekBar;

    invoke-virtual {v0, p0}, Lcom/lewis/edit/widgets/RangeSeekBar;->setOnSeekChangeListener(Lcom/lewis/edit/widgets/RangeSeekBar$OnSeekChangeListener;)V

    .line 827
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mPlayState:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowPositionGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 829
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageCrop:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageAVMerge:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageTexture:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 833
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 834
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVImage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTVTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIvShowAudio:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVwEditRecycleClick:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMusicAdapter:Lcom/lewis/edit/ui/adapter/ListAdapter;

    invoke-virtual {v0, p0}, Lcom/lewis/edit/ui/adapter/ListAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 839
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageConfirm:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mImageCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$0UgrVMMoztrz6FvSWbhtM07_wKs;

    invoke-direct {v1, p0}, Lcom/lewis/edit/ui/activity/-$$Lambda$AVEditActivity$0UgrVMMoztrz6FvSWbhtM07_wKs;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 848
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mAudioPlay:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/lewis/edit/ui/activity/-$$Lambda$2a6cpcM5xTEO_1aMYPzmfPrWPhY;->INSTANCE:Lcom/lewis/edit/ui/activity/-$$Lambda$2a6cpcM5xTEO_1aMYPzmfPrWPhY;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public showDialog()V
    .locals 1

    .line 1292
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLoadingDialog:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mLoadingDialog:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    :cond_0
    return-void
.end method

.method public showPic(Ljava/lang/String;)V
    .locals 2

    .line 1154
    invoke-static {}, Lcom/powervision/base/utils/GlideUtil;->get()Lcom/powervision/base/utils/GlideUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, p1, v1}, Lcom/powervision/base/utils/GlideUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public showVideoSeparate(Ljava/lang/String;)V
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->cancelDialog()V

    .line 683
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->startPlayVideo(Ljava/lang/String;)V

    .line 685
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSeparateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 686
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSeparateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSeparateTimeThread:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 688
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideVideoSeparate()V

    return-void
.end method

.method public showWatermark()V
    .locals 3

    .line 1185
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSelectTitle()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1190
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1194
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mShowTexture:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    :cond_2
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1197
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public successCancel()V
    .locals 0

    .line 1489
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->dismissProgressDialog()V

    .line 1491
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public updateVideoSeparateData(Lcom/lewis/edit/model/entries/VideoSeparateBean;)V
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVsLayout:Lcom/lewis/edit/widgets/VideoSeparateLayout;

    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/VideoSeparateLayout;->updateData(Lcom/lewis/edit/model/entries/VideoSeparateBean;)V

    :cond_0
    return-void
.end method

.method public videoColorMixingSuccess(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1552
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsCmRunningFlag:Z

    .line 1553
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideColorMixing()V

    .line 1554
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mGLRenderer:Lcom/lewis/edit/widgets/GLVideoRenderer;

    if-eqz v1, :cond_0

    .line 1556
    invoke-virtual {v1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->workMediaDestroy()V

    .line 1559
    :cond_0
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v1

    .line 1562
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1563
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {v2, v1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyItemChanged(I)V

    .line 1566
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/model/entries/SingleVideoBean;

    .line 1567
    invoke-virtual {v1, p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->setOriginalVideoPath(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v1, v0}, Lcom/lewis/edit/model/entries/SingleVideoBean;->setMuteStateFlag(Z)V

    .line 1571
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public videoConcatSuccess(Ljava/lang/String;)V
    .locals 0

    .line 1105
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->cancelDialog()V

    return-void
.end method

.method public videoCopySuccess(Ljava/lang/String;)V
    .locals 4

    .line 955
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 957
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 958
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {p1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyDataSetChanged()V

    .line 960
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/model/entries/SingleVideoBean;

    .line 961
    new-instance v0, Lcom/lewis/edit/model/entries/SingleVideoBean;

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->getOriginalVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->isMuteStateFlag()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/lewis/edit/model/entries/SingleVideoBean;-><init>(Ljava/lang/String;Z)V

    .line 962
    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->getMuteVideoPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->setMuteVideoPath(Ljava/lang/String;)V

    .line 963
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 965
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public videoSlidePlay(I)V
    .locals 3

    const-string v0, "AVEditActivity"

    .line 1661
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public videoSpeedSuccess(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1525
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkSpeedFlag:Z

    .line 1527
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->showOrHideVideoSpeed()V

    .line 1530
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getHadSelectSplicePosition()I

    move-result v1

    .line 1533
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1534
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {v2, v1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyItemChanged(I)V

    .line 1537
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/model/entries/SingleVideoBean;

    .line 1538
    invoke-virtual {v1, p1}, Lcom/lewis/edit/model/entries/SingleVideoBean;->setOriginalVideoPath(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v1, v0}, Lcom/lewis/edit/model/entries/SingleVideoBean;->setMuteStateFlag(Z)V

    .line 1542
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    return-void
.end method

.method public workEditVideoSuccess(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1594
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mVideoEditInfo:Lcom/lewis/edit/model/entries/VideoEditInfo;

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/VideoEditInfo;->isHaveDefaultLogo()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1595
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 1597
    :cond_0
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1599
    :goto_0
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mSpliceAdapter:Lcom/lewis/edit/ui/adapter/SpliceAdapter;

    invoke-virtual {p2}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyDataSetChanged()V

    .line 1601
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1602
    new-instance v1, Lcom/lewis/edit/model/entries/SingleVideoBean;

    invoke-direct {v1, p2, v0}, Lcom/lewis/edit/model/entries/SingleVideoBean;-><init>(Ljava/lang/String;Z)V

    .line 1603
    iget-object p2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mMuteStateArray:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1605
    :cond_1
    iput-boolean v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIsWorkAddVideoFlag:Z

    .line 1607
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initVideoState()V

    goto :goto_2

    .line 1610
    :cond_2
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity;->mIntentPathArray:Ljava/util/ArrayList;

    .line 1612
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->initAdapter()V

    .line 1613
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->requestPermissions()V

    :goto_2
    return-void
.end method
