.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$elJHGsZZP7GO01mRdhxiVp0w04E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$elJHGsZZP7GO01mRdhxiVp0w04E;->f$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$elJHGsZZP7GO01mRdhxiVp0w04E;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$elJHGsZZP7GO01mRdhxiVp0w04E;->f$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$FindAircraftActivity$elJHGsZZP7GO01mRdhxiVp0w04E;->f$1:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->lambda$getSatellitesNum$2$FindAircraftActivity(I)V

    return-void
.end method
