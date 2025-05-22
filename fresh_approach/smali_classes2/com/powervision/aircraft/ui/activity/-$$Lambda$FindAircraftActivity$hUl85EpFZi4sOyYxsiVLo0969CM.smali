.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$hUl85EpFZi4sOyYxsiVLo0969CM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$hUl85EpFZi4sOyYxsiVLo0969CM;->f$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$hUl85EpFZi4sOyYxsiVLo0969CM;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$hUl85EpFZi4sOyYxsiVLo0969CM;->f$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$hUl85EpFZi4sOyYxsiVLo0969CM;->f$1:F

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->lambda$getBatteryElectric$1$FindAircraftActivity(F)V

    return-void
.end method
