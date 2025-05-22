.class public Lcom/powervision/gcs/utils/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# instance fields
.field private downloadId:J

.field private downloadManager:Landroid/app/DownloadManager;

.field private mContext:Landroid/content/Context;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/powervision/gcs/utils/DownloadUtils$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/DownloadUtils$1;-><init>(Lcom/powervision/gcs/utils/DownloadUtils;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/DownloadUtils;->receiver:Landroid/content/BroadcastReceiver;

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/utils/DownloadUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/utils/DownloadUtils;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/powervision/gcs/utils/DownloadUtils;->checkStatus()V

    return-void
.end method

.method private checkStatus()V
    .locals 5

    .line 63
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    .line 65
    iget-wide v2, p0, Lcom/powervision/gcs/utils/DownloadUtils;->downloadId:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 66
    iget-object v1, p0, Lcom/powervision/gcs/utils/DownloadUtils;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "status"

    .line 68
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/DownloadUtils;->mContext:Landroid/content/Context;

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/utils/DownloadUtils;->installAPK()V

    .line 90
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private installAPK()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/utils/DownloadUtils;->downloadManager:Landroid/app/DownloadManager;

    iget-wide v1, p0, Lcom/powervision/gcs/utils/DownloadUtils;->downloadId:J

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/vnd.android.package-archive"

    .line 99
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 100
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/powervision/gcs/utils/DownloadUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public downloadAPK(Ljava/lang/String;)V
    .locals 3

    .line 29
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string p1, "\u65b0\u7248\u672cApk"

    .line 35
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const-string p1, "Apk Downloading"

    .line 36
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x1

    .line 37
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 40
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "version2+.apk"

    invoke-virtual {v0, p1, v1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 43
    iget-object p1, p0, Lcom/powervision/gcs/utils/DownloadUtils;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/powervision/gcs/utils/DownloadUtils;->downloadManager:Landroid/app/DownloadManager;

    .line 45
    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/gcs/utils/DownloadUtils;->downloadId:J

    .line 48
    iget-object p1, p0, Lcom/powervision/gcs/utils/DownloadUtils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/powervision/gcs/utils/DownloadUtils;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
