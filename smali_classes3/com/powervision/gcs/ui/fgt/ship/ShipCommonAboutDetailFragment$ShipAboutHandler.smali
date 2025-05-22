.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "ShipCommonAboutDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShipAboutHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Landroid/os/Message;)V
    .locals 0

    .line 110
    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 102
    check-cast p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$ShipAboutHandler;->referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Landroid/os/Message;)V

    return-void
.end method
