.class public Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "SmartFollowFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;
.implements Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;
.implements Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;
.implements Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/powervision/sdk/callback/Ap03CurrentModeListener;
.implements Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;
    }
.end annotation


# static fields
.field private static final CHECK_RESOLUTION:I = 0x67

.field private static final POST_MSG_TO_SHOW:I = 0x68

.field private static final SET_SMART_PARAMA_FAILED:I = 0x64

.field private static final SHOW_DIALOG:I = 0x66

.field private static final UPDATE_DIALOG_MODE:I = 0x65


# instance fields
.field private final TAG:Ljava/lang/String;

.field private appCompatSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

.field private barrierFlag:I

.field private followHeightUnit:Landroid/widget/TextView;

.field private followSpeedUnit:Landroid/widget/TextView;

.field private followStatus:I

.field private heightTitle:Landroid/widget/TextView;

.field private isClickMode:Z

.field private isStartFollow:I

.field private isWaterFollow:Z

.field private lastSpeed:F

.field private mBackIv:Landroid/widget/ImageView;

.field private mFollowBottomRootLayou:Landroid/widget/LinearLayout;

.field private mFollowDisatanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mFollowDistanceValue:Landroid/widget/TextView;

.field private mFollowHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mFollowHeightValue:Landroid/widget/TextView;

.field private mFollowLockModeIv:Landroid/widget/ImageView;

.field private mFollowModeNormalIv:Landroid/widget/ImageView;

.field private mFollowModeStart:Z

.field private mFollowParallelModeIv:Landroid/widget/ImageView;

.field private mFollowPhotoMedia:Landroid/widget/ImageView;

.field private mFollowSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mFollowSpeedValue:Landroid/widget/TextView;

.field private mFollowStartStopIv:Landroid/widget/ImageView;

.field private mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

.field private mModeType:I

.field private mScrollLayout:Landroid/widget/RelativeLayout;

.field private mScrollValueiewDistance:Lcom/powervision/aircraft/ui/views/ScollSelectView;

.field private mScrollValueiewHight:Lcom/powervision/aircraft/ui/views/ScollSelectView;

.field private mShowArrowView:Landroid/widget/ImageView;

.field private mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

.field private maxValueText:Landroid/widget/TextView;

.field private minValueText:Landroid/widget/TextView;

.field modeCode:I

.field private smartFollowHandler:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

.field private speedTitle:Landroid/widget/TextView;

.field subModeCode:I

.field private type:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const-string v0, "helin"

    .line 68
    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    .line 91
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->smartFollowHandler:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

    .line 96
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->modeCode:I

    const/4 v1, 0x0

    .line 97
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->subModeCode:I

    .line 112
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isStartFollow:I

    .line 120
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->type:Landroid/util/SparseArray;

    .line 127
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->barrierFlag:I

    .line 816
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isWaterFollow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;Landroid/os/Message;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->checkInWaterFollowMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)Lcom/powervision/base/dialog/AvoidanceDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->barrierFlag:I

    return p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showCloseDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followStatus:I

    return p0
.end method

.method private checkAndReSend(I)V
    .locals 2

    .line 842
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$4;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkInWaterFollowMode()V
    .locals 4

    .line 1008
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1009
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->canInFollow()I

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1015
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkResolutionAndChange30()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1018
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    :cond_1
    if-nez v0, :cond_2

    .line 1025
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraPhotoSize()I

    move-result v0

    if-nez v0, :cond_2

    .line 1027
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setPhotoResolution(I)V

    :cond_2
    return-void
.end method

.method private checkResolution(Z)V
    .locals 4

    .line 979
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    const/16 v1, 0x68

    const/4 v2, 0x4

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x19

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_1

    const/16 v3, 0x15

    if-ne v0, v3, :cond_5

    :cond_1
    if-eqz p1, :cond_2

    .line 991
    new-instance p1, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_212:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->smartFollowHandler:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 993
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 994
    iput v1, v0, Landroid/os/Message;->what:I

    .line 995
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->smartFollowHandler:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;->sendMessage(Landroid/os/Message;)Z

    .line 997
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 982
    new-instance p1, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_212:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->smartFollowHandler:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 984
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 985
    iput v1, v0, Landroid/os/Message;->what:I

    .line 986
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->smartFollowHandler:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;->sendMessage(Landroid/os/Message;)Z

    .line 988
    :cond_4
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 3

    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 246
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/base/warning/HoverMessage;

    .line 247
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Lcom/powervision/base/warning/HoverMessage;

    const-string v2, "avoid_follow_warning"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 243
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->checkResolution(Z)V

    goto/16 :goto_1

    .line 238
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-virtual {p1}, Lcom/powervision/base/dialog/AvoidanceDialog;->show()V

    .line 239
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-virtual {p1, v2}, Lcom/powervision/base/dialog/AvoidanceDialog;->setToggleChecked(Z)V

    .line 240
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-virtual {p1, v2}, Lcom/powervision/base/dialog/AvoidanceDialog;->setSelectEnable(Z)V

    goto/16 :goto_1

    .line 232
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 233
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/powervision/base/dialog/AvoidanceDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-virtual {v0, p1}, Lcom/powervision/base/dialog/AvoidanceDialog;->setSelect(I)V

    goto/16 :goto_1

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dealWithMessage: followStatus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "helin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followStatus:I

    if-nez p1, :cond_1

    .line 199
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf56

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 201
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf55

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 204
    :cond_2
    :goto_0
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followStatus:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 205
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowStartStopIv:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_surround_continue:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeStart:Z

    .line 207
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->setVisibility(I)V

    .line 208
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isClickMode:Z

    .line 209
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-boolean v0, p1, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isNeedTouch:Z

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_7

    .line 211
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowStartStopIv:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_surround_stop:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeStart:Z

    .line 213
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->setVisibility(I)V

    .line 214
    iput v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isStartFollow:I

    .line 215
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-boolean v2, p1, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isNeedTouch:Z

    .line 216
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->modeCode:I

    const/16 v0, 0x15

    const-string v1, ""

    if-ne p1, v0, :cond_4

    .line 217
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "AP03_D_AI_Trace"

    .line 218
    invoke-static {v0, v1, v1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 217
    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x16

    if-ne p1, v0, :cond_5

    .line 220
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "AP03_D_AI_Parallel"

    .line 221
    invoke-static {v0, v1, v1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 220
    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x17

    if-ne p1, v0, :cond_7

    .line 223
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "AP03_D_AI_Spotlight"

    .line 224
    invoke-static {v0, v1, v1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 223
    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 193
    :cond_6
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->switchModeViews()V

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initBottomViews()V
    .locals 5

    .line 264
    sget v0, Lcom/powervision/aircraft/R$id;->follow_setting_arrow:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mBackIv:Landroid/widget/ImageView;

    .line 265
    sget v0, Lcom/powervision/aircraft/R$id;->follow_normal_mode_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeNormalIv:Landroid/widget/ImageView;

    .line 266
    sget v0, Lcom/powervision/aircraft/R$id;->follow_parallel_mode_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowParallelModeIv:Landroid/widget/ImageView;

    .line 267
    sget v0, Lcom/powervision/aircraft/R$id;->follow_lock_mode_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowLockModeIv:Landroid/widget/ImageView;

    .line 269
    sget v0, Lcom/powervision/aircraft/R$id;->follow_start_stop:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowStartStopIv:Landroid/widget/ImageView;

    .line 270
    sget v0, Lcom/powervision/aircraft/R$id;->follow_photo_media:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowPhotoMedia:Landroid/widget/ImageView;

    .line 272
    sget v0, Lcom/powervision/aircraft/R$id;->follow_height_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightValue:Landroid/widget/TextView;

    .line 273
    sget v0, Lcom/powervision/aircraft/R$id;->follow_distance_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowDistanceValue:Landroid/widget/TextView;

    .line 274
    sget v0, Lcom/powervision/aircraft/R$id;->follow_speed_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedValue:Landroid/widget/TextView;

    .line 276
    sget v0, Lcom/powervision/aircraft/R$id;->follow_height_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 277
    sget v0, Lcom/powervision/aircraft/R$id;->follow_distance_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowDisatanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 278
    sget v0, Lcom/powervision/aircraft/R$id;->follow_speed_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 280
    sget v0, Lcom/powervision/aircraft/R$id;->follow_bottom_root_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowBottomRootLayou:Landroid/widget/LinearLayout;

    .line 281
    sget v0, Lcom/powervision/aircraft/R$id;->follow_scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    .line 282
    sget v0, Lcom/powervision/aircraft/R$id;->value_view_distance:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewDistance:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    .line 283
    sget v0, Lcom/powervision/aircraft/R$id;->value_view_height:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewHight:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    .line 285
    sget v0, Lcom/powervision/aircraft/R$id;->follow_touch_rectangle_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    .line 286
    sget v0, Lcom/powervision/aircraft/R$id;->follow_middle_seek_bar:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    const/16 v1, -0x64

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 287
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setSeekLength(IIIF)V

    .line 288
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setValue(FZ)V

    .line 289
    sget v0, Lcom/powervision/aircraft/R$id;->smart_function_seekbar:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->appCompatSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 290
    sget v0, Lcom/powervision/aircraft/R$id;->min_value_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->minValueText:Landroid/widget/TextView;

    .line 291
    sget v0, Lcom/powervision/aircraft/R$id;->max_value_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->maxValueText:Landroid/widget/TextView;

    .line 293
    sget v0, Lcom/powervision/aircraft/R$id;->follow_show_arrow_bt:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mShowArrowView:Landroid/widget/ImageView;

    .line 296
    sget v0, Lcom/powervision/aircraft/R$id;->height_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->heightTitle:Landroid/widget/TextView;

    .line 297
    sget v0, Lcom/powervision/aircraft/R$id;->follow_height_unit:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followHeightUnit:Landroid/widget/TextView;

    .line 298
    sget v0, Lcom/powervision/aircraft/R$id;->speed_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->speedTitle:Landroid/widget/TextView;

    .line 299
    sget v0, Lcom/powervision/aircraft/R$id;->follow_speed_unit:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followSpeedUnit:Landroid/widget/TextView;

    .line 300
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->changeTouchViewSize()V

    return-void
.end method

.method private initScrollViewsData()V
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewDistance:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/4 v1, 0x3

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getScrollDataList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setDatas(Ljava/util/List;)V

    .line 679
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewHight:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/16 v2, 0x78

    invoke-virtual {p0, v1, v2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getScrollDataList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setDatas(Ljava/util/List;)V

    return-void
.end method

.method private isShowFollowMode()V
    .locals 5

    .line 414
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->modeCode:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->subModeCode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 415
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeNormalIv:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowParallelModeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowLockModeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_AI_106:I

    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v2

    const-class v3, Lcom/powervision/base/warning/HoverMessage;

    const-string v4, "avoid_follow_warning"

    invoke-virtual {v2, v4, v3}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 420
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v2, "SMART_FOLLOW_REMINDER_WATER"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;-><init>()V

    .line 422
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/ui/fragment/dialog/WaterModeNoticeDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeNormalIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowParallelModeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowLockModeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetData()V
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeStart:Z

    .line 140
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isClickMode:Z

    return-void
.end method

.method private showCloseDialog()V
    .locals 2

    .line 486
    new-instance v0, Lcom/powervision/base/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 487
    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setSingle(Z)Lcom/powervision/base/dialog/CommonDialog;

    .line 488
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_210:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setMessage(I)Lcom/powervision/base/dialog/CommonDialog;

    .line 489
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_1:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setDialogTitle(I)Lcom/powervision/base/dialog/CommonDialog;

    .line 490
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setPositive(I)Lcom/powervision/base/dialog/CommonDialog;

    .line 491
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;Lcom/powervision/base/dialog/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setOnClickBottomListener(Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;)Lcom/powervision/base/dialog/CommonDialog;

    .line 502
    invoke-virtual {v0}, Lcom/powervision/base/dialog/CommonDialog;->show()V

    return-void
.end method

.method private showOrHideScrollLayout(I)V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_3

    .line 609
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    if-ne p1, v0, :cond_0

    .line 610
    invoke-direct {p0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showScrollLayoutByIndex(I)V

    .line 611
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 613
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 614
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto/16 :goto_0

    :cond_1
    if-ne p1, v4, :cond_2

    .line 616
    invoke-direct {p0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showScrollLayoutByIndex(I)V

    .line 617
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto/16 :goto_0

    :cond_2
    if-ne p1, v3, :cond_c

    .line 619
    invoke-direct {p0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showScrollLayoutByIndex(I)V

    .line 620
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto/16 :goto_0

    :cond_3
    if-ne p1, v4, :cond_7

    .line 623
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    if-ne p1, v0, :cond_4

    .line 624
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showScrollLayoutByIndex(I)V

    .line 625
    iput v4, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    .line 627
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showScrollLayoutByIndex(I)V

    .line 628
    iput v4, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_6

    .line 630
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 631
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto :goto_0

    :cond_6
    if-ne p1, v3, :cond_c

    .line 633
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showScrollLayoutByIndex(I)V

    .line 634
    iput v4, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto :goto_0

    :cond_7
    if-ne p1, v3, :cond_b

    .line 637
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    if-ne p1, v0, :cond_8

    .line 638
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showScrollLayoutByIndex(I)V

    .line 639
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 640
    iput v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto :goto_0

    :cond_8
    if-nez p1, :cond_9

    .line 642
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showScrollLayoutByIndex(I)V

    .line 643
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 644
    iput v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto :goto_0

    :cond_9
    if-ne p1, v4, :cond_a

    .line 646
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showScrollLayoutByIndex(I)V

    .line 647
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 648
    iput v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto :goto_0

    :cond_a
    if-ne p1, v3, :cond_c

    .line 650
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 651
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setVisibility(I)V

    .line 652
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    goto :goto_0

    :cond_b
    const-string p1, "SmartFollowFragment"

    const-string v3, "\u4ec0\u4e48\u90fd\u4e0d\u505a"

    .line 655
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_c
    :goto_0
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 659
    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {v3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_d

    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_d

    iget v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    if-ne v3, v0, :cond_d

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  i=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "helin"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 665
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 666
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 667
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->setBottomItemBg(I)V

    return-void
.end method

.method private showScrollLayoutByIndex(I)V
    .locals 4

    .line 671
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewDistance:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/4 v2, 0x4

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewHight:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setVisibility(I)V

    return-void
.end method

.method private switchModeViews()V
    .locals 6

    .line 345
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->modeCode:I

    const/16 v1, 0xf6

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x15

    if-ne v0, v4, :cond_1

    .line 346
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeNormalIv:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/aircraft/R$mipmap;->aircraft_follow_mode_pressed:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowParallelModeIv:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/aircraft/R$mipmap;->aircraft_follow_mode_parallel_normal:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowLockModeIv:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/aircraft/R$mipmap;->aircraft_follow_mode_lock_normal:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowDisatanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->type:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->subModeCode:I

    if-nez v0, :cond_0

    .line 354
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->type:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->heightTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followHeightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->speedTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followSpeedUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x16

    const/4 v5, 0x0

    if-ne v0, v4, :cond_2

    .line 369
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeNormalIv:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/aircraft/R$mipmap;->aircraft_follow_mode_normal:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowParallelModeIv:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/aircraft/R$mipmap;->aircraft_follow_mode_parallel_pressed:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowLockModeIv:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/aircraft/R$mipmap;->aircraft_follow_mode_lock_normal:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowDisatanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->type:Landroid/util/SparseArray;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->type:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->heightTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followHeightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->speedTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followSpeedUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x17

    if-ne v0, v4, :cond_3

    .line 388
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeNormalIv:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/aircraft/R$mipmap;->aircraft_follow_mode_normal:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowParallelModeIv:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/aircraft/R$mipmap;->aircraft_follow_mode_parallel_normal:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowLockModeIv:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/aircraft/R$mipmap;->aircraft_follow_mode_lock_pressed:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowDisatanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->type:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->type:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->heightTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 400
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followHeightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->speedTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followSpeedUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public changeTouchViewSize()V
    .locals 4

    .line 952
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v0

    .line 953
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v1

    .line 955
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    if-eqz v2, :cond_0

    .line 957
    invoke-virtual {v2}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 958
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 959
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 960
    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {v3, v2}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {v2, v0, v1}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->setWidthAndHeight(II)V

    .line 963
    sget v0, Lcom/powervision/aircraft/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 964
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 965
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 966
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {v2}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->centerHorizontally(II)V

    .line 967
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 254
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_smart_follow_setting_layout:I

    return v0
.end method

.method public getScrollDataList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    .line 685
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-gt p1, p2, :cond_0

    .line 688
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 690
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 305
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mode_tag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->modeCode:I

    .line 307
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subMode_tag"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->subModeCode:I

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->switchModeViews()V

    .line 310
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->initScrollViewsData()V

    .line 311
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isShowFollowMode()V

    .line 312
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->initSDK()V

    .line 313
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setOnSetFollowParmasListener(Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;)V

    .line 314
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "MPC_AVOI_ON"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    .line 315
    new-instance v0, Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/dialog/AvoidanceDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    .line 316
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->subModeCode:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isWaterOrNormal(I)V

    .line 317
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setInNormalFollow(Z)V

    .line 318
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->checkInWaterFollowMode()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 259
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 260
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->initBottomViews()V

    return-void
.end method

.method public synthetic lambda$onSmartFunctionActuaHight$1$SmartFollowFragment(F)V
    .locals 3

    .line 914
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    float-to-double v1, p1

    const/4 p1, 0x1

    .line 915
    invoke-static {v1, v2, p1}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onSmartFunctionActuaSpeed$2$SmartFollowFragment(F)V
    .locals 3

    .line 923
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    float-to-double v1, p1

    const/4 p1, 0x1

    .line 924
    invoke-static {v1, v2, p1}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onSmartFunctionData$0$SmartFollowFragment(FFFF)V
    .locals 3

    .line 888
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewDistance:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->getVisibility()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewDistance:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->minValueText:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->maxValueText:Landroid/widget/TextView;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewDistance:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    float-to-int p1, p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setCurrentItem(I)V

    .line 893
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewHight:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewHight:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 894
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->minValueText:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->maxValueText:Landroid/widget/TextView;

    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewHight:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    float-to-int p2, p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setCurrentItem(I)V

    .line 898
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    if-eqz p1, :cond_2

    .line 899
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=======\u6ed1\u52a8\u8f74\u8d4b\u503c==="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onekey_follow_nemo"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->lastSpeed:F

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_2

    .line 901
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v0, v0, p3

    invoke-virtual {p1, v0, p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setValue(FZ)V

    .line 902
    iput p3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->lastSpeed:F

    .line 905
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowDistanceValue:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    float-to-double p3, p4

    .line 906
    invoke-static {p3, p4, p2}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 510
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 513
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 514
    sget v0, Lcom/powervision/aircraft/R$id;->follow_setting_arrow:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    .line 515
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 516
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowBottomRootLayou:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setVisibility(I)V

    .line 518
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mShowArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 520
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 521
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 522
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->follow_show_arrow_bt:I

    if-ne p1, v0, :cond_2

    .line 523
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 524
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowBottomRootLayou:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setVisibility(I)V

    .line 526
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mShowArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 527
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->follow_normal_mode_iv:I

    const/4 v1, 0x2

    const/4 v4, 0x4

    const-string v5, "helin"

    if-ne p1, v0, :cond_6

    .line 528
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->modeCode:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_3

    .line 529
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->barrierFlag:I

    invoke-static {p1, v1}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 530
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-virtual {p1}, Lcom/powervision/base/dialog/AvoidanceDialog;->show()V

    .line 531
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-virtual {p1, v3}, Lcom/powervision/base/dialog/AvoidanceDialog;->setToggleChecked(Z)V

    .line 532
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-virtual {p1, v3}, Lcom/powervision/base/dialog/AvoidanceDialog;->setSelectEnable(Z)V

    .line 534
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isRecording()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "recording........"

    .line 535
    invoke-static {v5, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->checkResolution(Z)V

    .line 542
    :cond_3
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->subModeCode:I

    if-nez p1, :cond_4

    const-string p1, "=========111111"

    .line 543
    invoke-static {v5, p1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v1, v3, [I

    aput v3, v1, v2

    invoke-virtual {p1, v4, v1}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    goto :goto_0

    :cond_4
    if-ne p1, v3, :cond_5

    const-string p1, "=========222222"

    .line 546
    invoke-static {v5, p1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v1, v3, [I

    aput v4, v1, v2

    invoke-virtual {p1, v4, v1}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    .line 549
    :cond_5
    :goto_0
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->modeCode:I

    goto/16 :goto_3

    .line 550
    :cond_6
    sget v0, Lcom/powervision/aircraft/R$id;->follow_parallel_mode_iv:I

    const/4 v6, 0x5

    if-ne p1, v0, :cond_9

    .line 554
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->subModeCode:I

    if-nez p1, :cond_7

    const-string p1, "=========333333"

    .line 555
    invoke-static {v5, p1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v0, v3, [I

    aput v1, v0, v2

    invoke-virtual {p1, v4, v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    goto :goto_1

    :cond_7
    if-ne p1, v3, :cond_8

    const-string p1, "=========444444"

    .line 558
    invoke-static {v5, p1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v0, v3, [I

    aput v6, v0, v2

    invoke-virtual {p1, v4, v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    :cond_8
    :goto_1
    const/16 p1, 0x16

    .line 561
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->modeCode:I

    goto/16 :goto_3

    .line 562
    :cond_9
    sget v0, Lcom/powervision/aircraft/R$id;->follow_lock_mode_iv:I

    if-ne p1, v0, :cond_c

    .line 566
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->subModeCode:I

    if-nez p1, :cond_a

    const-string p1, "=========555555"

    .line 567
    invoke-static {v5, p1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v0, v3, [I

    const/4 v1, 0x3

    aput v1, v0, v2

    invoke-virtual {p1, v4, v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    goto :goto_2

    :cond_a
    if-ne p1, v3, :cond_b

    const-string p1, "=========666666"

    .line 570
    invoke-static {v5, p1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v0, v3, [I

    const/4 v1, 0x6

    aput v1, v0, v2

    invoke-virtual {p1, v4, v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    :cond_b
    :goto_2
    const/16 p1, 0x17

    .line 573
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->modeCode:I

    goto/16 :goto_3

    .line 574
    :cond_c
    sget v0, Lcom/powervision/aircraft/R$id;->follow_start_stop:I

    if-ne p1, v0, :cond_f

    .line 575
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: mFollowModeStart = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeStart:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isClickMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isClickMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeStart:Z

    if-nez p1, :cond_e

    .line 577
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isClickMode:Z

    if-eqz p1, :cond_d

    .line 578
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v0, v3, [I

    aput v3, v0, v2

    invoke-virtual {p1, v6, v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    goto :goto_3

    .line 580
    :cond_d
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_184:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_3

    .line 583
    :cond_e
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    new-array v0, v3, [I

    aput v2, v0, v2

    invoke-virtual {p1, v6, v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    .line 584
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->checkAndReSend(I)V

    goto :goto_3

    .line 586
    :cond_f
    sget v0, Lcom/powervision/aircraft/R$id;->follow_photo_media:I

    if-ne p1, v0, :cond_11

    .line 587
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_10

    .line 588
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 592
    :cond_10
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/media/mediaLibActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_3

    .line 593
    :cond_11
    sget v0, Lcom/powervision/aircraft/R$id;->follow_distance_layout:I

    if-ne p1, v0, :cond_12

    .line 594
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showOrHideScrollLayout(I)V

    goto :goto_3

    .line 595
    :cond_12
    sget v0, Lcom/powervision/aircraft/R$id;->follow_height_layout:I

    if-ne p1, v0, :cond_13

    .line 596
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showOrHideScrollLayout(I)V

    goto :goto_3

    .line 597
    :cond_13
    sget v0, Lcom/powervision/aircraft/R$id;->follow_speed_layout:I

    if-ne p1, v0, :cond_14

    .line 598
    invoke-direct {p0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->showOrHideScrollLayout(I)V

    :cond_14
    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "helin"

    const-string v1, "onDestroy: SmartFollow"

    .line 939
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->removeListener()V

    .line 941
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->removeListener(Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;)V

    .line 942
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->removeListener(Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;)V

    .line 943
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 944
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 945
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "helin"

    const-string v1, "onDestroyView: "

    .line 131
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setInNormalFollow(Z)V

    .line 133
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->resetData()V

    .line 134
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 135
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onItemSelect(I)V
    .locals 4

    .line 727
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mModeType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 728
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    new-array v3, v2, [I

    add-int/lit8 p1, p1, 0x3

    aput p1, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 732
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    new-array v2, v2, [I

    add-int/lit8 p1, p1, 0x3

    aput p1, v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 327
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    const-string v0, "helin"

    const-string v1, "onResume: --"

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSeekChanged(FFLcom/powervision/aircraft/ui/views/MiddleSeekBar;)V
    .locals 0

    return-void
.end method

.method public onSeekStopped(FFLcom/powervision/aircraft/ui/views/MiddleSeekBar;)V
    .locals 0

    .line 765
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "=======\u6ed1\u52a8\u8f74==="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onekey_follow_nemo"

    invoke-static {p3, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowVelocity(IF)V

    return-void
.end method

.method public onSetGetFloatParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public onSetGetIntParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "MPC_AVOI_ON"

    .line 145
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SUCCESS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->barrierFlag:I

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSetGetIntParamDate: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->barrierFlag:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "helin"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CameraUtil.isRecording(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isRecording()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->barrierFlag:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \uff0c\u8ddf\u968f\u907f\u969c\u5f00\u542f = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->barrierFlag:I

    const/4 p4, 0x2

    invoke-static {p2, p4}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->barrierFlag:I

    invoke-static {p1, p4}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->subModeCode:I

    if-nez p1, :cond_1

    .line 155
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->modeCode:I

    const/16 p2, 0x15

    if-ne p1, p2, :cond_1

    .line 156
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->smartFollowHandler:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public onSetGetLongParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onSetParmasResultFailed(II)V
    .locals 0

    .line 876
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->smartFollowHandler:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSetParmasResultSuccess(II)V
    .locals 2

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetParmasResultSuccess: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 867
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->smartFollowHandler:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

    invoke-virtual {p2, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->smartFollowHandler:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;->sendEmptyMessage(I)Z

    .line 870
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->followStatus:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSmartFunctionActuaHight(F)V
    .locals 2

    .line 913
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowFragment$IfGllJKk4Qk-ELwykU1QuAwjt_Y;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowFragment$IfGllJKk4Qk-ELwykU1QuAwjt_Y;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;F)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSmartFunctionActuaSpeed(F)V
    .locals 2

    .line 922
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowFragment$0J_GTmMHlhcB_o97PHq0bn3-MEo;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowFragment$0J_GTmMHlhcB_o97PHq0bn3-MEo;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;F)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSmartFunctionData(FFFFI)V
    .locals 7

    .line 884
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    if-nez p5, :cond_0

    return-void

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    new-instance v6, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowFragment$YUKcuV95fXbLfo26gG7JzP47G4s;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move v3, p2

    move v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowFragment$YUKcuV95fXbLfo26gG7JzP47G4s;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;FFFF)V

    invoke-virtual {p5, v6}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onTouchView(IIII)V
    .locals 1

    int-to-float p1, p1

    .line 779
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    .line 780
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p3, p3

    .line 781
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    int-to-float p4, p4

    .line 782
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 783
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setVisionTrack(FFFF)V

    return-void
.end method

.method setBottomItemBg(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 702
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowDisatanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_circle_triang_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 703
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 704
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 706
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowDisatanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 707
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_circle_triang_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 708
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 710
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowDisatanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 711
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 712
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_circle_triang_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 714
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowDisatanceLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 715
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowHeightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 716
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowSpeedLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_90_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "POSCTL"

    .line 932
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "TRIPLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "FAST"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 933
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 p2, 0xf31

    invoke-virtual {p1, p2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_1
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mBackIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowModeNormalIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowParallelModeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowLockModeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowStartStopIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowPhotoMedia:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewDistance:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setOnScrollSelect(Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;)V

    .line 443
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mScrollValueiewHight:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->setOnScrollSelect(Lcom/powervision/aircraft/ui/views/ScollSelectView$OnScrollSelect;)V

    .line 444
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->setThouchGuideListener(Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;)V

    .line 445
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mShowArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setOnSeekChangeListener(Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;)V

    .line 447
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->appCompatSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 448
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 449
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 450
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->avoidanceDialog:Lcom/powervision/base/dialog/AvoidanceDialog;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/AvoidanceDialog;->setSelectListener(Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;)V

    return-void
.end method

.method public switchRecordAndPhoto()V
    .locals 4
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xd6
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->smartFollowHandler:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateTouchRectangleView(J[F[F[F[F[F[SI)V
    .locals 6

    .line 801
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p9

    .line 802
    invoke-virtual/range {v0 .. v5}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->getVisionDetectInfo([F[F[F[FI)V

    :cond_0
    const/4 p1, 0x0

    .line 804
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isClickMode:Z

    .line 805
    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isStartFollow:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 806
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mFollowStartStopIv:Landroid/widget/ImageView;

    sget p4, Lcom/powervision/aircraft/R$mipmap;->aircraft_surround_continue:I

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 807
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isStartFollow:I

    .line 808
    sget p2, Lcom/powervision/aircraft/R$string;->AP03_TakeoffAndlanding_15:I

    invoke-static {p2}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 809
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-boolean p1, p2, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->isNeedTouch:Z

    .line 810
    iput-boolean p3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isWaterFollow:Z

    .line 811
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 p2, 0xf56

    invoke-virtual {p1, p2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_1
    return-void
.end method

.method public updateTouchRectangleViewTrack(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/TouchRectangleView;->getVisionTrackInfo(Ljava/util/List;)V

    .line 827
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 828
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isClickMode:Z

    .line 830
    :cond_1
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isWaterFollow:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->modeCode:I

    const/16 v1, 0x15

    if-ne p1, v1, :cond_2

    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->subModeCode:I

    if-ne p1, v0, :cond_2

    .line 831
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    const/4 v1, 0x5

    new-array v2, v0, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    .line 832
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->checkAndReSend(I)V

    .line 833
    iput-boolean v3, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->isWaterFollow:Z

    :cond_2
    return-void
.end method
