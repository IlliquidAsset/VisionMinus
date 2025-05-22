.class public final synthetic Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NL0RRJKG_A2SvvSh5_tX7jIoNN8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/activity/MediaLibActivity;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NL0RRJKG_A2SvvSh5_tX7jIoNN8;->f$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    iput p2, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NL0RRJKG_A2SvvSh5_tX7jIoNN8;->f$1:I

    iput p3, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NL0RRJKG_A2SvvSh5_tX7jIoNN8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NL0RRJKG_A2SvvSh5_tX7jIoNN8;->f$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    iget v1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NL0RRJKG_A2SvvSh5_tX7jIoNN8;->f$1:I

    iget v2, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibActivity$NL0RRJKG_A2SvvSh5_tX7jIoNN8;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/ui/activity/MediaLibActivity;->lambda$updateDownloadInfo$1$MediaLibActivity(II)V

    return-void
.end method
