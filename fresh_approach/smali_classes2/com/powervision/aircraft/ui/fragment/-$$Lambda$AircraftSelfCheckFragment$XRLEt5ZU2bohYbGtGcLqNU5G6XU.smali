.class public final synthetic Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$XRLEt5ZU2bohYbGtGcLqNU5G6XU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$XRLEt5ZU2bohYbGtGcLqNU5G6XU;->f$0:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$XRLEt5ZU2bohYbGtGcLqNU5G6XU;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$XRLEt5ZU2bohYbGtGcLqNU5G6XU;->f$0:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$XRLEt5ZU2bohYbGtGcLqNU5G6XU;->f$1:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->lambda$updateRemoteElectric$3$AircraftSelfCheckFragment(I)V

    return-void
.end method
