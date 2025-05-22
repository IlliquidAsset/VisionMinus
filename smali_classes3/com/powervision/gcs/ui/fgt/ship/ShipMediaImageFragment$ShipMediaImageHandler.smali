.class Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "ShipMediaImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShipMediaImageHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Landroid/os/Message;)V
    .locals 0

    .line 197
    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 189
    check-cast p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Landroid/os/Message;)V

    return-void
.end method
