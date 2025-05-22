.class Lcom/powervision/media/ui/activity/VideoAlbumActivity$1;
.super Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;
.source "VideoAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/VideoAlbumActivity;->initToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/VideoAlbumActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/VideoAlbumActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$1;->this$0:Lcom/powervision/media/ui/activity/VideoAlbumActivity;

    invoke-direct {p0}, Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLeftCtv()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;->onClickLeftCtv()V

    .line 107
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$1;->this$0:Lcom/powervision/media/ui/activity/VideoAlbumActivity;

    invoke-virtual {v0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->finish()V

    return-void
.end method
