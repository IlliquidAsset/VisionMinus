.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$ElectronicHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "ShipCommonMaintenanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElectronicHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;Landroid/os/Message;)V
    .locals 0

    .line 87
    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 79
    check-cast p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment$ElectronicHandler;->referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;Landroid/os/Message;)V

    return-void
.end method
