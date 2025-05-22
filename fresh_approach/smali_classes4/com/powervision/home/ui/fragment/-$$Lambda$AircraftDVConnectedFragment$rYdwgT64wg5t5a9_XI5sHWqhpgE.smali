.class public final synthetic Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$rYdwgT64wg5t5a9_XI5sHWqhpgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$rYdwgT64wg5t5a9_XI5sHWqhpgE;->f$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;

    iput-boolean p2, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$rYdwgT64wg5t5a9_XI5sHWqhpgE;->f$1:Z

    iput-boolean p3, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$rYdwgT64wg5t5a9_XI5sHWqhpgE;->f$2:Z

    iput-boolean p4, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$rYdwgT64wg5t5a9_XI5sHWqhpgE;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$rYdwgT64wg5t5a9_XI5sHWqhpgE;->f$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;

    iget-boolean v1, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$rYdwgT64wg5t5a9_XI5sHWqhpgE;->f$1:Z

    iget-boolean v2, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$rYdwgT64wg5t5a9_XI5sHWqhpgE;->f$2:Z

    iget-boolean v3, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftDVConnectedFragment$rYdwgT64wg5t5a9_XI5sHWqhpgE;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->lambda$updateRoboticChange$3$AircraftDVConnectedFragment(ZZZ)V

    return-void
.end method
