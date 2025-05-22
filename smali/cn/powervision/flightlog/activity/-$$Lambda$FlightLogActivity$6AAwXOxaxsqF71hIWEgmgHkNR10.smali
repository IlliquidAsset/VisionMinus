.class public final synthetic Lcn/powervision/flightlog/activity/-$$Lambda$FlightLogActivity$6AAwXOxaxsqF71hIWEgmgHkNR10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcn/powervision/flightlog/activity/FlightLogActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/powervision/flightlog/activity/-$$Lambda$FlightLogActivity$6AAwXOxaxsqF71hIWEgmgHkNR10;->f$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    iput-boolean p2, p0, Lcn/powervision/flightlog/activity/-$$Lambda$FlightLogActivity$6AAwXOxaxsqF71hIWEgmgHkNR10;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/powervision/flightlog/activity/-$$Lambda$FlightLogActivity$6AAwXOxaxsqF71hIWEgmgHkNR10;->f$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    iget-boolean v1, p0, Lcn/powervision/flightlog/activity/-$$Lambda$FlightLogActivity$6AAwXOxaxsqF71hIWEgmgHkNR10;->f$1:Z

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->lambda$onDownloadComplete$1$FlightLogActivity(Z)V

    return-void
.end method
