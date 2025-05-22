.class Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;
.super Ljava/lang/Object;
.source "PVW4DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/localhttp/PVW4DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/localhttp/PVW4DownloadManager;


# direct methods
.method private constructor <init>(Lcom/powervision/localhttp/PVW4DownloadManager;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;->this$0:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/localhttp/PVW4DownloadManager;Lcom/powervision/localhttp/PVW4DownloadManager$1;)V
    .locals 0

    .line 728
    invoke-direct {p0, p1}, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;-><init>(Lcom/powervision/localhttp/PVW4DownloadManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadRunnable;->this$0:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-static {v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->access$100(Lcom/powervision/localhttp/PVW4DownloadManager;)V

    return-void
.end method
