.class public final synthetic Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$PocJhcsbXFK92PdZOFbOhNjJvig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/powervision/media/utils/ImageScanner$ScanCompleteCallBack;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

.field public final synthetic f$1:Lcom/powervision/base/views/LoadingProgressBar;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity;Lcom/powervision/base/views/LoadingProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$PocJhcsbXFK92PdZOFbOhNjJvig;->f$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    iput-object p2, p0, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$PocJhcsbXFK92PdZOFbOhNjJvig;->f$1:Lcom/powervision/base/views/LoadingProgressBar;

    return-void
.end method


# virtual methods
.method public final scanComplete(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$PocJhcsbXFK92PdZOFbOhNjJvig;->f$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$PocJhcsbXFK92PdZOFbOhNjJvig;->f$1:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->lambda$initLocalData$1$ImageAlbumActivity(Lcom/powervision/base/views/LoadingProgressBar;Landroid/database/Cursor;)V

    return-void
.end method
