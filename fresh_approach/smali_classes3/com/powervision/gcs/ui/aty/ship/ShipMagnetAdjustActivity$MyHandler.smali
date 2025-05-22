.class Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$MyHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "ShipMagnetAdjustActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;Landroid/os/Message;)V
    .locals 0

    .line 98
    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;->access$000(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 90
    check-cast p1, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity$MyHandler;->referenceHandleMessage(Lcom/powervision/gcs/ui/aty/ship/ShipMagnetAdjustActivity;Landroid/os/Message;)V

    return-void
.end method
