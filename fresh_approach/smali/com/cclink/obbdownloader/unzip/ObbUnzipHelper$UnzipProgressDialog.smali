.class Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;
.super Landroid/app/ProgressDialog;
.source "ObbUnzipHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnzipProgressDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;


# direct methods
.method public constructor <init>(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;Landroid/content/Context;)V
    .locals 2

    .line 220
    iput-object p1, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    .line 221
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 222
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->setIndeterminate(Z)V

    .line 223
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 224
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->setCancelable(Z)V

    const/4 v0, 0x1

    .line 225
    invoke-virtual {p0, v0}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->setProgressStyle(I)V

    .line 226
    invoke-virtual {p0}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 228
    invoke-virtual {p0}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 230
    invoke-static {p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->access$000(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netease/apkextdownloader/R$string;->obb_download_title_unziping:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->setProgress(I)V

    const/16 p1, 0x64

    .line 232
    invoke-virtual {p0, p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->setMax(I)V

    return-void
.end method
