.class Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "MediaHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/fragment/MediaHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/media/ui/fragment/MediaHomeFragment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)V
    .locals 0

    .line 298
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/media/ui/fragment/MediaHomeFragment;Landroid/os/Message;)V
    .locals 1

    .line 303
    iget v0, p2, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 304
    iget p2, p2, Landroid/os/Message;->arg1:I

    .line 305
    invoke-static {p1, p2}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->access$400(Lcom/powervision/media/ui/fragment/MediaHomeFragment;I)V

    goto :goto_0

    .line 306
    :cond_0
    iget p2, p2, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 307
    invoke-static {p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->access$500(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 295
    check-cast p1, Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;->referenceHandleMessage(Lcom/powervision/media/ui/fragment/MediaHomeFragment;Landroid/os/Message;)V

    return-void
.end method
