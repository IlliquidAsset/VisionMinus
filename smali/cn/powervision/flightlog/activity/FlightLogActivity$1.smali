.class Lcn/powervision/flightlog/activity/FlightLogActivity$1;
.super Ljava/lang/Thread;
.source "FlightLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/flightlog/activity/FlightLogActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/activity/FlightLogActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$1;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 141
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 142
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$1;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$000(Lcn/powervision/flightlog/activity/FlightLogActivity;)V

    return-void
.end method
