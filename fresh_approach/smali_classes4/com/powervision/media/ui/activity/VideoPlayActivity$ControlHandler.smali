.class Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/activity/VideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControlHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/media/ui/activity/VideoPlayActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/media/ui/activity/VideoPlayActivity;Landroid/os/Message;)V
    .locals 1

    .line 185
    iget v0, p2, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 186
    invoke-static {p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->access$000(Lcom/powervision/media/ui/activity/VideoPlayActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_0
    iget p2, p2, Landroid/os/Message;->what:I

    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    .line 188
    invoke-static {p1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->access$100(Lcom/powervision/media/ui/activity/VideoPlayActivity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 177
    check-cast p1, Lcom/powervision/media/ui/activity/VideoPlayActivity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;->referenceHandleMessage(Lcom/powervision/media/ui/activity/VideoPlayActivity;Landroid/os/Message;)V

    return-void
.end method
