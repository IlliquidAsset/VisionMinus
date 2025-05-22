.class public Lcom/xiao/nicevideoplayer/TxVideoPlayerController;
.super Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;
.source "TxVideoPlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clarities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiao/nicevideoplayer/Clarity;",
            ">;"
        }
    .end annotation
.end field

.field private defaultClarityIndex:I

.field private hasRegisterBatteryReceiver:Z

.field private listener:Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;

.field private mBack:Landroid/widget/ImageView;

.field private mBatterReceiver:Landroid/content/BroadcastReceiver;

.field private mBattery:Landroid/widget/ImageView;

.field private mBatteryTime:Landroid/widget/LinearLayout;

.field private mBottom:Landroid/widget/LinearLayout;

.field private mCenterStart:Landroid/widget/ImageView;

.field private mChangeBrightness:Landroid/widget/LinearLayout;

.field private mChangeBrightnessProgress:Landroid/widget/ProgressBar;

.field private mChangePositionCurrent:Landroid/widget/TextView;

.field private mChangePositionProgress:Landroid/widget/ProgressBar;

.field private mChangePositon:Landroid/widget/LinearLayout;

.field private mChangeVolume:Landroid/widget/LinearLayout;

.field private mChangeVolumeProgress:Landroid/widget/ProgressBar;

.field private mClarity:Landroid/widget/TextView;

.field private mClarityDialog:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

.field private mCompleted:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDelete:Landroid/widget/ImageView;

.field private mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

.field public mDownload:Landroid/widget/ImageView;

.field private mDuration:Landroid/widget/TextView;

.field private mError:Landroid/widget/LinearLayout;

.field private mFullScreen:Landroid/widget/ImageView;

.field private mImage:Landroid/widget/ImageView;

.field private mLength:Landroid/widget/TextView;

.field private mLoadText:Landroid/widget/TextView;

.field private mLoading:Landroid/widget/LinearLayout;

.field private mPosition:Landroid/widget/TextView;

.field private mReplay:Landroid/widget/TextView;

.field private mRestartPause:Landroid/widget/ImageView;

.field private mRetry:Landroid/widget/TextView;

.field private mSeek:Landroid/widget/SeekBar;

.field private mShare:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTop:Landroid/widget/RelativeLayout;

.field private topBottomVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;-><init>(Landroid/content/Context;)V

    .line 344
    new-instance v0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;

    invoke-direct {v0, p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;-><init>(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBatterReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mContext:Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;-><init>(Landroid/content/Context;)V

    .line 344
    new-instance v0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;

    invoke-direct {v0, p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;-><init>(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBatterReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->listener:Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;

    .line 102
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;)Landroid/widget/ImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBattery:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setTopBottomVisible(Z)V

    return-void
.end method

.method private cancelDismissTopBottomTimer()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiao/nicevideoplayer/R$layout;->tx_video_palyer_controller:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->text_horizontal_download:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDownload:Landroid/widget/ImageView;

    .line 109
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->text_horizontal_delete:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDelete:Landroid/widget/ImageView;

    .line 111
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->center_start:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    .line 112
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mImage:Landroid/widget/ImageView;

    .line 114
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->top:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mTop:Landroid/widget/RelativeLayout;

    .line 115
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->back:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBack:Landroid/widget/ImageView;

    .line 116
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mTitle:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->battery_time:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBatteryTime:Landroid/widget/LinearLayout;

    .line 118
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->battery:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBattery:Landroid/widget/ImageView;

    .line 119
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->time:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mTime:Landroid/widget/TextView;

    .line 121
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->bottom:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBottom:Landroid/widget/LinearLayout;

    .line 122
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->restart_or_pause:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mRestartPause:Landroid/widget/ImageView;

    .line 123
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->position:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mPosition:Landroid/widget/TextView;

    .line 124
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->duration:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDuration:Landroid/widget/TextView;

    .line 125
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->seek:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mSeek:Landroid/widget/SeekBar;

    .line 126
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->full_screen:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mFullScreen:Landroid/widget/ImageView;

    .line 127
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->clarity:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mClarity:Landroid/widget/TextView;

    .line 128
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->length:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLength:Landroid/widget/TextView;

    .line 130
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->loading:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLoading:Landroid/widget/LinearLayout;

    .line 131
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->load_text:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLoadText:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->change_position:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangePositon:Landroid/widget/LinearLayout;

    .line 134
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->change_position_current:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangePositionCurrent:Landroid/widget/TextView;

    .line 135
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->change_position_progress:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangePositionProgress:Landroid/widget/ProgressBar;

    .line 137
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->change_brightness:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangeBrightness:Landroid/widget/LinearLayout;

    .line 138
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->change_brightness_progress:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangeBrightnessProgress:Landroid/widget/ProgressBar;

    .line 140
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->change_volume:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangeVolume:Landroid/widget/LinearLayout;

    .line 141
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->change_volume_progress:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangeVolumeProgress:Landroid/widget/ProgressBar;

    .line 143
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->error:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mError:Landroid/widget/LinearLayout;

    .line 144
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->retry:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mRetry:Landroid/widget/TextView;

    .line 146
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->completed:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCompleted:Landroid/widget/LinearLayout;

    .line 147
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->replay:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mReplay:Landroid/widget/TextView;

    .line 148
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->share:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mShare:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mRestartPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mFullScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mClarity:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mRetry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mReplay:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mShare:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0, p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTopBottomVisible(Z)V
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isFullScreen()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mTop:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBottom:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    iput-boolean p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->topBottomVisible:Z

    if-eqz p1, :cond_9

    .line 509
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPaused()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPaused()Z

    move-result p1

    if-nez p1, :cond_3

    .line 510
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->startDismissTopBottomTimer()V

    .line 512
    :cond_3
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 515
    :cond_4
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPaused()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPaused()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 518
    :cond_5
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 519
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 521
    :cond_6
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 516
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    sget v0, Lcom/xiao/nicevideoplayer/R$drawable;->ic_player_center_start:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 513
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 514
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    sget v0, Lcom/xiao/nicevideoplayer/R$drawable;->ic_player_center_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 524
    :cond_9
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->cancelDismissTopBottomTimer()V

    :goto_4
    return-void
.end method

.method private startDismissTopBottomTimer()V
    .locals 7

    .line 534
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->cancelDismissTopBottomTimer()V

    .line 535
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$2;

    const-wide/16 v3, 0xfa0

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$2;-><init>(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;JJ)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method protected hideChangeBrightness()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangeBrightness:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected hideChangePosition()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangePositon:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected hideChangeVolume()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangeVolume:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public imageView()Landroid/widget/ImageView;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onActivityResume()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->start()V

    :cond_0
    const/4 v0, 0x1

    .line 472
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setTopBottomVisible(Z)V

    .line 473
    sget-object v0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    const-string v1, "setTopBottomVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClarityChanged(I)V
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->clarities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiao/nicevideoplayer/Clarity;

    .line 484
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mClarity:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/xiao/nicevideoplayer/Clarity;->grade:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 486
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v2}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->releasePlayer()V

    .line 487
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    iget-object p1, p1, Lcom/xiao/nicevideoplayer/Clarity;->videoUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    .line 488
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1, v0, v1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->start(J)V

    return-void
.end method

.method public onClarityNotChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 494
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setTopBottomVisible(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 405
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 406
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->start()V

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPaused()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPaused()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 412
    :cond_2
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    sget v0, Lcom/xiao/nicevideoplayer/R$drawable;->ic_player_center_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 413
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->restart()V

    goto/16 :goto_3

    .line 409
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->pause()V

    .line 410
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    sget v0, Lcom/xiao/nicevideoplayer/R$drawable;->ic_player_center_start:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 415
    :cond_4
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBack:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_6

    .line 416
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->listener:Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;

    if-nez p1, :cond_5

    return-void

    .line 419
    :cond_5
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;->onBackClick()V

    goto/16 :goto_3

    .line 426
    :cond_6
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mRestartPause:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    .line 427
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPlaying()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 429
    :cond_7
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPaused()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPaused()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 430
    :cond_8
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->restart()V

    goto/16 :goto_3

    .line 428
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->pause()V

    goto/16 :goto_3

    .line 432
    :cond_a
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mFullScreen:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_d

    .line 433
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isNormal()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isTinyWindow()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    .line 435
    :cond_b
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 436
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->exitFullScreen()Z

    goto/16 :goto_3

    .line 434
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->enterFullScreen()V

    goto/16 :goto_3

    .line 438
    :cond_d
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mClarity:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_e

    .line 439
    invoke-direct {p0, v1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setTopBottomVisible(Z)V

    .line 440
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mClarityDialog:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->show()V

    goto/16 :goto_3

    .line 441
    :cond_e
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mRetry:Landroid/widget/TextView;

    if-ne p1, v0, :cond_f

    .line 442
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->restart()V

    goto :goto_3

    .line 443
    :cond_f
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mReplay:Landroid/widget/TextView;

    if-ne p1, v2, :cond_10

    .line 444
    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    goto :goto_3

    .line 445
    :cond_10
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mShare:Landroid/widget/TextView;

    if-ne p1, v0, :cond_11

    .line 446
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mContext:Landroid/content/Context;

    const-string v0, "\u5206\u4eab"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 447
    :cond_11
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDelete:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_13

    .line 448
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->listener:Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;

    if-nez p1, :cond_12

    return-void

    .line 451
    :cond_12
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;->deleteButtonClick()V

    goto :goto_3

    .line 452
    :cond_13
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDownload:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_15

    .line 453
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->listener:Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;

    if-nez p1, :cond_14

    return-void

    .line 456
    :cond_14
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$OnButtonClickListener;->downloadButtonClick()V

    goto :goto_3

    :cond_15
    if-ne p1, p0, :cond_17

    .line 458
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    .line 459
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPaused()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    .line 460
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPlaying()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    .line 461
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPaused()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    .line 462
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 463
    :cond_16
    iget-boolean p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->topBottomVisible:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setTopBottomVisible(Z)V

    :cond_17
    :goto_3
    return-void
.end method

.method protected onPlayModeChanged(I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 335
    :pswitch_0
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mClarity:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 321
    :pswitch_1
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mFullScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mFullScreen:Landroid/widget/ImageView;

    sget v2, Lcom/xiao/nicevideoplayer/R$drawable;->ic_player_shrink:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->clarities:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_0

    .line 325
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mClarity:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBatteryTime:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-boolean p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->hasRegisterBatteryReceiver:Z

    if-nez p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBatterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    iput-boolean v2, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->hasRegisterBatteryReceiver:Z

    goto :goto_0

    .line 310
    :pswitch_2
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mFullScreen:Landroid/widget/ImageView;

    sget v2, Lcom/xiao/nicevideoplayer/R$drawable;->ic_player_enlarge:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mFullScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mClarity:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBatteryTime:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-boolean p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->hasRegisterBatteryReceiver:Z

    if-eqz p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBatterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    iput-boolean v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->hasRegisterBatteryReceiver:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPlayStateChanged(I)V
    .locals 6

    .line 233
    sget-object v0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, "loading..."

    const/4 v2, 0x0

    const/16 v3, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 291
    :pswitch_0
    sget-object p1, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    const-string v1, "onPlayStateChanged: STATE_COMPLETED"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setTopBottomVisible(Z)V

    .line 293
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->cancelUpdateProgressTimer()V

    .line 294
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mSeek:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 295
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 296
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getDuration()J

    move-result-wide v4

    .line 297
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mPosition:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/xiao/nicevideoplayer/NiceUtil;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDuration:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/xiao/nicevideoplayer/NiceUtil;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCompleted:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 276
    :pswitch_1
    sget-object p1, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    const-string v0, "onPlayStateChanged: STATE_BUFFERING_PAUSED"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLoading:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mRestartPause:Landroid/widget/ImageView;

    sget v0, Lcom/xiao/nicevideoplayer/R$drawable;->ic_player_start:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLoadText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->cancelDismissTopBottomTimer()V

    goto/16 :goto_0

    .line 269
    :pswitch_2
    sget-object p1, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    const-string v0, "onPlayStateChanged: STATE_BUFFERING_PLAYING"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLoading:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mRestartPause:Landroid/widget/ImageView;

    sget v0, Lcom/xiao/nicevideoplayer/R$drawable;->ic_player_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLoadText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->startDismissTopBottomTimer()V

    goto/16 :goto_0

    .line 263
    :pswitch_3
    sget-object p1, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    const-string v0, "onPlayStateChanged: STATE_PAUSED"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLoading:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mRestartPause:Landroid/widget/ImageView;

    sget v0, Lcom/xiao/nicevideoplayer/R$drawable;->ic_player_start:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->cancelDismissTopBottomTimer()V

    goto :goto_0

    .line 256
    :pswitch_4
    sget-object p1, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    const-string v1, "onPlayStateChanged: STATE_PLAYING"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLoading:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mRestartPause:Landroid/widget/ImageView;

    sget v1, Lcom/xiao/nicevideoplayer/R$drawable;->ic_player_pause:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->setTopBottomVisible(Z)V

    .line 260
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->startDismissTopBottomTimer()V

    goto :goto_0

    .line 252
    :pswitch_5
    sget-object p1, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    const-string v0, "onPlayStateChanged: STATE_PREPARED"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->startUpdateProgressTimer()V

    goto :goto_0

    .line 236
    :pswitch_6
    sget-object p1, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    const-string v0, "onPlayStateChanged: STATE_IDLE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :pswitch_7
    sget-object p1, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    const-string v0, "onPlayStateChanged: STATE_PREPARING"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLoading:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLoadText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mError:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCompleted:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mTop:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLength:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->restart()V

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v2, p1

    mul-long v0, v0, v2

    long-to-float p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    float-to-long v0, p1

    .line 576
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1, v0, v1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->seekTo(J)V

    .line 577
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->startDismissTopBottomTimer()V

    return-void
.end method

.method protected reset()V
    .locals 4

    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->topBottomVisible:Z

    .line 377
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->cancelUpdateProgressTimer()V

    .line 378
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->cancelDismissTopBottomTimer()V

    .line 379
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mSeek:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 380
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mSeek:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 382
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCenterStart:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBottom:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mFullScreen:Landroid/widget/ImageView;

    sget v3, Lcom/xiao/nicevideoplayer/R$drawable;->ic_player_enlarge:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLength:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mCompleted:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setClarity(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiao/nicevideoplayer/Clarity;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 212
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->clarities:Ljava/util/List;

    .line 213
    iput p2, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->defaultClarityIndex:I

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiao/nicevideoplayer/Clarity;

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/xiao/nicevideoplayer/Clarity;->grade:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/xiao/nicevideoplayer/Clarity;->p:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mClarity:Landroid/widget/TextView;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiao/nicevideoplayer/Clarity;

    iget-object v2, v2, Lcom/xiao/nicevideoplayer/Clarity;->grade:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v1, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mClarityDialog:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    .line 222
    invoke-virtual {v1, v0, p2}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->setClarityGrade(Ljava/util/List;I)V

    .line 223
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mClarityDialog:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-virtual {v0, p0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->setOnClarityCheckedListener(Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;)V

    .line 225
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiao/nicevideoplayer/Clarity;

    iget-object p1, p1, Lcom/xiao/nicevideoplayer/Clarity;->videoUrl:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public setDeleteImage(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setDownloadEnable(Z)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setDownloadImage(I)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setFullScreenOrSmall(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 636
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isNormal()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isTinyWindow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 637
    :cond_0
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->enterFullScreen()V

    .line 638
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mBottom:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 639
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mTop:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 641
    :cond_1
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mTop:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 645
    :cond_2
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 646
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->exitFullScreen()Z

    .line 647
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mTop:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setImage(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setLenght(J)V
    .locals 0

    return-void
.end method

.method public setNiceVideoPlayer(Lcom/xiao/nicevideoplayer/INiceVideoPlayer;)V
    .locals 2

    .line 198
    invoke-super {p0, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->setNiceVideoPlayer(Lcom/xiao/nicevideoplayer/INiceVideoPlayer;)V

    .line 200
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->clarities:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 201
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->clarities:Ljava/util/List;

    iget v1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->defaultClarityIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiao/nicevideoplayer/Clarity;

    iget-object v0, v0, Lcom/xiao/nicevideoplayer/Clarity;->videoUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showChangeBrightness(I)V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangeBrightness:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangeBrightnessProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected showChangePosition(JI)V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangePositon:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    int-to-long v0, p3

    mul-long p1, p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    .line 600
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangePositionCurrent:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/xiao/nicevideoplayer/NiceUtil;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangePositionProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 602
    sget-object v0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showChangePosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 604
    iget-object p3, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mPosition:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/xiao/nicevideoplayer/NiceUtil;->formatTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showChangeVolume(I)V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangeVolume:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mChangeVolumeProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected updateProgress()V
    .locals 10

    .line 582
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 583
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v2}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getDuration()J

    move-result-wide v2

    .line 584
    iget-object v4, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v4}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getBufferPercentage()I

    move-result v4

    .line 586
    iget-object v5, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mSeek:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    long-to-float v5, v0

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    long-to-float v6, v2

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 588
    iget-object v6, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mSeek:Landroid/widget/SeekBar;

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 589
    sget-object v6, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProgress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/xiao/nicevideoplayer/NiceUtil;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "->>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v4, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mPosition:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/xiao/nicevideoplayer/NiceUtil;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mDuration:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/xiao/nicevideoplayer/NiceUtil;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->mTime:Landroid/widget/TextView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "HH:mm"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
