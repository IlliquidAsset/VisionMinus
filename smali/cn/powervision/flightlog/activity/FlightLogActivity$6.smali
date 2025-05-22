.class Lcn/powervision/flightlog/activity/FlightLogActivity$6;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "FlightLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/flightlog/activity/FlightLogActivity;
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

    .line 613
    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$6;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 616
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string p1, "get_c_name"

    const-string v0, "...............onAvailable()....."

    .line 617
    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$6;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcn/powervision/flightlog/activity/FlightLogActivity;->isNetConnected:Z

    .line 619
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 620
    iput v0, p1, Landroid/os/Message;->what:I

    .line 621
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$6;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$1000(Lcn/powervision/flightlog/activity/FlightLogActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 640
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const-string p1, "get_c_name"

    const-string p2, "...............onCapabilitiesChanged"

    .line 641
    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 633
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    const-string p1, "get_c_name"

    const-string p2, "...............onLinkPropertiesChanged"

    .line 634
    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0

    .line 646
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    const-string p1, "get_c_name"

    const-string p2, "...............onLosing"

    .line 647
    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 626
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string p1, "get_c_name"

    const-string v0, "...............onLost"

    .line 627
    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$6;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcn/powervision/flightlog/activity/FlightLogActivity;->isNetConnected:Z

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 652
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    const-string v0, "get_c_name"

    const-string v1, "...............onUnavailable"

    .line 653
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
