.class Lcn/powervision/flightlog/activity/FlightLogActivity$MyHandler;
.super Landroid/os/Handler;
.source "FlightLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/flightlog/activity/FlightLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/powervision/flightlog/activity/FlightLogActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/activity/FlightLogActivity;)V
    .locals 1

    .line 573
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 574
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 582
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 583
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$800(Lcn/powervision/flightlog/activity/FlightLogActivity;)V

    goto :goto_0

    .line 584
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 585
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$900(Lcn/powervision/flightlog/activity/FlightLogActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
