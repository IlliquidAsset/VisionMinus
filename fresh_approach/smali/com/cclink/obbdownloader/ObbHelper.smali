.class public Lcom/cclink/obbdownloader/ObbHelper;
.super Ljava/lang/Object;
.source "ObbHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCopyHelper:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

.field private mDownloadHelper:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

.field private mObbInfo:Lcom/cclink/obbdownloader/ObbInfo;

.field private mUnzipHelper:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cclink/obbdownloader/ObbInfo;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/cclink/obbdownloader/ObbHelper;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/cclink/obbdownloader/ObbHelper;->mObbInfo:Lcom/cclink/obbdownloader/ObbInfo;

    return-void
.end method

.method private getCopyHelper()Lcom/cclink/obbdownloader/copy/ObbCopyHelper;
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper;->mCopyHelper:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    iget-object v1, p0, Lcom/cclink/obbdownloader/ObbHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cclink/obbdownloader/ObbHelper;->mObbInfo:Lcom/cclink/obbdownloader/ObbInfo;

    invoke-direct {v0, v1, v2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;-><init>(Landroid/content/Context;Lcom/cclink/obbdownloader/ObbInfo;)V

    iput-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper;->mCopyHelper:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper;->mCopyHelper:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    return-object v0
.end method

.method private getCopyListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/copy/ObbCopyListener;
    .locals 1

    if-eqz p1, :cond_0

    .line 123
    new-instance v0, Lcom/cclink/obbdownloader/ObbHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/cclink/obbdownloader/ObbHelper$2;-><init>(Lcom/cclink/obbdownloader/ObbHelper;Lcom/cclink/obbdownloader/ObbHelperListener;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDownloadListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/download/ObbDownloadListener;
    .locals 1

    if-eqz p1, :cond_0

    .line 105
    new-instance v0, Lcom/cclink/obbdownloader/ObbHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/cclink/obbdownloader/ObbHelper$1;-><init>(Lcom/cclink/obbdownloader/ObbHelper;Lcom/cclink/obbdownloader/ObbHelperListener;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDownloaderHelper()Lcom/cclink/obbdownloader/download/ObbDownloadHelper;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper;->mDownloadHelper:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    iget-object v1, p0, Lcom/cclink/obbdownloader/ObbHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cclink/obbdownloader/ObbHelper;->mObbInfo:Lcom/cclink/obbdownloader/ObbInfo;

    invoke-direct {v0, v1, v2}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;-><init>(Landroid/content/Context;Lcom/cclink/obbdownloader/ObbInfo;)V

    iput-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper;->mDownloadHelper:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper;->mDownloadHelper:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    return-object v0
.end method

.method private getUnzipHelper()Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper;->mUnzipHelper:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    iget-object v1, p0, Lcom/cclink/obbdownloader/ObbHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cclink/obbdownloader/ObbHelper;->mObbInfo:Lcom/cclink/obbdownloader/ObbInfo;

    invoke-direct {v0, v1, v2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;-><init>(Landroid/content/Context;Lcom/cclink/obbdownloader/ObbInfo;)V

    iput-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper;->mUnzipHelper:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper;->mUnzipHelper:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    return-object v0
.end method

.method private getUnzipListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;
    .locals 1

    if-eqz p1, :cond_0

    .line 141
    new-instance v0, Lcom/cclink/obbdownloader/ObbHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/cclink/obbdownloader/ObbHelper$3;-><init>(Lcom/cclink/obbdownloader/ObbHelper;Lcom/cclink/obbdownloader/ObbHelperListener;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public connect()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelper;->getDownloaderHelper()Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->connect()V

    return-void
.end method

.method public copyAllToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/ObbHelperListener;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelper;->getCopyHelper()Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/cclink/obbdownloader/ObbHelper;->getCopyListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/copy/ObbCopyListener;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->copyAllToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/copy/ObbCopyListener;)V

    return-void
.end method

.method public copyMainobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/ObbHelperListener;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelper;->getCopyHelper()Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/cclink/obbdownloader/ObbHelper;->getCopyListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/copy/ObbCopyListener;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->copyMainobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/copy/ObbCopyListener;)V

    return-void
.end method

.method public copyPatchobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/ObbHelperListener;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelper;->getCopyHelper()Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/cclink/obbdownloader/ObbHelper;->getCopyListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/copy/ObbCopyListener;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->copyPatchobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/copy/ObbCopyListener;)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelper;->getDownloaderHelper()Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->disconnect()V

    return-void
.end method

.method public downloadExpansionFiles(Landroid/app/Activity;Lcom/cclink/obbdownloader/ObbHelperListener;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelper;->getDownloaderHelper()Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/cclink/obbdownloader/ObbHelper;->getDownloadListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/download/ObbDownloadListener;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->downloadExpansionFiles(Landroid/app/Activity;Lcom/cclink/obbdownloader/download/ObbDownloadListener;)V

    return-void
.end method

.method public expansionFilesDelivered()Z
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelper;->getDownloaderHelper()Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->expansionFilesDelivered()Z

    move-result v0

    return v0
.end method

.method public unzipAllToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/ObbHelperListener;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelper;->getUnzipHelper()Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/cclink/obbdownloader/ObbHelper;->getUnzipListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->unzipAllToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;)V

    return-void
.end method

.method public unzipMainobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/ObbHelperListener;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelper;->getUnzipHelper()Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/cclink/obbdownloader/ObbHelper;->getUnzipListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->unzipMainobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;)V

    return-void
.end method

.method public unzipPatchobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/ObbHelperListener;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelper;->getUnzipHelper()Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/cclink/obbdownloader/ObbHelper;->getUnzipListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->unzipPatchobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;)V

    return-void
.end method
