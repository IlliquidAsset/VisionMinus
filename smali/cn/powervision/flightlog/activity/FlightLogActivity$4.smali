.class Lcn/powervision/flightlog/activity/FlightLogActivity$4;
.super Lio/reactivex/observers/DisposableObserver;
.source "FlightLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/flightlog/activity/FlightLogActivity;->getAllCitiesName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/activity/FlightLogActivity;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$4;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$4;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$700(Lcn/powervision/flightlog/activity/FlightLogActivity;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 318
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/activity/FlightLogActivity$4;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
