.class Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;
.super Ljava/lang/Object;
.source "ObbDownloadHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;-><init>(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

.field final synthetic val$this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;


# direct methods
.method constructor <init>(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    iput-object p2, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->val$this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 266
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->access$100(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    iget-object p1, p1, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$200(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 276
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->access$300(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Z

    move-result p1

    const-string p2, "APKExpansionDownloader"

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 277
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    iget-object p1, p1, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$200(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 278
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->access$400(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-virtual {p1, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-static {v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->access$500(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "download continued by user"

    .line 280
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_1
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    iget-object p1, p1, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$200(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestPauseDownload()V

    .line 287
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->access$600(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-virtual {p1, v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-static {v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->access$700(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "download paused by user"

    .line 289
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$1;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->access$300(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->access$302(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;Z)Z

    :cond_2
    return-void
.end method
