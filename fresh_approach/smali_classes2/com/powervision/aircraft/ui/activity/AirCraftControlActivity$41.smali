.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/camera/utils/RxCountDown$Watcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onFollowGuideNext(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$localmode:I

.field final synthetic val$observer:Landroidx/lifecycle/Observer;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroidx/lifecycle/Observer;I)V
    .locals 0

    .line 4587
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;->val$observer:Landroidx/lifecycle/Observer;

    iput p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;->val$localmode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 3

    .line 4602
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FOLLOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4603
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_162:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    .line 4604
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-string v2, "air_main_mode"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;->val$observer:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 4605
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;->val$localmode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4606
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    goto :goto_0

    .line 4608
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public next()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "helin"

    const-string v1, "start: ------"

    .line 4590
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$11400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setFollowMode()V

    .line 4592
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-string v2, "air_main_mode"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;->val$observer:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
