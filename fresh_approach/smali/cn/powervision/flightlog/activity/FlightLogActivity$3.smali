.class Lcn/powervision/flightlog/activity/FlightLogActivity$3;
.super Ljava/lang/Object;
.source "FlightLogActivity.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


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
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

.field final synthetic val$logDatalist:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/activity/FlightLogActivity;Ljava/util/List;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$3;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    iput-object p2, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$3;->val$logDatalist:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 313
    invoke-static {}, Lcom/powervision/FlightLogCityUtil;->getInstance()Lcom/powervision/FlightLogCityUtil;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$3;->val$logDatalist:Ljava/util/List;

    .line 314
    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object v2

    iget-object v3, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$3;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    .line 313
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/powervision/FlightLogCityUtil;->getLogCityName(Ljava/util/List;Lio/reactivex/ObservableEmitter;Lcom/powervision/base/model/flightlog/FlightLogManager;Landroid/content/Context;)V

    return-void
.end method
