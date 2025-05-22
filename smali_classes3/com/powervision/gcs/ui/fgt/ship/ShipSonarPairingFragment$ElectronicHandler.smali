.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "ShipSonarPairingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElectronicHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;Landroid/os/Message;)V
    .locals 0

    .line 112
    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 104
    check-cast p1, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;->referenceHandleMessage(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;Landroid/os/Message;)V

    return-void
.end method
