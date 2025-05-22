.class public final synthetic Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Vg6O0M4FPWVXOR1Ki6Lc15NtRZ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Vg6O0M4FPWVXOR1Ki6Lc15NtRZ0;->f$0:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Vg6O0M4FPWVXOR1Ki6Lc15NtRZ0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Vg6O0M4FPWVXOR1Ki6Lc15NtRZ0;->f$0:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Vg6O0M4FPWVXOR1Ki6Lc15NtRZ0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->lambda$updateRemoteMode$5$AircraftSelfCheckFragment(Ljava/lang/String;)V

    return-void
.end method
