.class Lcn/powervision/flightlog/activity/FlightLogDetialActivity$MyHandler;
.super Landroid/os/Handler;
.source "FlightLogDetialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/flightlog/activity/FlightLogDetialActivity;
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
            "Lcn/powervision/flightlog/activity/FlightLogDetialActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)V
    .locals 1

    .line 426
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 427
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 432
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;

    invoke-static {p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->access$400(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)V

    return-void
.end method
