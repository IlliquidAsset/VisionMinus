.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4rfebvgu8i4-aCEeM-6-dE6-EHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4rfebvgu8i4-aCEeM-6-dE6-EHo;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4rfebvgu8i4-aCEeM-6-dE6-EHo;->f$1:F

    iput p3, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4rfebvgu8i4-aCEeM-6-dE6-EHo;->f$2:F

    iput p4, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4rfebvgu8i4-aCEeM-6-dE6-EHo;->f$3:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4rfebvgu8i4-aCEeM-6-dE6-EHo;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4rfebvgu8i4-aCEeM-6-dE6-EHo;->f$1:F

    iget v2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4rfebvgu8i4-aCEeM-6-dE6-EHo;->f$2:F

    iget v3, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4rfebvgu8i4-aCEeM-6-dE6-EHo;->f$3:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$updateAircraftAttitudeInfo$12$AirCraftControlActivity(FFF)V

    return-void
.end method
