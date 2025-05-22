.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getDL01Date(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$opereat:I

.field final synthetic val$result:I

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;IILjava/lang/String;)V
    .locals 0

    .line 5533
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->val$result:I

    iput p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->val$opereat:I

    iput-object p4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 5536
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->val$result:I

    const-string v1, ""

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-nez v0, :cond_1

    .line 5537
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->val$opereat:I

    if-ne v0, v3, :cond_3

    .line 5538
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    float-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v4, v6

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    const/16 v4, 0x9

    if-le v0, v4, :cond_3

    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez v0, :cond_3

    .line 5539
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 5540
    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v4, "AP03_AIRMAP_COUNTRY"

    invoke-virtual {v0, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5541
    invoke-static {v0}, Lcom/powervision/base/utils/LanguageUtils;->returnCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5542
    iget-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5543
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5544
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5545
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v1, v3, v0, v2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGetDL01Value(ILjava/lang/String;I)V

    goto :goto_0

    .line 5549
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$602(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 5554
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->val$opereat:I

    if-ne v0, v3, :cond_3

    .line 5555
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$602(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 5558
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5559
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGetDL01Value(ILjava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method
