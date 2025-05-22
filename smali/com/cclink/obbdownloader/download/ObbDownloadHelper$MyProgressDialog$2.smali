.class Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$2;
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

    .line 296
    iput-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$2;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    iput-object p2, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$2;->val$this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 300
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$2;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->access$100(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$2;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    iget-object p1, p1, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$200(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$2;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    iget-object p1, p1, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$200(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestAbortDownload()V

    const-string p1, "APKExpansionDownloader"

    const-string p2, "download canceled by user"

    .line 306
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$2;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->access$800(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)V

    .line 311
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$2;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    iget-object p1, p1, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$900(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)V

    return-void
.end method
