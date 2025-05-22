.class public final synthetic Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$C-jxtPCGVwXgIjVfJCzJuG6xl5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

.field public final synthetic f$1:Lcom/powervision/base/views/LoadingProgressBar;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity;Lcom/powervision/base/views/LoadingProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$C-jxtPCGVwXgIjVfJCzJuG6xl5I;->f$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    iput-object p2, p0, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$C-jxtPCGVwXgIjVfJCzJuG6xl5I;->f$1:Lcom/powervision/base/views/LoadingProgressBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$C-jxtPCGVwXgIjVfJCzJuG6xl5I;->f$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$C-jxtPCGVwXgIjVfJCzJuG6xl5I;->f$1:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->lambda$null$0$ImageAlbumActivity(Lcom/powervision/base/views/LoadingProgressBar;)V

    return-void
.end method
