.class public Lcom/powervision/base/utils/ProgressDialogUtils;
.super Ljava/lang/Object;
.source "ProgressDialogUtils.java"


# static fields
.field protected static progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissDialog()V
    .locals 1

    .line 46
    :try_start_0
    sget-object v0, Lcom/powervision/base/utils/ProgressDialogUtils;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/powervision/base/utils/ProgressDialogUtils;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/powervision/base/utils/ProgressDialogUtils;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 25
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 26
    sget-object v1, Lcom/powervision/base/utils/ProgressDialogUtils;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/powervision/base/utils/ProgressDialogUtils;->progressDialog:Landroid/app/ProgressDialog;

    const/4 p0, 0x0

    .line 28
    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    sget-object p0, Lcom/powervision/base/utils/ProgressDialogUtils;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 30
    sget-object p0, Lcom/powervision/base/utils/ProgressDialogUtils;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 32
    :cond_0
    sget-object p0, Lcom/powervision/base/utils/ProgressDialogUtils;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    .line 36
    sget-object p0, Lcom/powervision/base/utils/ProgressDialogUtils;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static showEmptyDialog(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    .line 20
    invoke-static {p0, v0}, Lcom/powervision/base/utils/ProgressDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
