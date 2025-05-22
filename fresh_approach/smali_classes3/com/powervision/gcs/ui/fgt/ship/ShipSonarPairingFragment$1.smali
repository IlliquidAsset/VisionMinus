.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$1;
.super Ljava/lang/Object;
.source "ShipSonarPairingFragment.java"

# interfaces
.implements Lcom/powervision/powersdk/callback/BaseStationCallback$RayPairFishFinderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pairFishFinder(I)V
    .locals 1

    .line 145
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 146
    iput p1, v0, Landroid/os/Message;->what:I

    .line 147
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarPairingFragment$ElectronicHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
