.class public Lcom/powervision/media/utils/VideoScanner;
.super Ljava/lang/Object;
.source "VideoScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/utils/VideoScanner$ScanCompleteCallBack;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/powervision/media/utils/VideoScanner;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/utils/VideoScanner;)Landroid/content/Context;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/powervision/media/utils/VideoScanner;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public scanVideos(Lcom/powervision/media/utils/VideoScanner$ScanCompleteCallBack;)V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/media/utils/VideoScanner$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/media/utils/VideoScanner$1;-><init>(Lcom/powervision/media/utils/VideoScanner;Lcom/powervision/media/utils/VideoScanner$ScanCompleteCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
