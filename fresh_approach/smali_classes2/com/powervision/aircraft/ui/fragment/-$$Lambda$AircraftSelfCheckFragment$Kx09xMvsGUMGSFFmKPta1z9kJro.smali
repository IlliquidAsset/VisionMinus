.class public final synthetic Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Kx09xMvsGUMGSFFmKPta1z9kJro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Kx09xMvsGUMGSFFmKPta1z9kJro;->f$0:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Kx09xMvsGUMGSFFmKPta1z9kJro;->f$1:I

    iput p3, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Kx09xMvsGUMGSFFmKPta1z9kJro;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Kx09xMvsGUMGSFFmKPta1z9kJro;->f$0:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Kx09xMvsGUMGSFFmKPta1z9kJro;->f$1:I

    iget v2, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Kx09xMvsGUMGSFFmKPta1z9kJro;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->lambda$updateGimbalState$8$AircraftSelfCheckFragment(II)V

    return-void
.end method
