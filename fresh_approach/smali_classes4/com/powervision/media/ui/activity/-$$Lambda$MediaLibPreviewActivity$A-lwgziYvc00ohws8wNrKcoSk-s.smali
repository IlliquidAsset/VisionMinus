.class public final synthetic Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$A-lwgziYvc00ohws8wNrKcoSk-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$A-lwgziYvc00ohws8wNrKcoSk-s;->f$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    iput p2, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$A-lwgziYvc00ohws8wNrKcoSk-s;->f$1:I

    iput p3, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$A-lwgziYvc00ohws8wNrKcoSk-s;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$A-lwgziYvc00ohws8wNrKcoSk-s;->f$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    iget v1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$A-lwgziYvc00ohws8wNrKcoSk-s;->f$1:I

    iget v2, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$A-lwgziYvc00ohws8wNrKcoSk-s;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->lambda$updateDownloadInfo$2$MediaLibPreviewActivity(II)V

    return-void
.end method
