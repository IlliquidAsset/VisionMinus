.class public final synthetic Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$6WyZlj4gZl6nlbKMUm3550AmpY0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$6WyZlj4gZl6nlbKMUm3550AmpY0;->f$0:Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;

    iput-boolean p2, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$6WyZlj4gZl6nlbKMUm3550AmpY0;->f$1:Z

    iput-boolean p3, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$6WyZlj4gZl6nlbKMUm3550AmpY0;->f$2:Z

    iput-boolean p4, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$6WyZlj4gZl6nlbKMUm3550AmpY0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$6WyZlj4gZl6nlbKMUm3550AmpY0;->f$0:Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;

    iget-boolean v1, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$6WyZlj4gZl6nlbKMUm3550AmpY0;->f$1:Z

    iget-boolean v2, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$6WyZlj4gZl6nlbKMUm3550AmpY0;->f$2:Z

    iget-boolean v3, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$6WyZlj4gZl6nlbKMUm3550AmpY0;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->lambda$updateRoboticChange$3$AircraftConnectedFragment(ZZZ)V

    return-void
.end method
