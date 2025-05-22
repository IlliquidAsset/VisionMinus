.class public Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment$OnCloseListener;
.implements Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;
.implements Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;
.implements Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;
.implements Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteDl01UpgradeStatusListener;


# instance fields
.field final HASDL01ANDFAILED:I

.field final REBOOT:I

.field final RETRY:I

.field final ZIP:I

.field final ap03_power_limate:I

.field commonCallback:Lorg/xutils/common/Callback$CommonCallback;

.field public current_Remote:I

.field fakeCount:F

.field private handlerThread:Landroid/os/HandlerThread;

.field private has_DL01:Z

.field private isDL01NeedUpgrade:Z

.field private isMcuNeedUpgrade:Z

.field private isMcuStart:Z

.field private isUpdatingDl01:Z

.field lastPro:I

.field private loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private mCloseBt:Landroid/widget/ImageView;

.field private mInstall_CircleBar:Lcom/powervision/base/views/CircleProgressBar;

.field private mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private mPromptGrayTv:Landroid/widget/TextView;

.field private mSending_circleBar:Lcom/powervision/base/views/CircleProgressBar;

.field private mUpgradeType:I

.field private mhandler:Landroid/os/Handler;

.field mlocalFirmWares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/Firmware;",
            ">;"
        }
    .end annotation
.end field

.field onGetAp03VersionListener:Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;

.field pitch:F

.field private progress2:Landroid/widget/ImageView;

.field private progress3:Landroid/widget/ImageView;

.field progressListener:Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;

.field reTryBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private reTryCount:I

.field reTryDl01Count:I

.field reTryListener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

.field realFileCount:F

.field final remote_power_limate:I

.field retryMechine:Lcn/powervision/upgrade/utils/RetryMechine;

.field private step1Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private step2Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field timeMechine:Lcn/powervision/upgrade/utils/TimeMechine;

.field private title:Landroid/widget/TextView;

.field updatelistener:Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 78
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryCount:I

    .line 102
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    .line 105
    iput-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isMcuNeedUpgrade:Z

    .line 106
    iput-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isDL01NeedUpgrade:Z

    .line 108
    iput-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->has_DL01:Z

    const/4 v1, -0x1

    .line 110
    iput v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->current_Remote:I

    .line 120
    iput-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isUpdatingDl01:Z

    .line 138
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->ZIP:I

    const/4 v2, 0x1

    .line 139
    iput v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->RETRY:I

    const/4 v2, 0x2

    .line 140
    iput v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->REBOOT:I

    .line 239
    new-instance v2, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$2;

    invoke-direct {v2, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$2;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    iput-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->onGetAp03VersionListener:Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;

    .line 417
    new-instance v2, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$4;

    invoke-direct {v2, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$4;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    iput-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    const/4 v2, 0x0

    .line 564
    iput-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    const/16 v3, 0x32

    .line 793
    iput v3, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->ap03_power_limate:I

    const/16 v3, 0x1e

    .line 794
    iput v3, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->remote_power_limate:I

    .line 907
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryDl01Count:I

    .line 1079
    iput v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->lastPro:I

    const/4 v0, 0x0

    .line 1080
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->fakeCount:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 1081
    iput v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->realFileCount:F

    .line 1082
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->pitch:F

    .line 1161
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updatelistener:Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    .line 1571
    iput-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryBar:Lcom/powervision/base/views/LoadingProgressBar;

    const/16 v0, 0x64

    .line 1609
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->HASDL01ANDFAILED:I

    .line 1709
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryListener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

    .line 1804
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$28;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$28;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->progressListener:Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->zip()V

    return-void
.end method

.method static synthetic access$100(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Landroid/os/HandlerThread;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->handlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$1002(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isMcuStart:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->upgradeRemoteDL01()V

    return-void
.end method

.method static synthetic access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mInstall_CircleBar:Lcom/powervision/base/views/CircleProgressBar;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;IIFI)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->doStep2(IIFI)V

    return-void
.end method

.method static synthetic access$1400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->doStep1()V

    return-void
.end method

.method static synthetic access$1500(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->has_DL01:Z

    return p0
.end method

.method static synthetic access$1600(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPromptGrayTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->doStep3()V

    return-void
.end method

.method static synthetic access$1800(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->toFailedActivity()V

    return-void
.end method

.method static synthetic access$1900(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;II)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->showErrorDialog(II)V

    return-void
.end method

.method static synthetic access$200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->toSuccessActivity()V

    return-void
.end method

.method static synthetic access$2000(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->doFirmwareUpgrade(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;F)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateInstallProgress(F)V

    return-void
.end method

.method static synthetic access$300(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isUpdatingDl01:Z

    return p0
.end method

.method static synthetic access$400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    return-void
.end method

.method static synthetic access$500(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/LoadingProgressBar;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    return-object p0
.end method

.method static synthetic access$502(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Lcom/powervision/base/views/LoadingProgressBar;)Lcom/powervision/base/views/LoadingProgressBar;
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    return-object p1
.end method

.method static synthetic access$600(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)I
    .locals 0

    .line 78
    iget p0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    return p0
.end method

.method static synthetic access$700(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method static synthetic access$800(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isMcuNeedUpgrade:Z

    return p0
.end method

.method static synthetic access$802(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isMcuNeedUpgrade:Z

    return p1
.end method

.method static synthetic access$900(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isDL01NeedUpgrade:Z

    return p0
.end method

.method static synthetic access$902(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isDL01NeedUpgrade:Z

    return p1
.end method

.method private doFirmwareUpgrade(Ljava/lang/String;)V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "doFirmwareUpgrade"

    .line 801
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;

    invoke-direct {v0, p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 903
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->hideloadingDialog()V

    return-void
.end method

.method private doStep1()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step1Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mCloseBt:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step1Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step2Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step2Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->progress2:Landroid/widget/ImageView;

    sget v2, Lcn/powervision/upgrade/R$mipmap;->upgrade_firmware_update_2hui:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->progress3:Landroid/widget/ImageView;

    sget v2, Lcn/powervision/upgrade/R$mipmap;->upgrade_firmware_update_3hui:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    invoke-virtual {p0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateProgress(I)V

    :cond_1
    return-void
.end method

.method private doStep2(IIFI)V
    .locals 9

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "step2 who "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "lzqFirm"

    invoke-static {v0, p4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "400"

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    .line 308
    iget-boolean v3, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->has_DL01:Z

    if-nez v3, :cond_0

    .line 309
    iget-object p4, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPromptGrayTv:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v4, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_41:I

    invoke-virtual {p0, v4}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    mul-int v5, p1, p2

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->two(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPromptGrayTv:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v5, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_41:I

    invoke-virtual {p0, v5}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v2

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPromptGrayTv:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v5, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_41:I

    invoke-virtual {p0, v5}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v2

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :goto_0
    iget-object p4, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->progress2:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/upgrade/R$mipmap;->upgrade_firmware_update_2s:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object p4, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->progress3:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/upgrade/R$mipmap;->upgrade_firmware_update_3hui:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    iget-object p4, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step1Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result p4

    if-nez p4, :cond_2

    .line 321
    iget-object p4, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step1Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 325
    :cond_2
    iget-object p4, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step2Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result p4

    if-eqz p4, :cond_3

    .line 326
    iget-object p4, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step2Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p4, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_3
    if-eq p1, v0, :cond_4

    .line 329
    new-instance p4, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;

    int-to-long v4, p2

    iget-boolean v7, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->has_DL01:Z

    move-object v3, p4

    move v6, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;-><init>(JIZF)V

    invoke-virtual {p0, p4}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->addANewTimer(Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;)V

    :cond_4
    return-void
.end method

.method private doStep3()V
    .locals 2

    .line 351
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NotUpgrading:Z

    .line 352
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$3;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$3;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setTitle()V
    .locals 2

    .line 263
    iget v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->title:Landroid/widget/TextView;

    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_11:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->title:Landroid/widget/TextView;

    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_12:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private setWifiUp()V
    .locals 4

    .line 954
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v1, 0xf

    const-string v2, "UP"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method private showErrorDialog(II)V
    .locals 1

    .line 1680
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showErrorDialog who:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqFirm"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    new-instance p1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$25;

    invoke-direct {p1, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$25;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1689
    iget p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    if-nez p1, :cond_1

    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result p1

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result p1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    :cond_0
    const-string p1, "0"

    .line 1690
    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->switchMCSX(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private toFailedActivity()V
    .locals 3

    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 386
    const-class v1, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 387
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPGRADE_RES:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->startActivity(Landroid/content/Intent;)V

    .line 389
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->finish()V

    return-void
.end method

.method private toSuccessActivity()V
    .locals 3

    const-string v0, "lzqFirm"

    const-string v1, "\u5347\u7ea7\u6210\u529f\u8df3\u8f6c\u5230success\u9875\u9762"

    .line 367
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    if-nez v0, :cond_0

    .line 369
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    .line 370
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->clearDevInfo()V

    goto :goto_0

    .line 372
    :cond_0
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->clearRemoteInfo()V

    .line 375
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 376
    const-class v1, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 377
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPGRADE_RES:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPDATE_DEVICE:Ljava/lang/String;

    iget v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnIntegrationUpgradeStatusListener(Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;)V

    .line 380
    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateError(Z)V
    .locals 1

    .line 1614
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$23;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$23;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1621
    iget-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->has_DL01:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step2Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    :cond_1
    const-string p1, "lzqFirm"

    const-string v0, "updateError \u6709DL01 \u8981\u7b49170s"

    .line 1622
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->timeMechine:Lcn/powervision/upgrade/utils/TimeMechine;

    if-eqz p1, :cond_2

    .line 1624
    invoke-virtual {p1}, Lcn/powervision/upgrade/utils/TimeMechine;->desTory()V

    .line 1626
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1662
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 1668
    :cond_3
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mhandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private updateInstallProgress(F)V
    .locals 1

    .line 1832
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;

    invoke-direct {v0, p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;F)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private upgradeRemoteDL01()V
    .locals 7

    const-string v0, "lzqFirm"

    const-string v1, "upgradeRemoteDL01"

    .line 914
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 916
    iput-boolean v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isUpdatingDl01:Z

    .line 917
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getRemoteDL01File()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 918
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 924
    :cond_0
    invoke-static {v2}, Lcom/powervision/base/utils/MD5Utils;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 925
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dl01= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5347\u7ea7DL01  \u6587\u4ef6:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  \u5b58\u5728\u5417\uff1f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDKAVILIBALE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dl01ConnectSDK.get().getGroundStatus():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    const/16 v5, 0x64

    if-ne v0, v5, :cond_1

    .line 932
    sput-boolean v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updatingDl01:Z

    .line 933
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "root"

    const-string v3, "RmvQBBAkYdjL4VvD"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/powervision/natives/JniDl01Native;->UpdateDl01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 936
    :cond_1
    iget v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryDl01Count:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 937
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mCloseBt:Landroid/widget/ImageView;

    new-instance v2, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$9;

    invoke-direct {v2, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$9;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 944
    :cond_2
    invoke-direct {p0, v3}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    .line 946
    :goto_0
    iget v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryDl01Count:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryDl01Count:I

    :goto_1
    return-void

    .line 919
    :cond_3
    :goto_2
    invoke-direct {p0, v3}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    const-string v1, "\u56fa\u4ef6\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 920
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized zip()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 570
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->onZipStart()V

    .line 571
    iget-object v0, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 572
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getZipFiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    :cond_0
    const-string v0, "lzqFirm"

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u6240\u6709\u76ee\u6807\u56fa\u4ef6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lzqFirm"

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56fa\u4ef6\u6570\u91cf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_3

    :cond_1
    const-string v0, "lzqFirm"

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " zip Thread\u6ca1\u83b7\u53d6\u5230\u56fa\u4ef6\u7248\u672c \u4e0d\u662f\u5347\u7ea7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v5

    iget-boolean v5, v5, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NotUpgrading:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iput-boolean v3, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NotUpgrading:Z

    .line 580
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onAp03Connected()V

    .line 581
    iget-object v0, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    const-string v0, "lzqFirm"

    const-string v4, " zip Thread wait in "

    .line 583
    invoke-static {v0, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v4, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->handlerThread:Landroid/os/HandlerThread;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 585
    :try_start_1
    iget-object v0, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->handlerThread:Landroid/os/HandlerThread;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    const-string v0, "lzqFirm"

    const-string v5, " zip Thread wait out  "

    .line 586
    invoke-static {v0, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 589
    :cond_2
    :goto_0
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getZipFiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    .line 594
    :cond_3
    iget-object v0, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_4

    goto/16 :goto_e

    .line 602
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 604
    :goto_1
    iget-object v7, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_11

    .line 605
    iget-object v7, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mlocalFirmWares:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/powervision/upgrade/model/entity/Firmware;

    const-string v8, "lzqFirm"

    .line 606
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6bcf\u4e00\u4e2a\u76ee\u6807\u56fa\u4ef6"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v10, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v9, "MODEL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    if-nez v6, :cond_5

    .line 609
    iget-object v8, v7, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v9, "config"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v6, 0x1

    .line 615
    :cond_5
    new-instance v8, Ljava/io/File;

    iget-object v9, v7, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v7, 0x0

    .line 617
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v9, v9

    if-ge v7, v9, :cond_10

    .line 618
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "lzqFirm"

    .line 619
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " \u76ee\u6807ADD\uff1a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    const-string v8, "lzqFirm"

    .line 623
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6709\u4e2a\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 627
    :cond_7
    new-instance v8, Ljava/io/File;

    iget-object v9, v7, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 629
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 630
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 633
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 635
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_modelVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\."

    .line 636
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 637
    aget-object v9, v9, v4

    .line 638
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const-string v11, "lzqFirm"

    .line 639
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u98de\u673aModel\u7684\u57fa\u5934:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 640
    :goto_3
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_9

    .line 641
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "#"

    .line 642
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 644
    array-length v13, v12

    const/4 v14, 0x3

    if-ne v13, v14, :cond_8

    .line 645
    new-instance v13, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {v13}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    .line 646
    aget-object v12, v12, v4

    iput-object v12, v13, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 647
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v13, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    .line 648
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 652
    :cond_9
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->sortFirmVersion(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 654
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 655
    iget-object v11, v10, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    const-string v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 656
    aget-object v11, v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 657
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v11, :cond_a

    const-string v7, "lzqFirm"

    const-string v9, "\u5934\u90e8\u76f8\u540c "

    .line 658
    invoke-static {v7, v9}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v7, v10, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 660
    iget-object v7, v10, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-static {v7, v8}, Lcn/powervision/upgrade/manager/FirmWareUtils;->compareTwoVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v10, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "lzqFirm"

    .line 662
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u672c\u5730\u7684\u7248\u672c:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " > \u98de\u673a\u7684\u7248\u672c "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    new-instance v7, Ljava/io/File;

    iget-object v8, v10, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x0

    .line 665
    :goto_4
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_10

    .line 666
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "lzqFirm"

    .line 667
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " \u76ee\u6807ADD1\uff1a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 672
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v11, v8, :cond_e

    const-string v8, "lzqFirm"

    const-string v9, "\u672c\u5730\u7684model > \u98de\u673a\u7684model"

    .line 673
    invoke-static {v8, v9}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    .line 677
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v9, v14, :cond_c

    .line 678
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 679
    iget-object v15, v14, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 680
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v11, :cond_b

    .line 681
    iget-object v2, v14, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    const-string v14, ".0.0"

    invoke-virtual {v2, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v13, v9

    const/4 v12, 0x1

    :cond_b
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x2

    goto :goto_5

    :cond_c
    if-eqz v12, :cond_10

    if-eq v13, v8, :cond_10

    const-string v2, "lzqFirm"

    const-string v8, "\u627e\u5230\u4e86\u6700\u5927\u5305\u548c\u4ed6\u7684\u57fa\u5305"

    .line 687
    invoke-static {v2, v8}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    new-instance v2, Ljava/io/File;

    iget-object v8, v10, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x0

    .line 690
    :goto_6
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_d

    .line 691
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "lzqFirm"

    .line 692
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " \u76ee\u6807ADD MODEL2\uff1a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 696
    :cond_d
    new-instance v8, Ljava/io/File;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v7, v7, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x0

    .line 698
    :goto_7
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v9, v9

    if-ge v7, v9, :cond_10

    const-string v9, "lzqFirm"

    const-string v10, "===22222222222"

    .line 699
    invoke-static {v9, v10}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "lzqFirm"

    .line 701
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " \u76ee\u6807ADD MODEL3\uff1a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    const-string v2, "lzqFirm"

    const-string v7, "\u672c\u5730\u7684model < \u98de\u673a\u7684model"

    .line 710
    invoke-static {v2, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    const-string v2, "lzqFirm"

    .line 715
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6709\u4e2a\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_8
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x2

    goto/16 :goto_1

    .line 728
    :cond_11
    iget v2, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    if-nez v2, :cond_12

    .line 729
    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03_BODY_INSTALL_PATH:Ljava/lang/String;

    goto :goto_9

    .line 732
    :cond_12
    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03RC_INSTALL_PATH:Ljava/lang/String;

    .line 735
    :goto_9
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v5

    iput-boolean v4, v5, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NotUpgrading:Z

    .line 736
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "lzqFirm"

    .line 737
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5220\u9664"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {v5}, Lcn/powervision/upgrade/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 740
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_13

    .line 742
    invoke-static {v2}, Lcn/powervision/upgrade/FileUtil;->createDir(Ljava/lang/String;)Z

    .line 744
    :cond_13
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03_BODY_INSTALL_PATH:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v7

    invoke-virtual {v7}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getZipName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".zip"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v5

    invoke-virtual {v5}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getZipName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "DL"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 746
    iput-boolean v3, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->has_DL01:Z

    :cond_14
    const-string v5, "lzqFirm"

    .line 748
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6240\u6709\u8981\u538b\u7f29\u6587\u4ef6\u7684\u8def\u5f84"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "lzqFirm"

    .line 749
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6587\u4ef6\u6570\u91cf:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "lzqFirm"

    .line 750
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasConfig:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 752
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-lt v5, v7, :cond_18

    if-nez v6, :cond_15

    goto/16 :goto_c

    .line 762
    :cond_15
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_17

    .line 763
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "lzqFirm"

    .line 764
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6709\u4e0d\u5b58\u5728\u7684\u6587\u4ef6\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    const-string v5, "lzqFirm"

    .line 766
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5b58\u5728\u7684\u6587\u4ef6\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u6587\u4ef6\u5927\u5c0f\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 769
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v3, v4

    iput v3, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->realFileCount:F

    const-string v3, "lzqFirm"

    const-string v4, "\u5f00\u59cb\u538b\u7f29"

    .line 771
    invoke-static {v3, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-static {v0, v2}, Lcn/powervision/upgrade/utils/compress/CompressHelper;->compressZipFile(Ljava/util/Collection;Ljava/io/File;)V

    const-string v0, "lzqFirm"

    const-string v3, "\u538b\u7f29\u5b8c\u6210"

    .line 773
    invoke-static {v0, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->onZipSuccess(Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    :goto_c
    const-string v0, "lzqFirm"

    const-string v2, "filesWrong:"

    .line 753
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-direct {v1, v4}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 759
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "lzqFirm"

    const-string v3, "\u538b\u7f29\u5f02\u5e38"

    .line 779
    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x2

    .line 783
    invoke-virtual {v1, v2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->onZipFailed(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 790
    :goto_d
    monitor-exit p0

    return-void

    .line 595
    :cond_19
    :goto_e
    :try_start_5
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iput-boolean v3, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NotUpgrading:Z

    const-string v0, "lzqFirm"

    const-string v2, " \u83b7\u53d6\u5347\u7ea7\u6587\u4ef6 \u4f9d\u7136\u5931\u8d25\u4e86  "

    .line 596
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-direct {v1, v4}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 598
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public ZipFile()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mhandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public addANewTimer(Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;)V
    .locals 2

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add timemechine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->timeMechine:Lcn/powervision/upgrade/utils/TimeMechine;

    if-nez v0, :cond_0

    .line 1824
    new-instance v0, Lcn/powervision/upgrade/utils/TimeMechine;

    invoke-direct {v0}, Lcn/powervision/upgrade/utils/TimeMechine;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->timeMechine:Lcn/powervision/upgrade/utils/TimeMechine;

    .line 1826
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->timeMechine:Lcn/powervision/upgrade/utils/TimeMechine;

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->progressListener:Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;

    invoke-virtual {v0, p1, v1}, Lcn/powervision/upgrade/utils/TimeMechine;->addANewTimerMissioin(Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;)V

    return-void
.end method

.method public cancelTime()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "cancelTime in"

    .line 337
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->timeMechine:Lcn/powervision/upgrade/utils/TimeMechine;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/TimeMechine;->desTory()V

    :cond_0
    return-void
.end method

.method public closeDialog()V
    .locals 0

    .line 1015
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->finish()V

    return-void
.end method

.method public dismiss(Lcom/powervision/base/views/FakeDialogView;)V
    .locals 3

    const-string v0, "lzqDia"

    const-string v1, "dismiss"

    .line 1746
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1747
    invoke-virtual {p1, v0}, Lcom/powervision/base/views/FakeDialogView;->setEnabled(Z)V

    .line 1748
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 1749
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1750
    invoke-virtual {p1, v0}, Lcom/powervision/base/views/FakeDialogView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1751
    new-instance v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$27;

    invoke-direct {v1, p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$27;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Lcom/powervision/base/views/FakeDialogView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public finish()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "finish()"

    .line 1795
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NotUpgrading:Z

    .line 1797
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestDevVersion()V

    .line 1798
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updatelistener:Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->removeUpgradListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    .line 1799
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->finish()V

    return-void
.end method

.method public getBatterInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public getBatteryElectric(FIIIIIIIIIII)V
    .locals 0

    return-void
.end method

.method public getBatteryTime(I)V
    .locals 0

    return-void
.end method

.method public getDl01OperationResult(IILjava/lang/String;)V
    .locals 2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1394
    iget-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isMcuStart:Z

    if-nez v0, :cond_1

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqFirm"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getRemoteMT03File()Ljava/io/File;

    move-result-object p1

    .line 1398
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mcuFile:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1400
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1401
    iget-object p2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->mcuUpgrade(Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1402
    iput-boolean p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isMcuStart:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1404
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getFlyBatteryElectric(II)V
    .locals 0

    return-void
.end method

.method public getHandhledBatteryValue(F)V
    .locals 0

    return-void
.end method

.method protected getLayoutRes()I
    .locals 3

    const-string v0, "lzqAir"

    const-string v1, "off Air"

    .line 128
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->removeAirCallBack()V

    .line 130
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postAirStatus(II)V

    .line 131
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 132
    sget v0, Lcn/powervision/upgrade/R$layout;->upgrade_firmware_upgrade_layout:I

    return v0
.end method

.method public getRemoteElectric(I)V
    .locals 0

    return-void
.end method

.method public hideRetryDialog()V
    .locals 1

    .line 1597
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$22;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$22;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideloadingDialog()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "hideloadingDialog who:"

    .line 513
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$7;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$7;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initData()V
    .locals 1

    .line 254
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 255
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setTitle()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "param_update_type"

    .line 147
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    .line 150
    :cond_0
    sget p1, Lcn/powervision/upgrade/R$id;->down_close_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mCloseBt:Landroid/widget/ImageView;

    .line 151
    sget p1, Lcn/powervision/upgrade/R$id;->tile:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->title:Landroid/widget/TextView;

    .line 153
    sget p1, Lcn/powervision/upgrade/R$id;->step_1:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step1Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 154
    sget p1, Lcn/powervision/upgrade/R$id;->step_2:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step2Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 156
    sget p1, Lcn/powervision/upgrade/R$id;->progress2:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->progress2:Landroid/widget/ImageView;

    .line 157
    sget p1, Lcn/powervision/upgrade/R$id;->progress3:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->progress3:Landroid/widget/ImageView;

    .line 160
    sget p1, Lcn/powervision/upgrade/R$id;->circle_progress:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/CircleProgressBar;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mInstall_CircleBar:Lcom/powervision/base/views/CircleProgressBar;

    .line 161
    sget p1, Lcn/powervision/upgrade/R$id;->circle_sending:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/CircleProgressBar;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mSending_circleBar:Lcom/powervision/base/views/CircleProgressBar;

    .line 164
    sget p1, Lcn/powervision/upgrade/R$id;->prompt_gray_tv:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPromptGrayTv:Landroid/widget/TextView;

    .line 165
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "UpgradeHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->handlerThread:Landroid/os/HandlerThread;

    .line 166
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 168
    new-instance p1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$1;

    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$1;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mhandler:Landroid/os/Handler;

    .line 195
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->doStep1()V

    .line 196
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->onGetAp03VersionListener:Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;

    invoke-virtual {p1, v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->setOnGetAp03VersionListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;)V

    return-void
.end method

.method public notifyRebot()V
    .locals 2

    .line 1326
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->handlerThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 1327
    :try_start_0
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1328
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 472
    sget v0, Lcn/powervision/upgrade/R$id;->down_close_bt:I

    if-ne p1, v0, :cond_1

    .line 474
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->finish()V

    .line 475
    iget p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    if-nez p1, :cond_0

    .line 476
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    .line 478
    :cond_0
    sget p1, Lcn/powervision/upgrade/R$anim;->anim_top_in:I

    sget v0, Lcn/powervision/upgrade/R$anim;->anim_bottom_out:I

    invoke-virtual {p0, p1, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1774
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->removeSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;)V

    .line 1775
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1776
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 1778
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1779
    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 1780
    iput-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 1782
    :cond_1
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->timeMechine:Lcn/powervision/upgrade/utils/TimeMechine;

    if-eqz v0, :cond_2

    .line 1783
    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/TimeMechine;->desTory()V

    .line 1785
    :cond_2
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->retryMechine:Lcn/powervision/upgrade/utils/RetryMechine;

    if-eqz v0, :cond_3

    .line 1786
    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/RetryMechine;->destory()V

    .line 1788
    :cond_3
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 1789
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setCommonCallback(Lorg/xutils/common/Callback$CommonCallback;)V

    return-void
.end method

.method public onRemoteDl01UpgradeStatusResult(II)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "lzqFirm"

    packed-switch p1, :pswitch_data_0

    const-string p1, "\u672a\u77e5\u56de\u8c03"

    .line 1565
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "\u6587\u4ef6MD5\u6821\u9a8c\u6210\u529f,\u5347\u7ea7\u6d41\u7a0b\u7ed3\u675f"

    .line 1557
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "\u53d1\u9001\u6570\u636e\u5b8c\u6210"

    .line 1546
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideDl01Update()V

    .line 1548
    new-instance p1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$20;

    invoke-direct {p1, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$20;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1536
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6587\u4ef6progress = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    new-instance p1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$19;

    invoke-direct {p1, p0, p2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$19;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;I)V

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "\u4f7f\u80fdftp\u6210\u529f"

    .line 1533
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "\u6587\u4ef6MD5\u6821\u9a8c\u5931\u8d25"

    .line 1529
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    goto :goto_0

    :pswitch_5
    const-string p1, "\u901a\u8fc7ftp\u53d1\u9001\u6570\u636e\u5931\u8d25"

    .line 1525
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    goto :goto_0

    :pswitch_6
    const-string p1, "\u5347\u7ea7\u6587\u4ef6\u6253\u5f00\u5931\u8d25"

    .line 1521
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    goto :goto_0

    :pswitch_7
    const-string p1, "\u4e0eftp\u670d\u52a1\u7aef\u901a\u4fe1\u9519\u8bef"

    .line 1517
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    goto :goto_0

    :pswitch_8
    const-string p1, "\u94fe\u63a5ftp\u670d\u52a1\u7aef\u5931\u8d25"

    .line 1513
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    goto :goto_0

    :pswitch_9
    const-string p1, "DL01 AT\u6307\u4ee4\u9519\u8bef"

    .line 1509
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onZipFailed(I)V
    .locals 2

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u538b\u7f29\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqFirm"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->hideloadingDialog()V

    return-void
.end method

.method public onZipStart()V
    .locals 2

    .line 537
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_99:I

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->showloadingDialog(Ljava/lang/String;I)V

    return-void
.end method

.method public onZipSuccess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u538b\u7f29\u6210\u529f"

    .line 545
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->hideloadingDialog()V

    .line 547
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->doFirmwareUpgrade(Ljava/lang/String;)V

    return-void
.end method

.method public reTry()V
    .locals 3

    .line 1699
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->retryMechine:Lcn/powervision/upgrade/utils/RetryMechine;

    if-nez v0, :cond_0

    .line 1700
    new-instance v0, Lcn/powervision/upgrade/utils/RetryMechine;

    invoke-direct {v0}, Lcn/powervision/upgrade/utils/RetryMechine;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->retryMechine:Lcn/powervision/upgrade/utils/RetryMechine;

    .line 1702
    :cond_0
    new-instance v0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;

    iget v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    iget v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->current_Remote:I

    invoke-direct {v0, v1, v2}, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;-><init>(II)V

    .line 1703
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->retryMechine:Lcn/powervision/upgrade/utils/RetryMechine;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryListener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

    invoke-virtual {v1, v0, v2}, Lcn/powervision/upgrade/utils/RetryMechine;->addANewRetry(Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;)V

    const-string v0, "lzqFirm"

    const-string v1, "5.1 reTryThread.start();"

    .line 1706
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reboot()V
    .locals 10

    const-string v0, "lzqFirm"

    const-string v1, "\u6ce8\u518c\u63a5\u53e3\u4ed6\u7b49\u5f85\u5347\u7ea7\u7ed3\u679c"

    .line 202
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updatelistener:Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->addUpgradeListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    .line 204
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NotUpgrading:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 212
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestDeviceFirmwareVersion()V

    .line 213
    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->handlerThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_0

    return-void

    .line 216
    :cond_0
    monitor-enter v2

    .line 218
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 219
    iget-object v5, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->handlerThread:Landroid/os/HandlerThread;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    cmp-long v3, v8, v6

    if-gez v3, :cond_1

    const-string v3, "lzqFirm"

    const-string v4, "\u63a5\u6536\u5230rebooting\u4e4b\u540e \u62ff\u5230\u7248\u672c\u53f7"

    .line 223
    invoke-static {v3, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->doStep3()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :try_start_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 229
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 231
    :cond_1
    monitor-exit v2

    goto :goto_0

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const-string v1, "lzqFirm"

    const-string v2, "\u63a5\u6536\u5230rebooting\u4e4b\u540e 30\u6b21\u90fd\u6ca1\u8fde\u4e0a \u62ff\u5230\u7248\u672c\u53f7"

    .line 233
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    return-void
.end method

.method public setDialogText(Ljava/lang/String;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/LoadingProgressBar;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIntegrationUpgradeStatusCheckMd5Failed()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "setIntegrationUpgradeStatusCheckMd5Failed"

    .line 1075
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1076
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    return-void
.end method

.method public setIntegrationUpgradeStatusCheckMd5Success()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "setIntegrationUpgradeStatusCheckMd5Success"

    .line 1069
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIntegrationUpgradeStatusCommandFailed(I)V
    .locals 2

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIntegrationUpgradeStatusCommandFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqFirm"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1029
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    return-void
.end method

.method public setIntegrationUpgradeStatusCommandSuccess()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "setIntegrationUpgradeStatusCommandSuccess"

    .line 1023
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIntegrationUpgradeStatusDeviceInstallComplete()V
    .locals 4

    const-string v0, "lzqFirm"

    const-string v1, "setIntegrationUpgradeStatusDeviceInstallComplete"

    .line 1335
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->has_DL01:Z

    if-eqz v0, :cond_0

    .line 1339
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$14;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$14;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->cancelTime()V

    .line 1356
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mInstall_CircleBar:Lcom/powervision/base/views/CircleProgressBar;

    if-eqz v0, :cond_1

    .line 1357
    new-instance v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$15;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$15;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/base/views/CircleProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1369
    :cond_1
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mInstall_CircleBar:Lcom/powervision/base/views/CircleProgressBar;

    if-eqz v0, :cond_2

    .line 1370
    new-instance v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$16;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$16;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/base/views/CircleProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setIntegrationUpgradeStatusDeviceInstalling(I)V
    .locals 2

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIntegrationUpgradeStatusDeviceInstalling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;

    invoke-direct {v0, p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;I)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIntegrationUpgradeStatusDeviceRebooting()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "setIntegrationUpgradeStatusDeviceRebooting"

    .line 1151
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1155
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    return-void
.end method

.method public setIntegrationUpgradeStatusSendDataFailed()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "setIntegrationUpgradeStatusSendDataFailed"

    .line 1048
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1050
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    :cond_0
    return-void
.end method

.method public setIntegrationUpgradeStatusSendDataSuccess()V
    .locals 1

    .line 1034
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$10;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$10;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIntegrationUpgradeStatusSendingData(I)V
    .locals 2

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIntegrationUpgradeStatusSendingData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$11;

    invoke-direct {v0, p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$11;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;I)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnIntegrationUpgradeStatusListener(Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;)V

    .line 398
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03NotifyOnSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;)V

    .line 399
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnRemoteMcuUpgradeStatusListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;)V

    .line 400
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setRemoteDl01UpgradeStatusListener(Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteDl01UpgradeStatusListener;)V

    .line 401
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setBatteryStatusListener(Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;)V

    .line 402
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03RemoteElectricListener(Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;)V

    .line 403
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setCommonCallback(Lorg/xutils/common/Callback$CommonCallback;)V

    .line 405
    iget v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mUpgradeType:I

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->upgradeAp03()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 409
    invoke-virtual {p0, v0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->showloadingDialog(Ljava/lang/String;I)V

    const-string v0, ""

    .line 410
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->doFirmwareUpgrade(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setRemoteMcuUpgradeStatusInfoCheckFileFailed()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u9065\u63a7\u5668\u5347\u7ea7\u6587\u4ef6\u6821\u9a8c\u5931\u8d25"

    .line 1488
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setWifiUp()V

    const/4 v0, 0x0

    .line 1490
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    return-void
.end method

.method public setRemoteMcuUpgradeStatusInfoCheckFileSuccess()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u6821\u9a8c\u6587\u4ef6\u6210\u529f"

    .line 1447
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRemoteMcuUpgradeStatusInfoEraseFailed()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u9065\u63a7\u5668\u64e6\u9664\u539f\u56fa\u4ef6\u5931\u8d25"

    .line 1473
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setWifiUp()V

    const/4 v0, 0x0

    .line 1475
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    return-void
.end method

.method public setRemoteMcuUpgradeStatusInfoInbootFailed()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u9065\u63a7\u5668\u8fdb\u5165bootload\u5931\u8d25"

    .line 1465
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setWifiUp()V

    const/4 v0, 0x0

    .line 1467
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    return-void
.end method

.method public setRemoteMcuUpgradeStatusInfoJumpFailed()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u9065\u63a7\u5668\u8df3\u8f6c\u5931\u8d25"

    .line 1495
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setWifiUp()V

    const/4 v0, 0x0

    .line 1497
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    return-void
.end method

.method public setRemoteMcuUpgradeStatusInfoJumpSuccess()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u9065\u63a7\u5668\u8df3\u8f6c\u7a0b\u5e8f\u6210\u529f(\u5347\u7ea7\u6d41\u7a0b\u5b8c\u6210)"

    .line 1452
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideMcuUpdate()V

    .line 1454
    iget-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isDL01NeedUpgrade:Z

    if-eqz v0, :cond_0

    .line 1455
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->upgradeRemoteDL01()V

    goto :goto_0

    .line 1457
    :cond_0
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->doStep3()V

    .line 1459
    :goto_0
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setWifiUp()V

    return-void
.end method

.method public setRemoteMcuUpgradeStatusInfoSendDataComplete()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u53d1\u9001\u6587\u4ef6\u5b8c\u6210"

    .line 1434
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isDL01NeedUpgrade:Z

    if-nez v0, :cond_0

    .line 1436
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$18;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$18;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setRemoteMcuUpgradeStatusInfoSendDataFailed()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u9065\u63a7\u5668\u53d1\u9001\u6587\u4ef6\u5931\u8d25"

    .line 1481
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setWifiUp()V

    const/4 v0, 0x0

    .line 1483
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateError(Z)V

    return-void
.end method

.method public setRemoteMcuUpgradeStatusInfoSendingFile(I)V
    .locals 2

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u8fdb\u5ea6= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$17;

    invoke-direct {v0, p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$17;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;I)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRemoteMcuUpgradeStatusInfoStartComplete()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u5f00\u59cb\u5347\u7ea7\u6210\u529f"

    .line 1411
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showRetryDialog()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "showRetryDialog"

    .line 1574
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showloadingDialog(Ljava/lang/String;I)V
    .locals 2

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showloadingDialog who:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "lzqFirm"

    invoke-static {v0, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    new-instance p2, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;

    invoke-direct {p2, p0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchMCSX(Ljava/lang/String;)V
    .locals 2

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u5e26\u5bbd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    const/4 v1, 0x1

    .line 561
    invoke-static {v0, p1, v1}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public two(F)Ljava/lang/String;
    .locals 3

    .line 296
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p1

    .line 297
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateProgress(I)V
    .locals 2

    .line 963
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step2Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 964
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->step2Layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 966
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->progress3:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/upgrade/R$mipmap;->upgrade_firmware_update_3hui:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 967
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mSending_circleBar:Lcom/powervision/base/views/CircleProgressBar;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CircleProgressBar;->setProgress(F)V

    return-void
.end method

.method public upgradeAp03()V
    .locals 4

    .line 450
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->ZipFile()V

    goto :goto_1

    .line 452
    :cond_1
    :goto_0
    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_99:I

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->showloadingDialog(Ljava/lang/String;I)V

    const-string v0, "5"

    .line 453
    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->switchMCSX(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->mCloseBt:Landroid/widget/ImageView;

    new-instance v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$5;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$5;-><init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
