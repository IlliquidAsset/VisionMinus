.class public Lcom/powervision/media/ui/activity/VideoPlayActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/activity/VideoPlayActivity$SeekTask;,
        Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;
    }
.end annotation


# static fields
.field private static final SUCCESS:I = 0xb


# instance fields
.field private dbHelper:Lcom/powervision/base/utils/DbHelper;

.field private handler:Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;

.field public mImageBack:Landroid/widget/ImageView;

.field private mImageControl:Landroid/widget/ImageView;

.field private mImagePreview:Landroid/widget/ImageView;

.field public mImageShare:Landroid/widget/ImageView;

.field private mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mProgress:Landroid/widget/Chronometer;

.field private mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public mTextTitle:Landroid/widget/TextView;

.field private mTimeTotal:Landroid/widget/Chronometer;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/powervision/media/ui/activity/VideoPlayActivity$SeekTask;

.field private mVideoContainer:Landroid/widget/FrameLayout;

.field private mVideoTimeLength:J

.field private mVideoView:Lcom/powervision/media/widgets/LVideoView;

.field private mViewBottom:Landroid/view/View;

.field private mViewTop:Landroid/view/View;

.field private model:Lcom/powervision/base/model/MediaModel;

.field private progressBar:Lcom/powervision/base/views/LoadingProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoTimeLength:J

    .line 85
    new-instance v0, Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;-><init>(Lcom/powervision/media/ui/activity/VideoPlayActivity;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->handler:Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/activity/VideoPlayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->saveSuccess()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/activity/VideoPlayActivity;)Lcom/powervision/base/model/MediaModel;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/ui/activity/VideoPlayActivity;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->scanFile(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/media/ui/activity/VideoPlayActivity;)Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->handler:Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/media/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->delete()V

    return-void
.end method

.method static synthetic access$700(Lcom/powervision/media/ui/activity/VideoPlayActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/media/ui/activity/VideoPlayActivity;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method private controlPlay()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->startPlay(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->pausePlay()V

    .line 211
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->continuePlay()V

    .line 214
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private controlPlay(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 225
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 226
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/LVideoView;->continuePlay()V

    .line 227
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/media/R$mipmap;->media_icon_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 230
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 231
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/LVideoView;->pausePlay()V

    .line 232
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private delete()V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    const-class v1, Lcom/powervision/base/model/MediaModel;

    iget-object v2, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/DbHelper;->searchVideoByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    .line 298
    iget-object v2, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "->getMainPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getMainPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getMainPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-static {v1}, Lcom/powervision/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    const-string v2, "NewVisionPlus"

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    invoke-static {v1}, Lcom/powervision/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    invoke-virtual {v1, v0}, Lcom/powervision/base/utils/DbHelper;->delete(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private initControl()V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->controlPlay()V

    .line 174
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->showControl()V

    return-void
.end method

.method private loadPreview()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 255
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImagePreview:Landroid/widget/ImageView;

    .line 256
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private saveSuccess()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 492
    new-instance v0, Lcom/powervision/media/widgets/MediaTipDialog;

    invoke-direct {v0, p0}, Lcom/powervision/media/widgets/MediaTipDialog;-><init>(Landroid/content/Context;)V

    .line 493
    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_148:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setTitle(I)V

    .line 494
    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_149:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setContent(I)V

    .line 495
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;

    invoke-direct {v1, v0}, Lcom/powervision/media/ui/activity/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;-><init>(Lcom/powervision/media/widgets/MediaTipDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setDialogTipListener(Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;)V

    .line 496
    invoke-virtual {v0}, Lcom/powervision/media/widgets/MediaTipDialog;->show()V

    return-void
.end method

.method private scanFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showBottomInfoDialog()V
    .locals 11

    .line 261
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/powervision/media/R$style;->BottomDialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 262
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$layout;->media_bottom_info:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 263
    sget v2, Lcom/powervision/media/R$id;->text_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 264
    sget v3, Lcom/powervision/media/R$id;->text_date:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 265
    sget v4, Lcom/powervision/media/R$id;->text_location:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 266
    sget v5, Lcom/powervision/media/R$id;->text2:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 267
    sget v6, Lcom/powervision/media/R$id;->text_size:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 268
    sget v7, Lcom/powervision/media/R$id;->text_dimen:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 269
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 271
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 272
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v10}, Lorg/xutils/common/util/DensityUtil;->dip2px(F)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v9, 0x41000000    # 8.0f

    .line 273
    invoke-static {v9}, Lorg/xutils/common/util/DensityUtil;->dip2px(F)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 274
    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window;

    const/16 v8, 0x50

    invoke-virtual {v1, v8}, Landroid/view/Window;->setGravity(I)V

    .line 276
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v8, Lcom/powervision/media/R$style;->PopupAnimationBottom:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 277
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 279
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/TimeUtils;->paserTimeToYM(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getPlatform()I

    move-result v0

    const/16 v1, 0x8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string v0, "PowerDolphin"

    .line 282
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const-string v0, "PowerEgg X"

    .line 284
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/FileSizeUtil;->getAutoFileOrFilesSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/MediaInfoUtil;->getDimen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startPlay(Ljava/lang/String;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/LVideoView;->startPlay(Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/media/R$mipmap;->media_icon_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/LVideoView;->setVisibility(I)V

    return-void
.end method

.method private startSave()V
    .locals 1

    .line 486
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 487
    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 90
    sget v0, Lcom/powervision/media/R$layout;->media_video_play:I

    return v0
.end method

.method protected initData()V
    .locals 4

    .line 134
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->initData()V

    .line 135
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    .line 140
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoTimeLength:J

    .line 142
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoRotationDegree()I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v1}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoHeight()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v2}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoWidth()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_2

    :cond_1
    xor-int v0, v2, v1

    xor-int/2addr v1, v0

    xor-int v2, v0, v1

    :cond_2
    if-le v1, v2, :cond_3

    .line 151
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x435c0000    # 220.0f

    .line 152
    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 153
    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 154
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTimeTotal:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 157
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mProgress:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 158
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTextTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToAll(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->loadPreview()V

    .line 160
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTimer:Ljava/util/Timer;

    .line 161
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    .line 162
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->initControl()V

    return-void
.end method

.method protected initToolbar()V
    .locals 2

    .line 115
    sget v0, Lcom/powervision/media/R$id;->text_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTextTitle:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/powervision/media/R$id;->image_back:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageBack:Landroid/widget/ImageView;

    .line 117
    sget v0, Lcom/powervision/media/R$id;->image_share:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageShare:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$VideoPlayActivity$kiS8UsHHU6c2Vt-xif2O5Wa1XPQ;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$VideoPlayActivity$kiS8UsHHU6c2Vt-xif2O5Wa1XPQ;-><init>(Lcom/powervision/media/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageShare:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$VideoPlayActivity$3G8zCtCu0o1ZFwnpgXkZ27PgqBY;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$VideoPlayActivity$3G8zCtCu0o1ZFwnpgXkZ27PgqBY;-><init>(Lcom/powervision/media/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->initToolbar()V

    .line 97
    sget p1, Lcom/powervision/media/R$id;->image_control:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    .line 98
    sget p1, Lcom/powervision/media/R$id;->image_preview:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImagePreview:Landroid/widget/ImageView;

    .line 100
    sget p1, Lcom/powervision/media/R$id;->surfaceview:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/widgets/LVideoView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    .line 101
    sget p1, Lcom/powervision/media/R$id;->media_seekbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 102
    sget p1, Lcom/powervision/media/R$id;->time_progress:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Chronometer;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mProgress:Landroid/widget/Chronometer;

    .line 103
    sget p1, Lcom/powervision/media/R$id;->time_total:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Chronometer;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTimeTotal:Landroid/widget/Chronometer;

    .line 105
    sget p1, Lcom/powervision/media/R$id;->view_cover_top:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mViewTop:Landroid/view/View;

    .line 106
    sget p1, Lcom/powervision/media/R$id;->view_cover_bottom:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mViewBottom:Landroid/view/View;

    .line 107
    sget p1, Lcom/powervision/media/R$id;->video_container:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    .line 109
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/LVideoView;->setZOrderOnTop(Z)V

    .line 110
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/LVideoView;->setZOrderMediaOverlay(Z)V

    .line 111
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    return-void
.end method

.method public synthetic lambda$initToolbar$0$VideoPlayActivity(Landroid/view/View;)V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initToolbar$1$VideoPlayActivity(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/MediaInfoUtil;->is4K()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 121
    sget p1, Lcom/powervision/media/R$string;->APP_function_13:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "ap03_video_share"

    invoke-static {p0, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/share/shareActivity"

    .line 126
    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    .line 127
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_path"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTimerTask:Lcom/powervision/media/ui/activity/VideoPlayActivity$SeekTask;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/powervision/media/ui/activity/VideoPlayActivity$SeekTask;->cancel()Z

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/powervision/media/widgets/LVideoView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 429
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->handler:Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;->removeMessages(I)V

    return-void
.end method

.method public onControlClick(Landroid/view/View;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->controlPlay()V

    return-void
.end method

.method public onDeleteClick(Landroid/view/View;)V
    .locals 1

    .line 366
    new-instance p1, Lcom/powervision/media/widgets/MediaDialog;

    invoke-direct {p1, p0}, Lcom/powervision/media/widgets/MediaDialog;-><init>(Landroid/content/Context;)V

    .line 367
    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_34:I

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/MediaDialog;->setContent(I)V

    .line 368
    new-instance v0, Lcom/powervision/media/ui/activity/VideoPlayActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity$2;-><init>(Lcom/powervision/media/ui/activity/VideoPlayActivity;Lcom/powervision/media/widgets/MediaDialog;)V

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/MediaDialog;->setDialogClickListener(Lcom/powervision/media/widgets/MediaDialog$DialogClickListener;)V

    .line 381
    invoke-virtual {p1}, Lcom/powervision/media/widgets/MediaDialog;->show()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 473
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 474
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTimerTask:Lcom/powervision/media/ui/activity/VideoPlayActivity$SeekTask;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/powervision/media/ui/activity/VideoPlayActivity$SeekTask;->cancel()Z

    .line 476
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTimer:Ljava/util/Timer;

    .line 478
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->stopPlay()V

    .line 479
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onEditClick(Landroid/view/View;)V
    .locals 4

    .line 313
    iget-wide v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoTimeLength:J

    const-wide/32 v2, 0xdbba0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 314
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_195:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/MediaInfoUtil;->is4K()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 316
    sget p1, Lcom/powervision/media/R$string;->APP_function_43:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_1
    iget-wide v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoTimeLength:J

    const-wide/16 v2, 0x1770

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 318
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_63:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/edit/aVEditActivity"

    .line 321
    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->model:Lcom/powervision/base/model/MediaModel;

    .line 322
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_path"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onImageDownloadClick(Landroid/view/View;)V
    .locals 1

    .line 332
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/MediaInfoUtil;->is4K()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 333
    sget p1, Lcom/powervision/media/R$string;->AP03_MediaLib_18:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->startSave()V

    .line 337
    new-instance p1, Lcom/powervision/media/ui/activity/VideoPlayActivity$1;

    invoke-direct {p1, p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity$1;-><init>(Lcom/powervision/media/ui/activity/VideoPlayActivity;)V

    .line 347
    invoke-virtual {p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity$1;->start()V

    return-void
.end method

.method public onInformationClick(Landroid/view/View;)V
    .locals 0

    .line 388
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->showBottomInfoDialog()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 467
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 468
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->controlPlay(Z)V

    return-void
.end method

.method public onPreClick(Landroid/view/View;)V
    .locals 3

    .line 443
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mViewBottom:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mViewTop:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 393
    iget-object p2, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mProgress:Landroid/widget/Chronometer;

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
    .locals 1

    .line 461
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    const/4 v0, 0x1

    .line 462
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->controlPlay(Z)V

    return-void
.end method

.method public onStart(Landroid/media/MediaPlayer;)V
    .locals 7

    .line 409
    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 411
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTimeTotal:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 412
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setMax(I)V

    .line 413
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 414
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/LVideoView;->setVisibility(I)V

    .line 415
    new-instance v2, Lcom/powervision/media/ui/activity/VideoPlayActivity$SeekTask;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity$SeekTask;-><init>(Lcom/powervision/media/ui/activity/VideoPlayActivity;Lcom/powervision/media/ui/activity/VideoPlayActivity$1;)V

    iput-object v2, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTimerTask:Lcom/powervision/media/ui/activity/VideoPlayActivity$SeekTask;

    .line 416
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 417
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->handler:Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/LVideoView;->setSeek(I)V

    .line 404
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->showControl()V

    return-void
.end method

.method public onVideoClick(Landroid/view/View;)V
    .locals 3

    .line 437
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->showControl()V

    .line 438
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mViewBottom:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mViewTop:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 168
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0, p0}, Lcom/powervision/media/widgets/LVideoView;->setVideoStatusListener(Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;)V

    .line 169
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public showControl()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mImageControl:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->mVideoView:Lcom/powervision/media/widgets/LVideoView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->getMediaState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity;->handler:Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;->sendEmptyMessageDelayed(IJ)Z

    nop

    :cond_1
    :goto_0
    return-void
.end method
