.class public Lcom/lewis/edit/utils/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$progressDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 31
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object p0

    invoke-virtual {p0}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->exit()V

    return-void
.end method

.method public static progressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2

    .line 25
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6b63\u5728\u5904\u7406\uff0c\u8bf7\u7a0d\u540e..."

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/16 v1, 0x64

    .line 29
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    const/16 v1, 0x14

    .line 30
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 31
    sget v1, Lcom/lewis/edit/R$string;->AP03_AI_2:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/lewis/edit/utils/-$$Lambda$DialogUtil$K2wyBlRx1KutGHYipXLBreF4dIc;->INSTANCE:Lcom/lewis/edit/utils/-$$Lambda$DialogUtil$K2wyBlRx1KutGHYipXLBreF4dIc;

    invoke-virtual {v0, p0, v1}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 32
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0
.end method

.method public static showProgressDialog(Landroid/content/Context;)Lcom/powervision/base/views/LoadingProgressBar;
    .locals 1

    .line 43
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
