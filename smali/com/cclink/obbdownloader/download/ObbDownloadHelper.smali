.class public Lcom/cclink/obbdownloader/download/ObbDownloadHelper;
.super Ljava/lang/Object;
.source "ObbDownloadHelper.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadProgressDlg:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mIsConnected:Z

.field private mIsFinished:Z

.field private mListener:Lcom/cclink/obbdownloader/download/ObbDownloadListener;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field private xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cclink/obbdownloader/ObbInfo;)V
    .locals 10

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsConnected:Z

    .line 40
    iput-boolean p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsFinished:Z

    .line 41
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getMainObbVersion()I

    move-result v0

    .line 42
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getMainObbFileSize()J

    move-result-wide v1

    .line 43
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getPatchObbVersion()I

    move-result v3

    .line 44
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getPatchObbFileSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-lez v0, :cond_1

    if-lez v3, :cond_1

    cmp-long v9, v1, v6

    if-lez v9, :cond_0

    cmp-long v9, v4, v6

    if-lez v9, :cond_0

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 47
    iput-object v6, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 48
    new-instance v7, Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {v7, v8, v0, v1, v2}, Lcom/cclink/obbdownloader/common/XAPKFile;-><init>(ZIJ)V

    aput-object v7, v6, p1

    .line 49
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    new-instance v1, Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {v1, p1, v3, v4, v5}, Lcom/cclink/obbdownloader/common/XAPKFile;-><init>(ZIJ)V

    aput-object v1, v0, v8

    goto :goto_0

    :cond_0
    new-array v3, v8, [Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 51
    iput-object v3, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 52
    new-instance v4, Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {v4, v8, v0, v1, v2}, Lcom/cclink/obbdownloader/common/XAPKFile;-><init>(ZIJ)V

    aput-object v4, v3, p1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    cmp-long v3, v1, v6

    if-lez v3, :cond_2

    new-array v3, v8, [Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 55
    iput-object v3, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 56
    new-instance v4, Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {v4, v8, v0, v1, v2}, Lcom/cclink/obbdownloader/common/XAPKFile;-><init>(ZIJ)V

    aput-object v4, v3, p1

    goto :goto_0

    :cond_2
    new-array p1, p1, [Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 58
    iput-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 60
    :goto_0
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getPublicKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/cclink/obbdownloader/download/ObbDownloadService;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    .line 61
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getSalt()[B

    move-result-object p1

    sput-object p1, Lcom/cclink/obbdownloader/download/ObbDownloadService;->SALT:[B

    return-void
.end method

.method static synthetic access$000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->downloadSuccess()V

    return-void
.end method

.method static synthetic access$200(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    return-object p0
.end method

.method static synthetic access$900(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->downloadFailed()V

    return-void
.end method

.method private downloadFailed()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsFinished:Z

    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->disconnect()V

    .line 142
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mListener:Lcom/cclink/obbdownloader/download/ObbDownloadListener;

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Lcom/cclink/obbdownloader/download/ObbDownloadListener;->onDownloadFailed()V

    :cond_0
    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsFinished:Z

    :cond_1
    return-void
.end method

.method private downloadSuccess()V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsFinished:Z

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->disconnect()V

    .line 132
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mListener:Lcom/cclink/obbdownloader/download/ObbDownloadListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/cclink/obbdownloader/download/ObbDownloadListener;->onDownloadComplete()V

    :cond_0
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsFinished:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsConnected:Z

    if-nez v0, :cond_0

    const-string v0, "APKExpansionDownloader"

    const-string v1, "Connect to download service."

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    iget-object v1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsConnected:Z

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsConnected:Z

    if-eqz v0, :cond_0

    const-string v0, "APKExpansionDownloader"

    const-string v1, "Disconnect from download service."

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    iget-object v1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsConnected:Z

    :cond_0
    return-void
.end method

.method public downloadExpansionFiles(Landroid/app/Activity;Lcom/cclink/obbdownloader/download/ObbDownloadListener;)V
    .locals 2

    .line 95
    :try_start_0
    iput-object p2, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mListener:Lcom/cclink/obbdownloader/download/ObbDownloadListener;

    const/4 p2, 0x0

    .line 96
    iput-boolean p2, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mIsFinished:Z

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    .line 100
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 104
    const-class v0, Lcom/cclink/obbdownloader/download/ObbDownloadService;

    invoke-static {p1, p2, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "APKExpansionDownloader"

    if-eqz p2, :cond_0

    :try_start_1
    const-string p2, "Try to download obb files"

    .line 112
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-class p2, Lcom/cclink/obbdownloader/download/ObbDownloadService;

    invoke-static {p0, p2}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object p2

    iput-object p2, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 115
    new-instance p2, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-direct {p2, p0, p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;-><init>(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mDownloadProgressDlg:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    .line 116
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->show()V

    goto :goto_0

    :cond_0
    const-string p1, "No need to download obb files"

    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->downloadSuccess()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 125
    invoke-direct {p0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->downloadFailed()V

    :goto_0
    return-void
.end method

.method public expansionFilesDelivered()Z
    .locals 10

    .line 78
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "APKExpansionDownloader"

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 79
    iget-object v6, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mContext:Landroid/content/Context;

    iget-boolean v7, v5, Lcom/cclink/obbdownloader/common/XAPKFile;->mIsMain:Z

    iget v8, v5, Lcom/cclink/obbdownloader/common/XAPKFile;->mFileVersion:I

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v6

    .line 80
    iget-object v7, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mContext:Landroid/content/Context;

    iget-wide v8, v5, Lcom/cclink/obbdownloader/common/XAPKFile;->mFileSize:J

    invoke-static {v7, v6, v8, v9, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v6

    if-nez v6, :cond_1

    .line 81
    iget-boolean v0, v5, Lcom/cclink/obbdownloader/common/XAPKFile;->mIsMain:Z

    if-eqz v0, :cond_0

    const-string v0, "Expansion files are not delivered: main obb does not exist"

    .line 82
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v0, "Expansion files are not delivered: patch obb does not exist"

    .line 84
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "Expansion files are already delivered"

    .line 89
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 4

    .line 217
    iget-wide v0, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APKExpansionDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mDownloadProgressDlg:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-virtual {v0, p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->setProgress(I)V

    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APKExpansionDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 193
    :pswitch_1
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mDownloadProgressDlg:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-virtual {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->failed()V

    goto :goto_0

    .line 201
    :pswitch_2
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mDownloadProgressDlg:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-virtual {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->paused()V

    goto :goto_0

    .line 186
    :pswitch_3
    iget-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mDownloadProgressDlg:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-virtual {p1}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->success()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 1

    .line 175
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    iput-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 176
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    const-string p1, "APKExpansionDownloader"

    const-string v0, "ServiceConnected"

    .line 177
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
