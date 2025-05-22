.class public Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "PerceptionSettingFragment.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;
.implements Lcom/powervision/sdk/callback/Ap03CurrentModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;
    }
.end annotation


# static fields
.field private static final PERCEPTION_GET_FAILED:I = 0x3

.field private static final PERCEPTION_GET_SUCCESS:I = 0x1

.field private static final PERCEPTION_SET_SUCCESS:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_ALL:I = 0x64

.field public static final TYPE_FOLLOW:I = 0x65

.field public static final TYPE_MANUAL:I = 0x67

.field public static final TYPE_RETURN:I = 0x66


# instance fields
.field private barrierFlag:I

.field private closeBt:Landroid/widget/ImageView;

.field private currentMode:Ljava/lang/String;

.field private fcVersion:Ljava/lang/String;

.field private mBarrierFollowText:Landroid/widget/TextView;

.field private mBarrierManualText:Landroid/widget/TextView;

.field private mBarrierUpText:Landroid/widget/TextView;

.field private mCheckFollowBtn:Landroid/widget/ToggleButton;

.field private mCheckManualBtn:Landroid/widget/ToggleButton;

.field private mCheckPerceptionBtn:Landroid/widget/ToggleButton;

.field private mCheckUpBtn:Landroid/widget/ToggleButton;

.field private mTitle:Landroid/widget/TextView;

.field private perceptionHandler:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private rxParamerModel:Lcom/powervision/base/model/RxParamerModel;

.field private sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private waterMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->waterMode:I

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->currentMode:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->perceptionHandler:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckPerceptionBtn:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->fcVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->isInRecord()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->isHigher30fps()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->isInNormalFollowMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->setFollowAvoidEnable(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->currentMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->openAvoid(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->setCheckStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->checkResolution()V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->closeAvoid(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->waterMode:I

    return p0
.end method

.method static synthetic access$602(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->waterMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Lcom/powervision/base/utils/SharedPreferencesUtils;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Lcom/powervision/base/model/RxParamerModel;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->rxParamerModel:Lcom/powervision/base/model/RxParamerModel;

    return-object p0
.end method

.method private analysisParamer(I)V
    .locals 3

    const/4 v0, 0x0

    .line 351
    invoke-static {p1, v0}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckPerceptionBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 353
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 354
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 355
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 356
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->setCheckStatus(Z)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckPerceptionBtn:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 359
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckPerceptionBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    invoke-static {p1, v1}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 364
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 367
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private checkResolution()V
    .locals 2

    .line 556
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    .line 564
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_1

    .line 560
    :cond_2
    :goto_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private closeAvoid(I)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const-string p1, "0000"

    .line 519
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x66

    if-ne p1, v1, :cond_1

    .line 521
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    xor-int/2addr p1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 523
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    xor-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_2
    const/16 v0, 0x67

    if-ne p1, v0, :cond_3

    .line 525
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    xor-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    .line 527
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_AVOI_ON"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    return-void
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 1

    .line 138
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "MPC_AVOI_ON"

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->analysisParamer(I)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;
    .locals 1

    .line 150
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;-><init>()V

    return-object v0
.end method

.method private isHigher30fps()Z
    .locals 1

    .line 548
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isHigher30fps()Z

    move-result v0

    return v0
.end method

.method private isInNormalFollowMode()Z
    .locals 1

    .line 541
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isInNormalFollow()Z

    move-result v0

    return v0
.end method

.method private isInRecord()Z
    .locals 1

    .line 534
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isRecord()Z

    move-result v0

    return v0
.end method

.method private openAvoid(I)V
    .locals 3

    .line 496
    sget-object v0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openAvoid:  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const-string p1, "1111"

    .line 499
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    :cond_0
    const/16 v1, 0x66

    if-ne p1, v1, :cond_1

    .line 501
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    const-string v1, "0011"

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    or-int/2addr p1, v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 503
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    const-string v1, "0101"

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x67

    if-ne p1, v1, :cond_3

    .line 505
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    const-string v1, "1001"

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    .line 507
    :goto_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_AVOI_ON"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    return-void
.end method

.method private setCheckStatus(Z)V
    .locals 5

    .line 417
    sget-object v0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCheckOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->fcVersion:Ljava/lang/String;

    sget v1, Lcom/powervision/aircraft/R$string;->FC_FOLLOW:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBiggerOrSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->setOldMCVersionStatus()V

    return-void

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    if-nez p1, :cond_1

    .line 424
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 425
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 426
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 427
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierUpText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 429
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 430
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 431
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierFollowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 433
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 434
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 435
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierManualText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 438
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 439
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 440
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierUpText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 442
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->isInRecord()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->isHigher30fps()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->isInNormalFollowMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 443
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 444
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 445
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierFollowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 448
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 449
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierFollowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->currentMode:Ljava/lang/String;

    const-string v3, "TRIPLE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    const/4 v3, 0x3

    invoke-static {p1, v3}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isHigher30fps()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 453
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierManualText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 455
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 456
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_1

    .line 458
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierManualText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 460
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 461
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method private setFollowAvoidEnable(Z)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 407
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 408
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierFollowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setOldMCVersionStatus()V
    .locals 6

    .line 473
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 474
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 475
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 477
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierUpText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 478
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 479
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 480
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 482
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierFollowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 484
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 485
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 487
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierManualText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 155
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_perception_setting_layout:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 175
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 176
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 177
    new-instance v0, Lcom/powervision/base/model/RxParamerModel;

    invoke-direct {v0}, Lcom/powervision/base/model/RxParamerModel;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->rxParamerModel:Lcom/powervision/base/model/RxParamerModel;

    .line 178
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_FC_VERSION"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->fcVersion:Ljava/lang/String;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 160
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 161
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mTitle:Landroid/widget/TextView;

    .line 162
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->closeBt:Landroid/widget/ImageView;

    .line 163
    sget p1, Lcom/powervision/aircraft/R$id;->perception_show_toggle:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckPerceptionBtn:Landroid/widget/ToggleButton;

    .line 164
    sget p1, Lcom/powervision/aircraft/R$id;->check_up_toggle:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    .line 165
    sget p1, Lcom/powervision/aircraft/R$id;->check_follow_toggle:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    .line 166
    sget p1, Lcom/powervision/aircraft/R$id;->check_manual_toggle:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    .line 167
    sget p1, Lcom/powervision/aircraft/R$id;->barrier_check_up_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierUpText:Landroid/widget/TextView;

    .line 168
    sget p1, Lcom/powervision/aircraft/R$id;->barrier_check_follow_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierFollowText:Landroid/widget/TextView;

    .line 169
    sget p1, Lcom/powervision/aircraft/R$id;->text_manual:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mBarrierManualText:Landroid/widget/TextView;

    .line 170
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_233:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$setListener$0$PerceptionSettingFragment(Landroid/view/View;)V
    .locals 0

    .line 288
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeView(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 299
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 300
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 301
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 293
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 294
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_AVOI_ON"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    return-void
.end method

.method public onSetGetFloatParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public onSetGetIntParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 312
    sget-object v0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=====s1===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=====s2===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=====i====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UPLOAD"

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FAILED"

    const-string v2, "MPC_AVOI_ON"

    const-string v3, "TIMEOUT"

    const-string v4, "SUCCESS"

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 317
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    .line 318
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->perceptionHandler:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    const-string v0, "DOWNLOAD"

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 326
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 327
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 328
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    .line 329
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->perceptionHandler:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x3

    if-eqz p1, :cond_4

    .line 332
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->perceptionHandler:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;

    invoke-virtual {p1, p3}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 333
    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 334
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->perceptionHandler:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;

    invoke-virtual {p1, p3}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$PerceptionHandler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public onSetGetLongParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->currentMode:Ljava/lang/String;

    .line 84
    sget-object p2, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->currentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", barrierFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->barrierFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 183
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 184
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 185
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 186
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckPerceptionBtn:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckUpBtn:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckFollowBtn:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$4;-><init>(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->mCheckManualBtn:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$5;-><init>(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->closeBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$PerceptionSettingFragment$pb5Xjp1Dgea_GbcZPwa5drqvZaY;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$PerceptionSettingFragment$pb5Xjp1Dgea_GbcZPwa5drqvZaY;-><init>(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
