.class Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "ShipMediaVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShipMediaVideoHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;Landroid/os/Message;)V
    .locals 0

    .line 93
    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 85
    check-cast p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;Landroid/os/Message;)V

    return-void
.end method
