.class public Lcom/powervision/home/ui/activity/AP03ActivationActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "AP03ActivationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;


# static fields
.field private static final WAIT_TIME:J = 0x7d0L


# instance fields
.field count:I

.field private loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private mActivationText:Landroid/widget/TextView;

.field private mBackimg:Landroid/widget/ImageView;

.field private mExistTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->count:I

    return-void
.end method

.method static synthetic lambda$null$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$null$5(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 43
    sget v0, Lcom/powervision/home/R$layout;->ap03_activation_layout:I

    return v0
.end method

.method protected initData()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->initData()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 49
    sget p1, Lcom/powervision/home/R$id;->ic_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->mBackimg:Landroid/widget/ImageView;

    .line 50
    sget p1, Lcom/powervision/home/R$id;->bt_activite:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->mActivationText:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$null$0$AP03ActivationActivity(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->count:I

    :goto_0
    iget v0, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->count:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 101
    invoke-static {}, Lcom/powervision/home/utils/Ap03ActivationManager;->getInstance()Lcom/powervision/home/utils/Ap03ActivationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/home/utils/Ap03ActivationManager;->setActivationLight()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iget v0, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->count:I

    goto :goto_0

    .line 106
    :cond_1
    :goto_1
    invoke-static {}, Lcom/powervision/home/utils/Ap03ActivationManager;->getInstance()Lcom/powervision/home/utils/Ap03ActivationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/home/utils/Ap03ActivationManager;->closeActivationLink()V

    .line 108
    sput-boolean p1, Lcom/powervision/base/constant/Constant;->ACTIVATION_FLAG:Z

    .line 109
    new-instance p1, Lcom/powervision/home/ui/activity/AP03ActivationActivity$1;

    invoke-direct {p1, p0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity$1;-><init>(Lcom/powervision/home/ui/activity/AP03ActivationActivity;)V

    .line 115
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v1, 0x3e8

    .line 116
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 117
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$null$3$AP03ActivationActivity(Landroid/view/View;)V
    .locals 2

    .line 130
    invoke-static {}, Lcom/powervision/home/utils/Ap03ActivationManager;->getInstance()Lcom/powervision/home/utils/Ap03ActivationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/home/utils/Ap03ActivationManager;->setAp03Activation()I

    move-result p1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onActivationFailed Activate Activate Activate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqActivate"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance p1, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {p1, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 133
    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    return-void
.end method

.method public synthetic lambda$null$6$AP03ActivationActivity(Landroid/view/View;)V
    .locals 2

    .line 146
    invoke-static {}, Lcom/powervision/home/utils/Ap03ActivationManager;->getInstance()Lcom/powervision/home/utils/Ap03ActivationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/home/utils/Ap03ActivationManager;->setAp03Activation()I

    move-result p1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onActivationTimeout Activate Activate Activate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqActivate"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance p1, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {p1, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 149
    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    return-void
.end method

.method public synthetic lambda$onActivationFailed$4$AP03ActivationActivity()V
    .locals 8

    const-string v0, "Activation-test"

    const-string v1, "\u6fc0\u6d3b\u5931\u8d25"

    .line 125
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 127
    sget v0, Lcom/powervision/home/R$string;->AP03_Activation_7:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/powervision/home/R$string;->AP03_AI_2:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/powervision/home/R$string;->AP03_Activation_8:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$Hte5J26PHA5nHjW9Pb5qeqDv158;->INSTANCE:Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$Hte5J26PHA5nHjW9Pb5qeqDv158;

    new-instance v7, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$WZcyf7lKgayg2CKttLOSxkhu8-A;

    invoke-direct {v7, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$WZcyf7lKgayg2CKttLOSxkhu8-A;-><init>(Lcom/powervision/home/ui/activity/AP03ActivationActivity;)V

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$onActivationSuccess$1$AP03ActivationActivity()V
    .locals 8

    const-string v0, "Activation-test"

    const-string v1, "\u6fc0\u6d3b\u6210\u529f"

    .line 92
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Device_Activation"

    const-string v1, ""

    .line 94
    invoke-static {v0, v1, v1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 93
    invoke-static {p0, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 96
    invoke-static {v0}, Lcom/powervision/base/utils/UmengUtils;->workUmServiceLogBpFun(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 99
    sget v0, Lcom/powervision/home/R$string;->AP03_Activation_5:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/powervision/home/R$string;->AP03_AI_3:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$eG9u_aAZMvd1XtiIR_xu3m9fRuw;

    invoke-direct {v6, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$eG9u_aAZMvd1XtiIR_xu3m9fRuw;-><init>(Lcom/powervision/home/ui/activity/AP03ActivationActivity;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$onActivationTimeout$7$AP03ActivationActivity()V
    .locals 8

    const-string v0, "Activation-test"

    const-string v1, "\u6fc0\u6d3b\u8d85\u65f6"

    .line 141
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 143
    sget v0, Lcom/powervision/home/R$string;->AP03_Activation_7:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/powervision/home/R$string;->AP03_AI_2:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/powervision/home/R$string;->AP03_Activation_8:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$cbrd8SJqtk6b8_-7OKVHUaxZsRE;->INSTANCE:Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$cbrd8SJqtk6b8_-7OKVHUaxZsRE;

    new-instance v7, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$1KvwZTCZ8TDuDOyIYCRYIWMKTJY;

    invoke-direct {v7, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$1KvwZTCZ8TDuDOyIYCRYIWMKTJY;-><init>(Lcom/powervision/home/ui/activity/AP03ActivationActivity;)V

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onActivationFailed()V
    .locals 1

    .line 124
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$QG217RKHHbaPFgMt0teRI-WWDJY;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$QG217RKHHbaPFgMt0teRI-WWDJY;-><init>(Lcom/powervision/home/ui/activity/AP03ActivationActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivationSuccess()V
    .locals 1

    .line 90
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$41c7KrsqJVJeqCMIdKbjpmbTcL4;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$41c7KrsqJVJeqCMIdKbjpmbTcL4;-><init>(Lcom/powervision/home/ui/activity/AP03ActivationActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivationTimeout()V
    .locals 1

    .line 140
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$4zNUwP71scev-skBHmmJ_tIAnog;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$AP03ActivationActivity$4zNUwP71scev-skBHmmJ_tIAnog;-><init>(Lcom/powervision/home/ui/activity/AP03ActivationActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 70
    sget v0, Lcom/powervision/home/R$id;->bt_activite:I

    if-ne p1, v0, :cond_1

    .line 71
    invoke-static {}, Lcom/powervision/home/utils/Ap03ActivationManager;->getInstance()Lcom/powervision/home/utils/Ap03ActivationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/home/utils/Ap03ActivationManager;->setAp03Activation()I

    move-result p1

    const-string v0, "Activation-test"

    const-string v1, "\u70b9\u51fb\u6fc0\u6d3b\u6309\u94ae"

    .line 72
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_activation"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    new-instance p1, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {p1, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 76
    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    .line 77
    invoke-static {}, Lcom/powervision/home/utils/Ap03ActivationManager;->getInstance()Lcom/powervision/home/utils/Ap03ActivationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/home/utils/Ap03ActivationManager;->uploadActivationCode()V

    goto :goto_0

    .line 79
    :cond_0
    sget p1, Lcom/powervision/home/R$string;->AP03_Activation_7:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    sget v0, Lcom/powervision/home/R$id;->ic_back:I

    if-ne p1, v0, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 156
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lcom/powervision/home/utils/Ap03ActivationManager;->getInstance()Lcom/powervision/home/utils/Ap03ActivationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/home/utils/Ap03ActivationManager;->destroyListener()V

    .line 158
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->mExistTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x0

    .line 165
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 166
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 168
    :cond_0
    sget p1, Lcom/powervision/home/R$string;->exist:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->mExistTime:J

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 173
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/powervision/base/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected setListener()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 62
    iget-object v0, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->mBackimg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/powervision/home/ui/activity/AP03ActivationActivity;->mActivationText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-static {}, Lcom/powervision/home/utils/Ap03ActivationManager;->getInstance()Lcom/powervision/home/utils/Ap03ActivationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/home/utils/Ap03ActivationManager;->setActivationResultListener(Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;)V

    return-void
.end method
