.class public Lcom/powervision/localhttp/PVW4DownloadManager;
.super Ljava/lang/Object;
.source "PVW4DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;,
        Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;,
        Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;
    }
.end annotation


# static fields
.field protected static final DOWNLOAD_MESSAGE_CANCEL:I = 0x12f

.field protected static final DOWNLOAD_MESSAGE_CANCEL_ALL:I = 0x130

.field protected static final DOWNLOAD_MESSAGE_DOWNLOADING:I = 0x12c

.field protected static final DOWNLOAD_MESSAGE_HIGH_PRIORITY_ALL:I = 0x132

.field protected static final DOWNLOAD_MESSAGE_LOW_PRIORITY_ALL:I = 0x131

.field protected static final DOWNLOAD_MESSAGE_START_DOWNLOAD:I = 0x12c

.field protected static final DOWNLOAD_MESSAGE_SUCCESS:I = 0x12e

.field protected static final DOWNLOAD_MESSAGE_TIMEOUT:I = 0x12d

.field protected static final DOWNLOAD_TIMEOUT:I = 0x2710

.field public static final LEVEL_HIGH:I = 0x1

.field public static final LEVEL_LOW:I = 0x2

.field protected static final MAX_FOLLOW_UPS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "lzqHttp"


# instance fields
.field private canNotifyHighPriority:Z

.field private canNotifyLowPriority:Z

.field protected downloadDir:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field private mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

.field private mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    new-instance v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;-><init>(Lcom/powervision/localhttp/PVW4DownloadManager;Lcom/powervision/localhttp/PVW4DownloadManager$1;)V

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/localhttp/PVW4DownloadManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4DownloadManager;->startCheckDownloadTask()V

    return-void
.end method

.method private handleDownloadMessageCancelAll()V
    .locals 2

    const-string v0, "lzqHttp"

    const-string v1, "handleDownloadMessageCancelAll: "

    .line 631
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4DownloadManager;->notifyCancelAll()V

    const/4 v0, 0x0

    .line 633
    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    return-void
.end method

.method private handleDownloadMessageHighPriorityAll()V
    .locals 2

    const-string v0, "lzqHttp"

    const-string v1, "handleDownloadMessageHighPriorityAll: "

    .line 643
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4DownloadManager;->notifyOnHighPriorityDownloadAll()V

    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    return-void
.end method

.method private handleDownloadMessageLowPriorityAll()V
    .locals 2

    const-string v0, "lzqHttp"

    const-string v1, "handleDownloadMessageLowPriorityAll: "

    .line 637
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4DownloadManager;->notifyOnLowPriorityDownloadAll()V

    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    return-void
.end method

.method public static synthetic lambda$Ju1A6D8Kj2rXDwj05ns3SdwUHso(Lcom/powervision/localhttp/PVW4DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4DownloadManager;->handleDownloadMessageCancelAll()V

    return-void
.end method

.method public static synthetic lambda$d0lHe-S-LrE4b4rtWCeUDLjquBk(Lcom/powervision/localhttp/PVW4DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4DownloadManager;->handleDownloadMessageLowPriorityAll()V

    return-void
.end method

.method public static synthetic lambda$uPPlG0PoUhMPYS5j5mu85UPbVCI(Lcom/powervision/localhttp/PVW4DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4DownloadManager;->handleDownloadMessageHighPriorityAll()V

    return-void
.end method

.method private notifyCancelAll()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 687
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 689
    invoke-interface {v1}, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;->onCancelAll()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyDownloadCancel(Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;)V
    .locals 6

    .line 668
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 669
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 671
    iget-object v2, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_dir:Ljava/lang/String;

    iget-object v4, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_name:Ljava/lang/String;

    iget v5, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->mode:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;->downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyDownloadSuccess(Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;)V
    .locals 6

    .line 659
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 660
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 662
    iget-object v2, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_dir:Ljava/lang/String;

    iget-object v4, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_name:Ljava/lang/String;

    iget v5, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->mode:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;->downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyDownloadTimeout(Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;)V
    .locals 6

    .line 677
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 678
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 679
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 680
    iget-object v2, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_dir:Ljava/lang/String;

    iget-object v4, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_name:Ljava/lang/String;

    iget v5, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->mode:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;->downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyDownloading(Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;F)V
    .locals 8

    .line 649
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDownloading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqHttp"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 653
    iget-object v3, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    iget-object v4, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_dir:Ljava/lang/String;

    iget-object v5, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_name:Ljava/lang/String;

    iget v6, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->mode:I

    move v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;->downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnHighPriorityDownloadAll()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 705
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 707
    invoke-interface {v1}, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;->onHighPriorityDownloadAll()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnLowPriorityDownloadAll()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 696
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 698
    invoke-interface {v1}, Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;->onLowPriorityDownloadAll()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startCheckDownloadTask()V
    .locals 9

    .line 419
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 423
    iput-boolean v1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->canNotifyHighPriority:Z

    const/4 v0, 0x0

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "lzqHttp"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    .line 429
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-wide v2, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_size:J

    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v4, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v5, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_dir:Ljava/lang/String;

    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v6, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v7, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_offset:Ljava/lang/String;

    const/4 v8, 0x2

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/powervision/localhttp/PVW4DownloadManager;->startDownload(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 434
    :cond_2
    iget-boolean v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->canNotifyHighPriority:Z

    if-eqz v0, :cond_3

    .line 435
    iput-boolean v2, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->canNotifyHighPriority:Z

    .line 436
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadManager$uPPlG0PoUhMPYS5j5mu85UPbVCI;

    invoke-direct {v3, p0}, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadManager$uPPlG0PoUhMPYS5j5mu85UPbVCI;-><init>(Lcom/powervision/localhttp/PVW4DownloadManager;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 443
    iput-boolean v1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->canNotifyLowPriority:Z

    .line 444
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    .line 445
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-wide v2, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_size:J

    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v4, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v5, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_dir:Ljava/lang/String;

    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v6, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v7, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_offset:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/powervision/localhttp/PVW4DownloadManager;->startDownload(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 450
    :cond_4
    iget-boolean v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->canNotifyLowPriority:Z

    if-eqz v0, :cond_5

    .line 451
    iput-boolean v2, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->canNotifyLowPriority:Z

    .line 452
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadManager$d0lHe-S-LrE4b4rtWCeUDLjquBk;

    invoke-direct {v1, p0}, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadManager$d0lHe-S-LrE4b4rtWCeUDLjquBk;-><init>(Lcom/powervision/localhttp/PVW4DownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 457
    :cond_5
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadManager$Ju1A6D8Kj2rXDwj05ns3SdwUHso;

    invoke-direct {v1, p0}, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadManager$Ju1A6D8Kj2rXDwj05ns3SdwUHso;-><init>(Lcom/powervision/localhttp/PVW4DownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addHighLevelDownloadTask(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addHighLevelDownloadTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v8, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    const/4 v7, 0x1

    move-object v1, v8

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addHighLevelDownloadTask(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v9, p3

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHighLevelDownloadTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqHttp"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v1, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 303
    :cond_1
    iget-object v10, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v11, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    const/4 v7, 0x1

    move-object v1, v11

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v1, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addHighLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addHighLevelDownloadTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, -0x1

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 247
    invoke-virtual/range {v2 .. v7}, Lcom/powervision/localhttp/PVW4DownloadManager;->addHighLevelDownloadTask(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addHighLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addHighLevelDownloadTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, -0x1

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 260
    invoke-virtual/range {v2 .. v8}, Lcom/powervision/localhttp/PVW4DownloadManager;->addHighLevelDownloadTask(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addHighLevelDownloadTaskAtFront(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addHighLevelDownloadTaskAtFront:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v8, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    const/4 v7, 0x1

    move-object v1, v8

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 348
    iget-object p2, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 351
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addHighLevelDownloadTaskAtFront(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v9, p3

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHighLevelDownloadTaskAtFront:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqHttp"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v1, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 370
    :cond_1
    iget-object v10, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v11, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    const/4 v7, 0x1

    move-object v1, v11

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 371
    iget-object v2, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 372
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addHighLevelDownloadTaskAtFront(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addHighLevelDownloadTaskAtFront:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, -0x1

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 328
    invoke-virtual/range {v2 .. v7}, Lcom/powervision/localhttp/PVW4DownloadManager;->addHighLevelDownloadTaskAtFront(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addLowLevelDownloadTask(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLowLevelDownloadTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v8, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    const/4 v7, 0x2

    move-object v1, v8

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addLowLevelDownloadTask(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v9, p3

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLowLevelDownloadTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqHttp"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v1, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 159
    :cond_1
    iget-object v10, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v11, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    const/4 v7, 0x2

    move-object v1, v11

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addLowLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLowLevelDownloadTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, -0x1

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 101
    invoke-virtual/range {v2 .. v7}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTask(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addLowLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLowLevelDownloadTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, -0x1

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 114
    invoke-virtual/range {v2 .. v8}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTask(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addLowLevelDownloadTaskAtFront(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLowLevelDownloadTaskAtFront---1---:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addLowLevelDownloadTaskAtFront---2---:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addLowLevelDownloadTaskAtFront---3---:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLowLevelDownloadTaskAtFront---4---:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v8, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    const/4 v7, 0x2

    move-object v1, v8

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 196
    iget-object p2, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 199
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addLowLevelDownloadTaskAtFront(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v9, p3

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLowLevelDownloadTaskAtFront---1---:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqHttp"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addLowLevelDownloadTaskAtFront---2---:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_0
    iget-object v1, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addLowLevelDownloadTaskAtFront---3---:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addLowLevelDownloadTaskAtFront---4---:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v10, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v11, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    const/4 v7, 0x2

    move-object v1, v11

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 223
    iget-object v2, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 224
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addLowLevelDownloadTaskAtFront(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLowLevelDownloadTaskAtFront---0---:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, -0x1

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 173
    invoke-virtual/range {v2 .. v7}, Lcom/powervision/localhttp/PVW4DownloadManager;->addLowLevelDownloadTaskAtFront(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cancelAllDownload(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->canNotifyHighPriority:Z

    .line 505
    iput-boolean v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->canNotifyLowPriority:Z

    .line 506
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 507
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 508
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 509
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 510
    invoke-virtual {p0, p1}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelCurrentDownloadTask(Z)V

    .line 511
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadManager$Ju1A6D8Kj2rXDwj05ns3SdwUHso;

    invoke-direct {v0, p0}, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadManager$Ju1A6D8Kj2rXDwj05ns3SdwUHso;-><init>(Lcom/powervision/localhttp/PVW4DownloadManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelCurrentDownloadTask(Z)V
    .locals 0

    return-void
.end method

.method public cancelMediaAllDownload(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 520
    iput-boolean v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->canNotifyHighPriority:Z

    .line 521
    iput-boolean v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->canNotifyLowPriority:Z

    .line 522
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 523
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mLowPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 524
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 525
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mHighPriorityPathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 526
    invoke-virtual {p0, p1}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelCurrentDownloadTask(Z)V

    return-void
.end method

.method public currentDownloadTaskTimeout(Z)V
    .locals 1

    .line 391
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/powervision/localhttp/-$$Lambda$63cc2V2PQgSxjkZi4UvgW8WZaq8;

    invoke-direct {v0, p0}, Lcom/powervision/localhttp/-$$Lambda$63cc2V2PQgSxjkZi4UvgW8WZaq8;-><init>(Lcom/powervision/localhttp/PVW4DownloadManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleDownloadMessageCancel()V
    .locals 4

    const-string v0, "lzqHttp"

    const-string v1, "handleDownloadMessageCancel: "

    .line 613
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v0, :cond_0

    .line 615
    invoke-direct {p0, v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->notifyDownloadCancel(Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;)V

    const/4 v0, 0x0

    .line 616
    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    .line 618
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected handleDownloadMessageSuccess()V
    .locals 4

    const-string v0, "lzqHttp"

    const-string v1, "handleDownloadMessageSuccess: "

    .line 622
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v0, :cond_0

    .line 624
    invoke-direct {p0, v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->notifyDownloadSuccess(Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;)V

    const/4 v0, 0x0

    .line 625
    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    .line 627
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected handleDownloadMessageTimeout()V
    .locals 4

    const-string v0, "lzqHttp"

    const-string v1, "handleDownloadMessageTimeout: "

    .line 604
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v0, :cond_0

    .line 606
    invoke-direct {p0, v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->notifyDownloadTimeout(Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;)V

    const/4 v0, 0x0

    .line 607
    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    .line 609
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected handleDownloadingMessage(F)V
    .locals 2

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadingMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqHttp"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz v0, :cond_1

    .line 597
    invoke-direct {p0, v0, p1}, Lcom/powervision/localhttp/PVW4DownloadManager;->notifyDownloading(Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;F)V

    :cond_1
    return-void
.end method

.method public removeAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected retryDownloadCurrentTask(Z)V
    .locals 8

    .line 407
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    if-eqz p1, :cond_0

    .line 408
    iget-wide v1, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_size:J

    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v3, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v4, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_dir:Ljava/lang/String;

    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v5, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_name:Ljava/lang/String;

    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->mCurrentDownloadModel:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;

    iget-object v6, p1, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_offset:Ljava/lang/String;

    const/4 v7, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/powervision/localhttp/PVW4DownloadManager;->startDownload(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->runnable:Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;

    const-wide/16 v1, 0x46

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public setDownloadDir(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->downloadDir:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager;->fileName:Ljava/lang/String;

    return-void
.end method

.method public startDownload(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "who download:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqHttp"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
