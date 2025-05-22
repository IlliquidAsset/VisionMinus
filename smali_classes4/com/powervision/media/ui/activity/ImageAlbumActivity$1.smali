.class Lcom/powervision/media/ui/activity/ImageAlbumActivity$1;
.super Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;
.source "ImageAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/ImageAlbumActivity;->initToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$1;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-direct {p0}, Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLeftCtv()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;->onClickLeftCtv()V

    .line 110
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$1;->this$0:Lcom/powervision/media/ui/activity/ImageAlbumActivity;

    invoke-virtual {v0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->finish()V

    return-void
.end method
