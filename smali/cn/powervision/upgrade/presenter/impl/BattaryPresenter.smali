.class public Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;
.super Ljava/lang/Object;
.source "BattaryPresenter.java"


# static fields
.field private static hasSucces:Z = false

.field public static phone_ele:I = -0x1

.field static retryCount:I


# instance fields
.field activity:Landroid/app/Activity;

.field ap03NotifyOnBatteryUpgradeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

.field private tipsDialog:Landroidx/appcompat/app/AlertDialog;

.field private upgradeDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)V

    iput-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->ap03NotifyOnBatteryUpgradeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->showBatteryDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->upgradeDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->upgradeDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private showBatteryDialog(I)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->upgradeDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    new-instance v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;

    invoke-direct {v1, p0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkEle(I)Z
    .locals 7

    .line 288
    sget v0, Lcom/powervision/natives/JniAp03Native;->ele:F

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "lzqDDD"

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    sget v0, Lcom/powervision/natives/JniAp03Native;->ele:F

    const/high16 v5, 0x42480000    # 50.0f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    const-string v0, "battery \u63d0\u793a\u5f3a\u5236\u4e0d\u80fd\u5347\u7ea71"

    .line 290
    invoke-static {v3, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sput v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->retryCount:I

    .line 292
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 293
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_30:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->showTips(ZLjava/lang/String;I)V

    :cond_0
    return v4

    .line 298
    :cond_1
    sget v0, Lcom/powervision/natives/JniRemoteNative;->ele:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    sget v0, Lcom/powervision/natives/JniRemoteNative;->ele:I

    const/16 v6, 0x1e

    if-ge v0, v6, :cond_3

    const-string v0, "battery \u63d0\u793a\u5f3a\u5236\u4e0d\u80fd\u5347\u7ea72"

    .line 300
    invoke-static {v3, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sput v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->retryCount:I

    .line 302
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 303
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_120:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->showTips(ZLjava/lang/String;I)V

    :cond_2
    return v4

    .line 307
    :cond_3
    sget v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->phone_ele:I

    const/16 v6, 0x14

    if-ge v0, v6, :cond_5

    const-string v0, "battery \u63d0\u793a\u5f3a\u5236\u4e0d\u80fd\u5347\u7ea73"

    .line 309
    invoke-static {v3, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sput v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->retryCount:I

    .line 311
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 312
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_120:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->showTips(ZLjava/lang/String;I)V

    :cond_4
    return v4

    .line 317
    :cond_5
    sget v0, Lcom/powervision/natives/JniRemoteNative;->ele:I

    const/16 v1, 0x32

    if-eq v0, v5, :cond_7

    sget v0, Lcom/powervision/natives/JniRemoteNative;->ele:I

    if-ge v0, v1, :cond_7

    const-string v0, "battery \u6e29\u99a8\u63d0\u793a1"

    .line 319
    invoke-static {v3, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 321
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_119:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->showTips(ZLjava/lang/String;I)V

    :cond_6
    return v4

    .line 326
    :cond_7
    sget v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->phone_ele:I

    if-eq v0, v5, :cond_9

    if-ge v0, v1, :cond_9

    const-string v0, "battery \u6e29\u99a8\u63d0\u793a2"

    .line 328
    invoke-static {v3, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 330
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_119:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->showTips(ZLjava/lang/String;I)V

    :cond_8
    return v4

    :cond_9
    return v2
.end method

.method public hide()V
    .locals 4
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf21
    .end annotation

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u6536\u5230Hide "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    const-string v2, "null"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqDD"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->upgradeDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismiss "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->upgradeDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 4

    .line 38
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retryCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqDD"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSucces:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->hasSucces:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->retryCount:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    sget-boolean v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->hasSucces:Z

    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iget-object v2, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->ap03NotifyOnBatteryUpgradeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    invoke-virtual {v0, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnBatteryUpgradeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDKAVILIBALE:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->queryBatteryUpgradeStatus()I

    move-result v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "battery queryBatteryUpgradeStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " activity:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_1
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public reTry(I)V
    .locals 2

    .line 136
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xf21

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 137
    sget v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->retryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 139
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$2;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$2;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string v0, "lzqDD"

    const-string v1, "battery battery: retry:\u505c\u6b62"

    .line 153
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->toFailedActivity(I)V

    :goto_0
    return-void
.end method

.method public showTips(ZLjava/lang/String;I)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    new-instance v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;ZLjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toFailedActivity(I)V
    .locals 2

    const-string v0, "lzqDD"

    const-string v1, "toFailedActivity"

    .line 239
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    new-instance v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$4;

    invoke-direct {v1, p0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$4;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toSuccessActity()V
    .locals 2

    const/4 v0, 0x1

    .line 262
    sput-boolean v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->hasSucces:Z

    .line 263
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnBatteryUpgradeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;)V

    const-string v0, "lzqDD"

    const-string v1, "toSuccessActity"

    .line 264
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    new-instance v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$5;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$5;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->upgradeDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->upgradeDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    .line 233
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method
