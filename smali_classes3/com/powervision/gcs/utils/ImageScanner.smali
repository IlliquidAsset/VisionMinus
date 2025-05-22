.class public Lcom/powervision/gcs/utils/ImageScanner;
.super Ljava/lang/Object;
.source "ImageScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;
    }
.end annotation


# instance fields
.field private callback:Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/powervision/gcs/utils/ImageScanner;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/utils/ImageScanner;)Landroid/content/Context;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/powervision/gcs/utils/ImageScanner;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public removeCallBack()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/powervision/gcs/utils/ImageScanner;->callback:Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;

    return-void
.end method

.method public scanImages(Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;)V
    .locals 2

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/utils/ImageScanner;->callback:Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;

    .line 34
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/utils/ImageScanner$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/utils/ImageScanner$1;-><init>(Lcom/powervision/gcs/utils/ImageScanner;Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
