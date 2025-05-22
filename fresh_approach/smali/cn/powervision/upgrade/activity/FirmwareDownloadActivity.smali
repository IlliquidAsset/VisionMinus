.class public Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "FirmwareDownloadActivity.java"

# interfaces
.implements Lcn/powervision/upgrade/iviews/IFirmwareDownView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;",
        "Lcn/powervision/upgrade/model/impl/FirmwareModel;",
        ">;",
        "Lcn/powervision/upgrade/iviews/IFirmwareDownView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final CANNOT_IT_UPGRADE:I = 0x5

.field private static final CONNECT_FAILED:I = 0x4

.field private static final CONNECT_SUCCESS:I = 0x2

.field private static final DOWNLOAD_SUCCESS:I = 0x0

.field private static final NEVER_AGAIN:I = 0x3

.field private static final WAITINT_FOR_CONNECT:I = 0x1


# instance fields
.field private connectLoadingView:Lcom/powervision/base/views/LoadingProgressBar;

.field private device_type:I

.field private firmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

.field private handler:Landroid/os/Handler;

.field private jumpToUpgrade:Z

.field private logTag:Ljava/lang/String;

.field private mCircleProgressBar:Lcom/powervision/base/views/CircleProgressBar;

.field private mDownImage:Landroid/widget/ImageView;

.field private mDownLoadLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mDownLoadProgressLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mDownLoadPromptTv:Landroid/widget/TextView;

.field private mDownPrompt:Landroid/widget/TextView;

.field private mFileSizeTv:Landroid/widget/TextView;

.field private mFirmwareSize:J

.field private mTitleTv:Landroid/widget/TextView;

.field stay:Z

.field success:Z

.field successDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->jumpToUpgrade:Z

    const-string v1, "lzqDown"

    .line 83
    iput-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->logTag:Ljava/lang/String;

    .line 94
    new-instance v1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$1;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->handler:Landroid/os/Handler;

    .line 218
    iput-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->stay:Z

    const/4 v1, 0x0

    .line 393
    iput-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->successDialog:Landroidx/appcompat/app/AlertDialog;

    .line 394
    iput-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->success:Z

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->showSuccessDialog()V

    return-void
.end method

.method static synthetic access$100(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->showCannotInDialog()V

    return-void
.end method

.method static synthetic access$200(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->showConnectDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->logTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcn/powervision/upgrade/manager/NewFirmWareManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->firmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    return-object p0
.end method

.method static synthetic access$500(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mFirmwareSize:J

    return-wide v0
.end method

.method static synthetic access$700(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->device_type:I

    return p0
.end method

.method private showCannotInDialog()V
    .locals 1

    .line 131
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$2;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$2;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showConnectDialog(I)V
    .locals 2

    .line 463
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->connectLoadingView:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 466
    :cond_0
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->logTag:Ljava/lang/String;

    const-string v0, " show loading view"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance p1, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {p1, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->connectLoadingView:Lcom/powervision/base/views/LoadingProgressBar;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_123:I

    invoke-virtual {p0, v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/LoadingProgressBar;->setText(Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->connectLoadingView:Lcom/powervision/base/views/LoadingProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/LoadingProgressBar;->setCancelable(Z)V

    .line 470
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->connectLoadingView:Lcom/powervision/base/views/LoadingProgressBar;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;->show(J)V

    .line 471
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->connectLoadingView:Lcom/powervision/base/views/LoadingProgressBar;

    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/LoadingProgressBar;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showSuccessDialog()V
    .locals 3

    .line 398
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->successDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->success:Z

    .line 402
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_50:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 404
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 405
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 406
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_TakeoffAndlanding_18:I

    invoke-virtual {p0, v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 407
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->logTag:Ljava/lang/String;

    const-string v2, "4.1\u6ce8\u518c \u8fde\u63a5\u56de\u8c03"

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->successDialog:Landroidx/appcompat/app/AlertDialog;

    .line 412
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 413
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->successDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$5;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$5;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->successDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$6;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$6;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v0, "lzqDia"

    const-string v1, "show"

    .line 427
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private start()V
    .locals 2

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->stay:Z

    .line 223
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mDownLoadLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mDownLoadProgressLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 225
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$3;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 315
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public downFailed(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 547
    :try_start_0
    sget p1, Lcn/powervision/upgrade/R$string;->AP03_DV_MediaLib_33:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "lzqFim"

    const-string v0, "\u4e0b\u8f7d\u51fa\u5f02\u5e38 \u9000\u51fa"

    .line 549
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->finish()V

    goto :goto_0

    .line 554
    :cond_0
    sget p1, Lcn/powervision/upgrade/R$string;->AP03_MediaLib_43:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->showTips(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public downSuccess()V
    .locals 3

    .line 373
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideDownload()V

    .line 374
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->checkAllWithNetWork(Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;I)V

    .line 376
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpToUpgrade:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->jumpToUpgrade:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->jumpToUpgrade:Z

    if-eqz v0, :cond_1

    .line 378
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUSB2_CONFIRM()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE_CONNECTION:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->finish()V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 0

    .line 617
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->finish()V

    return-void
.end method

.method protected getLayoutRes()I
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 157
    sget v0, Lcn/powervision/upgrade/R$layout;->upgrade_firmware_download_layout:I

    return v0
.end method

.method protected initData()V
    .locals 7

    .line 189
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->firmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    .line 192
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmBodyDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getmModelDownloadInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_46:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mDownImage:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/upgrade/R$mipmap;->upgrade_remote1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 193
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_45:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mDownImage:Landroid/widget/ImageView;

    sget v1, Lcn/powervision/upgrade/R$mipmap;->upgrade_ap03_icon1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    :goto_1
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->firmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getFirmwareTotalSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mFirmwareSize:J

    .line 204
    invoke-static {v0, v1}, Lcom/powervision/base/utils/StorageUtil;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mFileSizeTv:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v3, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_57:I

    invoke-virtual {p0, v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-static {}, Lcom/powervision/base/utils/NetUtils;->isMobileNet()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_59:I

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    .line 207
    :goto_2
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mDownPrompt:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v3, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_58:I

    invoke-virtual {p0, v3}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-direct {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->start()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "JUMP"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->jumpToUpgrade:Z

    .line 166
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "param_update_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->device_type:I

    .line 170
    :cond_0
    sget p1, Lcn/powervision/upgrade/R$id;->title_tv:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mTitleTv:Landroid/widget/TextView;

    .line 172
    sget p1, Lcn/powervision/upgrade/R$id;->download_layout:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mDownLoadLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 173
    sget p1, Lcn/powervision/upgrade/R$id;->down_iv:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mDownImage:Landroid/widget/ImageView;

    .line 174
    sget p1, Lcn/powervision/upgrade/R$id;->down_file_size_tv:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mFileSizeTv:Landroid/widget/TextView;

    .line 175
    sget p1, Lcn/powervision/upgrade/R$id;->down_file_prompt_tv:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mDownPrompt:Landroid/widget/TextView;

    .line 178
    sget p1, Lcn/powervision/upgrade/R$id;->download_process_layout:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mDownLoadProgressLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 179
    sget p1, Lcn/powervision/upgrade/R$id;->circle_progress:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/CircleProgressBar;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mCircleProgressBar:Lcom/powervision/base/views/CircleProgressBar;

    .line 180
    sget p1, Lcn/powervision/upgrade/R$id;->loading_tv:I

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mDownLoadPromptTv:Landroid/widget/TextView;

    .line 182
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-virtual {p1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->setupDownLoad()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backpress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->stay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->stay:Z

    if-nez v0, :cond_0

    .line 366
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onBackPressed()V

    .line 367
    sget v0, Lcn/powervision/upgrade/R$anim;->anim_top_in:I

    sget v1, Lcn/powervision/upgrade/R$anim;->anim_bottom_out:I

    invoke-virtual {p0, v0, v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 323
    sget v0, Lcn/powervision/upgrade/R$id;->down_close_bt:I

    if-ne p1, v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->finish()V

    .line 325
    sget p1, Lcn/powervision/upgrade/R$anim;->anim_top_in:I

    sget v0, Lcn/powervision/upgrade/R$anim;->anim_bottom_out:I

    invoke-virtual {p0, p1, v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 631
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-virtual {v0}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->cancel()V

    .line 632
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public retry(ILjava/lang/String;)V
    .locals 2

    .line 562
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->logTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "redownload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance p1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$10;

    invoke-direct {p1, p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$10;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V

    invoke-virtual {p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveOnlyConfig(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;)V"
        }
    .end annotation

    .line 346
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 347
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    const-string v2, "config"

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v1}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->logTag:Ljava/lang/String;

    const-string v4, "\u5220\u9664Config"

    invoke-static {v3, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 354
    :cond_1
    invoke-virtual {v1}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public showCheckConnectDialog()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->logTag:Ljava/lang/String;

    const-string v1, "showCheckConnectDialog   showCheckConnectDialog"

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 437
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_52:I

    invoke-virtual {p0, v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 438
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 439
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 440
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_TakeoffAndlanding_18:I

    invoke-virtual {p0, v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$7;

    invoke-direct {v2, p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$7;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 447
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_124:I

    invoke-virtual {p0, v1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$8;

    invoke-direct {v2, p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$8;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 454
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public showTips(Ljava/lang/String;)V
    .locals 1

    .line 573
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;

    invoke-direct {v0, p0, p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$11;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;)V"
        }
    .end annotation

    .line 334
    new-instance v0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$4;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$4;-><init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public toUpdateActivity(I)V
    .locals 3

    .line 596
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4.1 toUpdateActivity \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->connectLoadingView:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    const/4 v0, 0x0

    .line 600
    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->connectLoadingView:Lcom/powervision/base/views/LoadingProgressBar;

    .line 606
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "param_update_type"

    .line 607
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    const-class p1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {p0, p1, v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 610
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->finish()V

    return-void
.end method

.method public updateDownProgress(F)V
    .locals 1

    .line 625
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->mCircleProgressBar:Lcom/powervision/base/views/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CircleProgressBar;->setProgress(F)V

    return-void
.end method
