.class public Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "SmartClipsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;
.implements Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;
.implements Lcom/powervision/sdk/callback/Ap03SysWarnListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;
    }
.end annotation


# static fields
.field private static final CANCEL_SMART_CLIPS:I = 0x6

.field private static final GET_CLIPS_DISTANCE_FAILED:I = 0xa

.field private static final GET_CLIPS_DISTANCE_SUCCESS:I = 0x1

.field private static final GET_CURRENT_MODE_SUCCESS:I = 0x3

.field private static final GET_SURROUDN_DIRECTION_FAILED:I = 0xc

.field private static final GET_SURROUDN_DIRECTION_SUCCESS:I = 0x7

.field private static final OUT_LIMIT_CANCEL_CLIPS:I = 0x9

.field private static final RUN_SMART_CLIPS_FAILED:I = 0x5

.field private static final RUN_SMART_CLIPS_SUCCESS:I = 0x4

.field private static final SET_CLIPS_DISTANCE_FAILED:I = 0x2

.field private static final SET_CLIPS_DISTANCE_SUCCESS:I = 0x0

.field private static final SET_SURROUDN_DIRECTION_FAILED:I = 0xb

.field private static final SET_SURROUDN_DIRECTION_SUCCESS:I = 0x8


# instance fields
.field private clipsFunctionMenu:Landroid/widget/LinearLayout;

.field private clipsFunctionMenuImg:Landroid/widget/ImageView;

.field private clipsFunctionMenuText:Landroid/widget/TextView;

.field private currentHeight:F

.field private currentMode:Ljava/lang/String;

.field private currentSubMode:Ljava/lang/String;

.field private data:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private distance:F

.field private distanceValue:I

.field private health:I

.field private hideMenuImg:Landroid/widget/ImageView;

.field private isClickMode:Z

.field private isStartClips:Z

.field private lastSubMode:Ljava/lang/String;

.field private mAntiClockWise:Landroid/widget/RelativeLayout;

.field private mClipsMenuLayout:Landroid/widget/RelativeLayout;

.field private mClockWise:Landroid/widget/RelativeLayout;

.field private mCountDownTime:Landroid/widget/TextView;

.field private mDistanceLayout:Landroid/widget/RelativeLayout;

.field private mFunctionMenuLayout:Landroid/widget/LinearLayout;

.field private mMediaImg:Landroid/widget/ImageView;

.field private mRecessDistanceText:Landroid/widget/TextView;

.field private mSeekbarLayout:Landroid/widget/RelativeLayout;

.field private mSetDistanceValue:Landroid/widget/TextView;

.field private mShowMenu:Landroid/widget/ImageView;

.field private mSmartEllipseLayout:Landroid/widget/RelativeLayout;

.field private mSmartRecessLayout:Landroid/widget/RelativeLayout;

.field private mSmartScrewLayout:Landroid/widget/RelativeLayout;

.field private mSmartSurroundLayout:Landroid/widget/RelativeLayout;

.field private mSmartToweringLayout:Landroid/widget/RelativeLayout;

.field private mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

.field private mStartOrStopImg:Landroid/widget/ImageView;

.field private mSurroundImg:Landroid/widget/ImageView;

.field private mSurroundText:Landroid/widget/TextView;

.field private mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

.field private modeCode:I

.field private oriValue:I

.field private scollSelectView:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

.field private smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

.field private timer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->modeCode:I

    const-string v0, ""

    .line 113
    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;Landroid/os/Message;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)Lcom/powervision/aircraft/smart/SmartClipsManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mCountDownTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)Lcom/powervision/base/utils/SoundPoolUtils;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenu:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->modeCode:I

    return p0
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setClipsStartStatus()V

    return-void
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 7

    .line 131
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xd9

    const/16 v1, 0x8

    const-string v2, "onekey_clips_nemo"

    const-string v3, ""

    const/4 v4, 0x1

    .line 221
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 299
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-virtual {p1}, Lcom/powervision/aircraft/smart/SmartClipsManager;->getROIParamer()V

    goto/16 :goto_0

    .line 292
    :pswitch_1
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->oriValue:I

    if-nez p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-virtual {p1, v4}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setROIParamer(I)V

    goto/16 :goto_0

    :cond_0
    if-ne p1, v4, :cond_a

    .line 295
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-virtual {p1, v6}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setROIParamer(I)V

    goto/16 :goto_0

    .line 146
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-virtual {p1}, Lcom/powervision/aircraft/smart/SmartClipsManager;->getTiltDistance()V

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "=======\u8d85\u51fa\u754c\u9650\u53d6\u6d88\u4e00\u952e\u77ed\u7247==="

    .line 257
    invoke-static {v2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mStartOrStopImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_start_bg:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClipsMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mShowMenu:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iput-boolean v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isClickMode:Z

    .line 262
    iput-boolean v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isStartClips:Z

    .line 263
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-boolean v6, p1, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isNeedTouch:Z

    .line 264
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_50:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 265
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 268
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/powervision/camera/camera/CameraManager;->setCameraCurrentStatus(I)V

    .line 269
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mMediaImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iput-object v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 274
    :pswitch_4
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->oriValue:I

    if-nez p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSurroundImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->smart_anti_clockwise_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSurroundText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_170:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_1
    if-ne p1, v4, :cond_a

    .line 278
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSurroundImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->smart_clockwise_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSurroundText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_169:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 283
    :pswitch_5
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->oriValue:I

    if-nez p1, :cond_2

    .line 284
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSurroundImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->smart_anti_clockwise_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSurroundText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_170:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v4, :cond_a

    .line 287
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSurroundImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->smart_clockwise_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSurroundText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_169:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_6
    const-string p1, "=======\u6253\u6746\u53d6\u6d88\u4e00\u952e\u77ed\u7247==="

    .line 241
    invoke-static {v2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mStartOrStopImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_start_bg:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClipsMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mShowMenu:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iput-boolean v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isClickMode:Z

    .line 246
    iput-boolean v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isStartClips:Z

    .line 247
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-boolean v6, p1, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isNeedTouch:Z

    .line 248
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_17:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 249
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 252
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/powervision/camera/camera/CameraManager;->setCameraCurrentStatus(I)V

    .line 253
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mMediaImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iput-object v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    const-string p1, "=======\u6267\u884c\u4e00\u952e\u77ed\u7247\u5931\u8d25==="

    .line 229
    invoke-static {v2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mStartOrStopImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_start_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClipsMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mShowMenu:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iput-boolean v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isClickMode:Z

    .line 234
    iput-boolean v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isStartClips:Z

    .line 235
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-boolean v6, p1, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isNeedTouch:Z

    .line 236
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/powervision/camera/camera/CameraManager;->setCameraCurrentStatus(I)V

    .line 237
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mMediaImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iput-object v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_8
    const-string p1, "=======\u6267\u884c\u4e00\u952e\u77ed\u7247\u6210\u529f==="

    .line 212
    invoke-static {v2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mStartOrStopImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_start_bg:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-virtual {p1}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setClipsMode()V

    .line 215
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_16:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 216
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClipsMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mShowMenu:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iput-boolean v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isClickMode:Z

    .line 219
    iput-boolean v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isStartClips:Z

    .line 220
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-boolean v6, p1, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isNeedTouch:Z

    .line 221
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 224
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/powervision/camera/camera/CameraManager;->setCameraCurrentStatus(I)V

    .line 225
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mMediaImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iput-object v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 149
    :pswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f53\u524d\u4e3b\u6a21\u5f0f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5f53\u524d\u5b50\u6a21\u5f0f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nemo-clips-info"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentMode:Ljava/lang/String;

    const-string v1, "INTEL_SHOOT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCurrentRecordTime()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    const-string v2, "INTEL_TILT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    invoke-direct {p0, v6}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setSubModeUIStatus(I)V

    .line 155
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 158
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v2

    invoke-static {v2}, Lcom/powervision/base/utils/UmengUtils;->getCameraSizeStr(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AP03_D_AI_Dronie"

    .line 157
    invoke-static {v4, v3, p1, v2}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 156
    invoke-static {v1, v4, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    :cond_3
    const-string p1, "\u5207\u6362\u4e3b\u6a21\u5f0f\uff0c\u5b50\u6a21\u5f0f\u4e3aINTEL_TILT"

    .line 161
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    const-string v1, "INTEL_CIRCLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setSubModeUIStatus(I)V

    .line 166
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 167
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    invoke-static {v1}, Lcom/powervision/base/utils/UmengUtils;->getCameraSizeStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AP03_D_AI_Circle"

    .line 168
    invoke-static {v2, v3, p1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 167
    invoke-static {v0, v2, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    const-string v1, "INTEL_SCREW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    .line 175
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setSubModeUIStatus(I)V

    .line 176
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 177
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    invoke-static {v1}, Lcom/powervision/base/utils/UmengUtils;->getCameraSizeStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AP03_D_AI_Helix"

    .line 178
    invoke-static {v2, v3, p1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 177
    invoke-static {v0, v2, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    const-string v1, "INTEL_CLIMB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    .line 185
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setSubModeUIStatus(I)V

    .line 186
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 187
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    invoke-static {v1}, Lcom/powervision/base/utils/UmengUtils;->getCameraSizeStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AP03_D_AI_Rocket"

    .line 188
    invoke-static {v2, v3, p1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 187
    invoke-static {v0, v2, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 194
    :cond_7
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    const-string v1, "INTEL_ELLPTIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    .line 195
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setSubModeUIStatus(I)V

    .line 196
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 197
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 199
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    invoke-static {v1}, Lcom/powervision/base/utils/UmengUtils;->getCameraSizeStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AP03_D_AI_Ellipse"

    .line 198
    invoke-static {v2, v3, p1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 197
    invoke-static {v0, v2, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 200
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->lastSubMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 203
    :cond_8
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentMode:Ljava/lang/String;

    const-string v0, "POSCTL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentMode:Ljava/lang/String;

    const-string v0, "TRIPLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentMode:Ljava/lang/String;

    const-string v0, "FAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentMode:Ljava/lang/String;

    const-string v0, "RTL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentMode:Ljava/lang/String;

    const-string v0, "LAND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 204
    :cond_9
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf33

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 205
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mStartOrStopImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_start_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iput-boolean v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isStartClips:Z

    .line 207
    iput-boolean v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isClickMode:Z

    .line 208
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-boolean v6, p1, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isNeedTouch:Z

    goto :goto_0

    .line 143
    :pswitch_a
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->distanceValue:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setTiltDistance(I)V

    goto :goto_0

    .line 138
    :pswitch_b
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->scollSelectView:Landroidx/appcompat/widget/AppCompatSeekBar;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->distance:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0xf

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 139
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mRecessDistanceText:Landroid/widget/TextView;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->distance:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSetDistanceValue:Landroid/widget/TextView;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->distance:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :pswitch_c
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mRecessDistanceText:Landroid/widget/TextView;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->distance:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->scollSelectView:Landroidx/appcompat/widget/AppCompatSeekBar;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->distance:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0xf

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    :cond_a
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideTimeDown()V
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mCountDownTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setClipsStartStatus()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClipsMenuLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mShowMenu:Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 315
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 313
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSeekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    const/16 v2, 0xd9

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 318
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setCameraCurrentStatus(I)V

    return-void
.end method

.method private setMenuViewIcon(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 531
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_recess_normal:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 532
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_64:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 533
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mDistanceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 534
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClockWise:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 535
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mAntiClockWise:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 537
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_surround_normal:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 538
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_68:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 539
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mDistanceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 540
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClockWise:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 542
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_screw_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_66:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 544
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mDistanceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 545
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClockWise:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 546
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mAntiClockWise:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 548
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_towering_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_70:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 550
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mDistanceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 551
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClockWise:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 552
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mAntiClockWise:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 554
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_ellipse_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 555
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_72:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 556
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mDistanceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 557
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClockWise:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 558
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mAntiClockWise:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 560
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mFunctionMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 561
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSeekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private setSubModeUIStatus(I)V
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u72b6\u6001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onekey_clips_lzq"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setMenuViewIcon(I)V

    const/4 p1, 0x0

    .line 308
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isClickMode:Z

    return-void
.end method

.method private showTimeDown()V
    .locals 7

    .line 718
    new-instance v6, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$2;

    const-wide/16 v2, 0x1324

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;JJ)V

    iput-object v6, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->timer:Landroid/os/CountDownTimer;

    .line 742
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public cancelSubMode()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public changeTouchViewSize()V
    .locals 4

    .line 776
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    if-eqz v0, :cond_0

    .line 777
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v0

    .line 778
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v1

    .line 779
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {v2}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 780
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 781
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v3, 0xd

    .line 782
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 783
    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {v3, v2}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {v2, v0, v1}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->setWidthAndHeight(II)V

    :cond_0
    return-void
.end method

.method public getClipsStatus(Ljava/lang/String;)V
    .locals 2

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====submode==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onekey_clips_nemo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getCurrentHight(F)V
    .locals 0

    .line 683
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentHeight:F

    return-void
.end method

.method public getCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentMode:Ljava/lang/String;

    .line 707
    iput-object p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentSubMode:Ljava/lang/String;

    .line 708
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 323
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_smart_clips_layout:I

    return v0
.end method

.method public getORIParamer(Ljava/lang/String;I)V
    .locals 0

    .line 673
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->oriValue:I

    const-string p2, "UPLOAD"

    .line 674
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 675
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p2, "DOWNLOAD"

    .line 676
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 677
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getSubModeFailed()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getSysWarnInfo(III)V
    .locals 0

    .line 714
    iput p3, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->health:I

    return-void
.end method

.method protected initData()V
    .locals 4

    .line 358
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "mode_clips"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->modeCode:I

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/SoundPoolUtils;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/SoundPoolUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c\u516d\u6b65 \u8fdb\u5165\u4e00\u952e\u77ed\u7247\u4e3b\u9875\u9762\u83b7\u53d6\u89d2\u6807"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->modeCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onekey_clips_nemo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->modeCode:I

    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setMenuViewIcon(I)V

    .line 364
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartClipsManager;->getInstance()Lcom/powervision/aircraft/smart/SmartClipsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    .line 365
    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartClipsManager;->initDate()V

    .line 366
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setTiltDistance(I)V

    .line 367
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->scollSelectView:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 368
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)V

    .line 374
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x1f4

    .line 375
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 376
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 328
    sget p1, Lcom/powervision/aircraft/R$id;->smart_clips_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->hideMenuImg:Landroid/widget/ImageView;

    .line 329
    sget p1, Lcom/powervision/aircraft/R$id;->smart_clips_function_select_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenu:Landroid/widget/LinearLayout;

    .line 330
    sget p1, Lcom/powervision/aircraft/R$id;->smart_clips_start_or_stop_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mStartOrStopImg:Landroid/widget/ImageView;

    .line 331
    sget p1, Lcom/powervision/aircraft/R$id;->clips_recess_set_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mDistanceLayout:Landroid/widget/RelativeLayout;

    .line 332
    sget p1, Lcom/powervision/aircraft/R$id;->clips_clockwise_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClockWise:Landroid/widget/RelativeLayout;

    .line 333
    sget p1, Lcom/powervision/aircraft/R$id;->clips_anti_clockwise_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mAntiClockWise:Landroid/widget/RelativeLayout;

    .line 334
    sget p1, Lcom/powervision/aircraft/R$id;->clips_surround_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSurroundText:Landroid/widget/TextView;

    .line 335
    sget p1, Lcom/powervision/aircraft/R$id;->clips_clockwise_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSurroundImg:Landroid/widget/ImageView;

    .line 336
    sget p1, Lcom/powervision/aircraft/R$id;->smart_function_set_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mFunctionMenuLayout:Landroid/widget/LinearLayout;

    .line 337
    sget p1, Lcom/powervision/aircraft/R$id;->smart_clips_function_select_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuImg:Landroid/widget/ImageView;

    .line 338
    sget p1, Lcom/powervision/aircraft/R$id;->smart_clips_function_select_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenuText:Landroid/widget/TextView;

    .line 339
    sget p1, Lcom/powervision/aircraft/R$id;->smart_function_recess_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSmartRecessLayout:Landroid/widget/RelativeLayout;

    .line 340
    sget p1, Lcom/powervision/aircraft/R$id;->smart_function_surround_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSmartSurroundLayout:Landroid/widget/RelativeLayout;

    .line 341
    sget p1, Lcom/powervision/aircraft/R$id;->smart_function_screw_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSmartScrewLayout:Landroid/widget/RelativeLayout;

    .line 342
    sget p1, Lcom/powervision/aircraft/R$id;->smart_function_ellipse_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSmartEllipseLayout:Landroid/widget/RelativeLayout;

    .line 343
    sget p1, Lcom/powervision/aircraft/R$id;->smart_function_towering_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSmartToweringLayout:Landroid/widget/RelativeLayout;

    .line 344
    sget p1, Lcom/powervision/aircraft/R$id;->smart_function_seekbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->scollSelectView:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 345
    sget p1, Lcom/powervision/aircraft/R$id;->seekbar_set_value:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSetDistanceValue:Landroid/widget/TextView;

    .line 346
    sget p1, Lcom/powervision/aircraft/R$id;->smart_function_set_scroll_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSeekbarLayout:Landroid/widget/RelativeLayout;

    .line 347
    sget p1, Lcom/powervision/aircraft/R$id;->touch_clips_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    .line 348
    sget p1, Lcom/powervision/aircraft/R$id;->clips_media_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mMediaImg:Landroid/widget/ImageView;

    .line 349
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_smart_clips_menu:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClipsMenuLayout:Landroid/widget/RelativeLayout;

    .line 350
    sget p1, Lcom/powervision/aircraft/R$id;->clips_show_arrow_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mShowMenu:Landroid/widget/ImageView;

    .line 351
    sget p1, Lcom/powervision/aircraft/R$id;->recess_distance_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mRecessDistanceText:Landroid/widget/TextView;

    .line 352
    sget p1, Lcom/powervision/aircraft/R$id;->count_down_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mCountDownTime:Landroid/widget/TextView;

    .line 353
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->changeTouchViewSize()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 411
    sget v0, Lcom/powervision/aircraft/R$id;->smart_clips_back:I

    const/16 v1, 0xd9

    const/4 v2, 0x2

    .line 427
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    .line 426
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    .line 420
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-ne p1, v0, :cond_2

    .line 412
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClipsMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 413
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mShowMenu:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSeekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSeekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 417
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mFunctionMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 418
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mFunctionMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 423
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->clips_show_arrow_bt:I

    if-ne p1, v0, :cond_3

    .line 424
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClipsMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 425
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mShowMenu:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 429
    :cond_3
    sget v0, Lcom/powervision/aircraft/R$id;->smart_clips_function_select_layout:I

    if-ne p1, v0, :cond_6

    .line 430
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-virtual {p1}, Lcom/powervision/aircraft/smart/SmartClipsManager;->isClipsMode()Z

    move-result p1

    if-nez p1, :cond_5

    .line 431
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mFunctionMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 432
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mFunctionMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSeekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1a

    .line 434
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSeekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 437
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mFunctionMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 440
    :cond_5
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_183:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto/16 :goto_0

    .line 442
    :cond_6
    sget v0, Lcom/powervision/aircraft/R$id;->smart_clips_start_or_stop_img:I

    if-ne p1, v0, :cond_d

    .line 443
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->currentHeight:F

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    .line 444
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isStartClips:Z

    if-nez p1, :cond_b

    .line 445
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->health:I

    const/16 v0, 0x17

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    const/16 v0, 0xf34

    if-eqz p1, :cond_7

    .line 446
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 448
    :cond_7
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->health:I

    const/16 v1, 0x18

    invoke-static {p1, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 449
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 452
    :cond_8
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result p1

    if-nez p1, :cond_9

    .line 453
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_66:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 456
    :cond_9
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isClickMode:Z

    if-eqz p1, :cond_a

    .line 457
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->showTimeDown()V

    .line 458
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mStartOrStopImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_stop_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mMediaImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iput-boolean v5, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isStartClips:Z

    .line 461
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-boolean v5, p1, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isNeedTouch:Z

    .line 462
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const-string p1, "onekey_clips_nemo"

    const-string v0, "\u6267\u884c\u4e00\u952e\u77ed\u7247\u5f00\u59cb"

    .line 463
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 465
    :cond_a
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_184:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto/16 :goto_0

    .line 469
    :cond_b
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-virtual {p1}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setClipsMode()V

    .line 470
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mStartOrStopImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_clips_start_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 471
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mMediaImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->hideTimeDown()V

    .line 473
    iput-boolean v7, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isStartClips:Z

    .line 474
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-boolean v7, p1, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isNeedTouch:Z

    .line 475
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 478
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_18:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto/16 :goto_0

    .line 481
    :cond_c
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_161:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto/16 :goto_0

    .line 483
    :cond_d
    sget v0, Lcom/powervision/aircraft/R$id;->clips_recess_set_layout:I

    if-ne p1, v0, :cond_10

    .line 484
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isStartClips:Z

    if-eqz p1, :cond_e

    return-void

    .line 487
    :cond_e
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSeekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f

    .line 488
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSeekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 490
    :cond_f
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSeekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 491
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mFunctionMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1a

    .line 492
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mFunctionMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 495
    :cond_10
    sget v0, Lcom/powervision/aircraft/R$id;->clips_clockwise_layout:I

    if-ne p1, v0, :cond_13

    .line 497
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isStartClips:Z

    if-eqz p1, :cond_11

    return-void

    .line 500
    :cond_11
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->oriValue:I

    if-nez p1, :cond_12

    .line 501
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-virtual {p1, v5}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setROIParamer(I)V

    goto :goto_0

    :cond_12
    if-ne p1, v5, :cond_1a

    .line 503
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-virtual {p1, v7}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setROIParamer(I)V

    goto :goto_0

    .line 505
    :cond_13
    sget v0, Lcom/powervision/aircraft/R$id;->smart_function_recess_layout:I

    if-ne p1, v0, :cond_14

    .line 506
    invoke-direct {p0, v7}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setMenuViewIcon(I)V

    .line 507
    iput v7, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->modeCode:I

    goto :goto_0

    .line 508
    :cond_14
    sget v0, Lcom/powervision/aircraft/R$id;->smart_function_surround_layout:I

    if-ne p1, v0, :cond_15

    .line 509
    invoke-direct {p0, v5}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setMenuViewIcon(I)V

    .line 510
    iput v5, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->modeCode:I

    goto :goto_0

    .line 511
    :cond_15
    sget v0, Lcom/powervision/aircraft/R$id;->smart_function_screw_layout:I

    if-ne p1, v0, :cond_16

    .line 512
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setMenuViewIcon(I)V

    .line 513
    iput v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->modeCode:I

    goto :goto_0

    .line 514
    :cond_16
    sget v0, Lcom/powervision/aircraft/R$id;->smart_function_towering_layout:I

    if-ne p1, v0, :cond_17

    const/4 p1, 0x3

    .line 515
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setMenuViewIcon(I)V

    .line 516
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->modeCode:I

    goto :goto_0

    .line 517
    :cond_17
    sget v0, Lcom/powervision/aircraft/R$id;->smart_function_ellipse_layout:I

    if-ne p1, v0, :cond_18

    const/4 p1, 0x4

    .line 518
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setMenuViewIcon(I)V

    .line 519
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->modeCode:I

    goto :goto_0

    .line 520
    :cond_18
    sget v0, Lcom/powervision/aircraft/R$id;->clips_media_img:I

    if-ne p1, v0, :cond_1a

    .line 521
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_19

    .line 522
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 525
    :cond_19
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/media/mediaLibActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    :cond_1a
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->removeListener(Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;)V

    .line 763
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartClipsManager;->removeListener()V

    .line 764
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03SysWarnListener(Lcom/powervision/sdk/callback/Ap03SysWarnListener;)V

    .line 766
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 769
    :cond_0
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 757
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onPause()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 568
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->distanceValue:I

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 405
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 578
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSeekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 579
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSetDistanceValue:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->distanceValue:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->distanceValue:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setTiltDistance(I)V

    .line 581
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mRecessDistanceText:Landroid/widget/TextView;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->distanceValue:I

    add-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTouchView(IIII)V
    .locals 1

    int-to-float p1, p1

    .line 607
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    .line 608
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p3, p3

    .line 609
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    int-to-float p4, p4

    .line 610
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 611
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartClipsManager;->getInstance()Lcom/powervision/aircraft/smart/SmartClipsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setVisionTrack(FFFF)V

    return-void
.end method

.method public outLimitCancelSubMode()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 382
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 383
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->hideMenuImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->clipsFunctionMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mStartOrStopImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mDistanceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mClockWise:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mAntiClockWise:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSmartRecessLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSmartSurroundLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSmartScrewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSmartEllipseLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mSmartToweringLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->scollSelectView:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 395
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsManager:Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setSmartClipsInterface(Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;)V

    .line 396
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->setThouchGuideListener(Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;)V

    .line 397
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mMediaImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->hideMenuImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mShowMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03SysWarnListener(Lcom/powervision/sdk/callback/Ap03SysWarnListener;)V

    return-void
.end method

.method public setORIParamerFailed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UPLOAD"

    .line 697
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string v0, "DOWNLOAD"

    .line 699
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 700
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setTiltDistance(Ljava/lang/String;F)V
    .locals 0

    .line 663
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->distance:F

    const-string p2, "UPLOAD"

    .line 664
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 665
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p2, "DOWNLOAD"

    .line 666
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 667
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setTiltDistanceFailed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UPLOAD"

    .line 688
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string v0, "DOWNLOAD"

    .line 690
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 691
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->smartClipsrHandler:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$SmartClipsrHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTouchRectangleView(J[F[F[F[F[F[SI)V
    .locals 6

    .line 599
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p9

    .line 600
    invoke-virtual/range {v0 .. v5}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->getVisionDetectInfo([F[F[F[FI)V

    :cond_0
    const/4 p1, 0x0

    .line 602
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isClickMode:Z

    return-void
.end method

.method public updateTouchRectangleViewTrack(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->getVisionTrackInfo(Ljava/util/List;)V

    .line 624
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 625
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->isClickMode:Z

    :cond_1
    return-void
.end method
