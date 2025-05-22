.class Lcn/powervision/flightlog/activity/FlightLogActivity$2;
.super Ljava/lang/Object;
.source "FlightLogActivity.java"

# interfaces
.implements Lcn/powervision/flightlog/adapter/LogListAdapter$OnDeleteClickLister;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/flightlog/activity/FlightLogActivity;->initBottomViewData(I)V
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

    .line 226
    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClick(Landroid/view/View;I)V
    .locals 5

    .line 229
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$100(Lcn/powervision/flightlog/activity/FlightLogActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 230
    invoke-virtual {p1}, Lcom/powervision/base/model/flightlog/FlightLogData;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 231
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {v1, p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$200(Lcn/powervision/flightlog/activity/FlightLogActivity;Ljava/lang/String;)Z

    move-result v1

    .line 232
    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {v2}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$300(Lcn/powervision/flightlog/activity/FlightLogActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u5220\u9664 \u6587\u4ef6\u540d\u79f0 fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " removeFile ="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 234
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$100(Lcn/powervision/flightlog/activity/FlightLogActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 235
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$400(Lcn/powervision/flightlog/activity/FlightLogActivity;)Lcn/powervision/flightlog/adapter/LogListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/flightlog/adapter/LogListAdapter;->notifyDataSetChanged()V

    .line 236
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {p1}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$500(Lcn/powervision/flightlog/activity/FlightLogActivity;)Lcn/powervision/flightlog/customViews/SkidRemoveView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->closeMenu()V

    .line 237
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-static {p1, v0}, Lcn/powervision/flightlog/activity/FlightLogActivity;->access$602(Lcn/powervision/flightlog/activity/FlightLogActivity;Z)Z

    :cond_0
    return-void
.end method
