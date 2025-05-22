.class public Lcom/powervision/gcs/utils/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private filePaths:[Ljava/lang/String;

.field private mediaScanConn:Landroid/media/MediaScannerConnection;

.field private mimeTypes:[Ljava/lang/String;

.field private scanTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/powervision/gcs/utils/MediaScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/utils/MediaScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/powervision/gcs/utils/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/powervision/gcs/utils/MediaScanner;->scanTimes:I

    .line 21
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 4

    const/4 v0, 0x0

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/MediaScanner;->filePaths:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/powervision/gcs/utils/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    aget-object v1, v1, v0

    iget-object v3, p0, Lcom/powervision/gcs/utils/MediaScanner;->mimeTypes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/powervision/gcs/utils/MediaScanner;->filePaths:[Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/powervision/gcs/utils/MediaScanner;->mimeTypes:[Ljava/lang/String;

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 63
    iget p1, p0, Lcom/powervision/gcs/utils/MediaScanner;->scanTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/gcs/utils/MediaScanner;->scanTimes:I

    .line 64
    iget-object p2, p0, Lcom/powervision/gcs/utils/MediaScanner;->filePaths:[Ljava/lang/String;

    array-length p2, p2

    if-ne p1, p2, :cond_0

    .line 65
    iget-object p1, p0, Lcom/powervision/gcs/utils/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/powervision/gcs/utils/MediaScanner;->scanTimes:I

    :cond_0
    return-void
.end method

.method public scanFiles([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/utils/MediaScanner;->filePaths:[Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/powervision/gcs/utils/MediaScanner;->mimeTypes:[Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lcom/powervision/gcs/utils/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method
