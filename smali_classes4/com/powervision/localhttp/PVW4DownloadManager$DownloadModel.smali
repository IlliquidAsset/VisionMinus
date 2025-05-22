.class Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;
.super Ljava/lang/Object;
.source "PVW4DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/localhttp/PVW4DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadModel"
.end annotation


# instance fields
.field public download_dir:Ljava/lang/String;

.field public download_url:Ljava/lang/String;

.field public file_name:Ljava/lang/String;

.field public file_offset:Ljava/lang/String;

.field public file_size:J

.field public mode:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0-0"

    .line 535
    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_offset:Ljava/lang/String;

    .line 538
    iput-wide p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_size:J

    .line 539
    iput-object p3, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    .line 540
    iput-object p4, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_dir:Ljava/lang/String;

    .line 541
    iput-object p5, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_name:Ljava/lang/String;

    .line 542
    iput p6, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->mode:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0-0"

    .line 535
    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_offset:Ljava/lang/String;

    .line 546
    iput-wide p1, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_size:J

    .line 547
    iput-object p3, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_url:Ljava/lang/String;

    .line 548
    iput-object p4, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->download_dir:Ljava/lang/String;

    .line 549
    iput-object p5, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_name:Ljava/lang/String;

    .line 550
    iput p6, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->mode:I

    .line 551
    iput-object p7, p0, Lcom/powervision/localhttp/PVW4DownloadManager$DownloadModel;->file_offset:Ljava/lang/String;

    return-void
.end method
