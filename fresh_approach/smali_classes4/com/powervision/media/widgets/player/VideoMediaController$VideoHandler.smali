.class Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "VideoMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/player/VideoMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/media/widgets/player/VideoMediaController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/media/widgets/player/VideoMediaController;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/media/widgets/player/VideoMediaController;Landroid/os/Message;)V
    .locals 0

    .line 58
    invoke-virtual {p1, p2}, Lcom/powervision/media/widgets/player/VideoMediaController;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;->referenceHandleMessage(Lcom/powervision/media/widgets/player/VideoMediaController;Landroid/os/Message;)V

    return-void
.end method
