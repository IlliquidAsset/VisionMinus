.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getAirDL03Data(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$opereat:Ljava/lang/String;

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5493
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$result:Ljava/lang/String;

    iput-object p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$opereat:Ljava/lang/String;

    iput-object p4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 5496
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$result:Ljava/lang/String;

    const-string v1, "GET_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const/16 v2, 0xa

    const/4 v3, 0x0

    const-string v4, "COUNTRY"

    if-eqz v0, :cond_2

    .line 5497
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$opereat:Ljava/lang/String;

    const-string v5, "SNR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5498
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/AircraftTopView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$value:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setRemoteElectric(I)V

    goto/16 :goto_0

    .line 5499
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$opereat:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5500
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$value:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3002(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5501
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    const/16 v3, 0x9

    if-le v0, v3, :cond_4

    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez v0, :cond_4

    .line 5502
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 5503
    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v3, "AP03_AIRMAP_COUNTRY"

    invoke-virtual {v0, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5504
    invoke-static {v0}, Lcom/powervision/base/utils/LanguageUtils;->returnCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5505
    iget-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 5506
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5507
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5508
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v1, v2, v0, v4}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGetAirDL01Value(ILjava/lang/String;I)V

    goto :goto_0

    .line 5512
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$502(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I

    goto :goto_0

    .line 5516
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$result:Ljava/lang/String;

    const-string v5, "SET_SUCCESS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5517
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$opereat:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5518
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$502(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I

    goto :goto_0

    .line 5520
    :cond_3
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->val$result:Ljava/lang/String;

    const-string v4, "GET_FAILED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5521
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$13900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5522
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0, v2, v1, v3}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGetAirDL01Value(ILjava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method
