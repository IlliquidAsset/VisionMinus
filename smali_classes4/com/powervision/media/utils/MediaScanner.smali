.class public Lcom/powervision/media/utils/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/utils/MediaScanner$ModifyTimeComparator;,
        Lcom/powervision/media/utils/MediaScanner$CreateTimeComparator;,
        Lcom/powervision/media/utils/MediaScanner$ScannerListener;
    }
.end annotation


# instance fields
.field private mScannerListener:Lcom/powervision/media/utils/MediaScanner$ScannerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/utils/MediaScanner;)Lcom/powervision/media/utils/MediaScanner$ScannerListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/powervision/media/utils/MediaScanner;->mScannerListener:Lcom/powervision/media/utils/MediaScanner$ScannerListener;

    return-object p0
.end method


# virtual methods
.method public scanImage(Lcom/powervision/media/utils/MediaScanner$ScannerListener;)V
    .locals 1

    .line 25
    iput-object p1, p0, Lcom/powervision/media/utils/MediaScanner;->mScannerListener:Lcom/powervision/media/utils/MediaScanner$ScannerListener;

    .line 26
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/powervision/media/utils/MediaScanner$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/utils/MediaScanner$1;-><init>(Lcom/powervision/media/utils/MediaScanner;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
