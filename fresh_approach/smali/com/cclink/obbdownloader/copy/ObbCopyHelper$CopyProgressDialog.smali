.class Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;
.super Landroid/app/ProgressDialog;
.source "ObbCopyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cclink/obbdownloader/copy/ObbCopyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyProgressDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;


# direct methods
.method public constructor <init>(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;Landroid/content/Context;)V
    .locals 2

    .line 176
    iput-object p1, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    .line 177
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 178
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->setIndeterminate(Z)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 180
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->setCancelable(Z)V

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, v0}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->setProgressStyle(I)V

    .line 182
    invoke-virtual {p0}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 184
    invoke-virtual {p0}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 186
    invoke-static {p1}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->access$000(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netease/apkextdownloader/R$string;->obb_download_title_coping:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p0, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->setProgress(I)V

    const/16 p1, 0x64

    .line 188
    invoke-virtual {p0, p1}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->setMax(I)V

    return-void
.end method
