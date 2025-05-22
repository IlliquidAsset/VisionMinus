.class Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;
.super Landroid/app/ProgressDialog;
.source "ObbDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cclink/obbdownloader/download/ObbDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyProgressDialog"
.end annotation


# instance fields
.field private mDlgCancelBtnText:Ljava/lang/String;

.field private mDlgPauseBtnText:Ljava/lang/String;

.field private mDlgResumeBtnText:Ljava/lang/String;

.field private mDlgRetryBtnText:Ljava/lang/String;

.field private mDlgTitleComplete:Ljava/lang/String;

.field private mDlgTitleDownloading:Ljava/lang/String;

.field private mDlgTitleFailed:Ljava/lang/String;

.field private mDlgTitlePaused:Ljava/lang/String;

.field private mIsComplete:Z

.field private mIsPaused:Z

.field final synthetic this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;


# direct methods
.method public constructor <init>(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;Landroid/content/Context;)V
    .locals 3

    .line 237
    iput-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    .line 238
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 239
    iput-boolean p2, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mIsPaused:Z

    .line 240
    iput-boolean p2, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mIsComplete:Z

    .line 241
    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/apkextdownloader/R$string;->obb_download_title_downloading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgTitleDownloading:Ljava/lang/String;

    .line 242
    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/apkextdownloader/R$string;->obb_download_title_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgTitleFailed:Ljava/lang/String;

    .line 243
    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/apkextdownloader/R$string;->obb_download_title_paused:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgTitlePaused:Ljava/lang/String;

    .line 244
    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/apkextdownloader/R$string;->obb_download_title_complete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgTitleComplete:Ljava/lang/String;

    .line 245
    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/apkextdownloader/R$string;->obb_download_btn_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgCancelBtnText:Ljava/lang/String;

    .line 246
    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/apkextdownloader/R$string;->obb_download_btn_pause:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgPauseBtnText:Ljava/lang/String;

    .line 247
    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/apkextdownloader/R$string;->obb_download_btn_resume:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgResumeBtnText:Ljava/lang/String;

    .line 248
    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/apkextdownloader/R$string;->obb_download_btn_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgRetryBtnText:Ljava/lang/String;

    .line 249
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setIndeterminate(Z)V

    .line 250
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 251
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setCancelable(Z)V

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setProgressStyle(I)V

    .line 253
    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "obb_downloader_indicator"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/cclink/obbdownloader/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setIcon(I)V

    .line 254
    invoke-virtual {p0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 256
    invoke-virtual {p0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 258
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgTitleDownloading:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setProgress(I)V

    const/16 p2, 0x64

    .line 260
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setMax(I)V

    .line 262
    iget-object p2, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgPauseBtnText:Ljava/lang/String;

    new-instance v0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;-><init>(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p2, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 296
    iget-object p2, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgCancelBtnText:Ljava/lang/String;

    new-instance v0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$2;-><init>(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mIsComplete:Z

    return p0
.end method

.method static synthetic access$300(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mIsPaused:Z

    return p0
.end method

.method static synthetic access$302(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;Z)Z
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgTitleDownloading:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgPauseBtnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgTitlePaused:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgResumeBtnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->trueDismiss()V

    return-void
.end method

.method private trueDismiss()V
    .locals 0

    .line 325
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    return-void
.end method

.method public failed()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgTitleFailed:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    .line 350
    invoke-virtual {p0, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgRetryBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mIsPaused:Z

    return-void
.end method

.method public paused()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgTitlePaused:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    .line 356
    invoke-virtual {p0, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgResumeBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 357
    iput-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mIsPaused:Z

    return-void
.end method

.method public success()V
    .locals 4

    .line 332
    iget-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mIsComplete:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    .line 333
    invoke-virtual {p0, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setProgress(I)V

    .line 334
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mDlgTitleComplete:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {p0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$3;

    invoke-direct {v1, p0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$3;-><init>(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->mIsComplete:Z

    const-string v0, "APKExpansionDownloader"

    const-string v1, "Download success"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
