.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->updateReturnPoint(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$frame:I

.field final synthetic val$lat:I

.field final synthetic val$lon:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;III)V
    .locals 0

    .line 5568
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->val$lat:I

    iput p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->val$lon:I

    iput p4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->val$frame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 5571
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/map/manager/MapSwitchManager;

    move-result-object v0

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->val$lat:I

    iget v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->val$lon:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/map/manager/MapSwitchManager;->addReturnPoint(II)V

    .line 5572
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_71:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 5573
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    .line 5574
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->val$frame:I

    if-nez v0, :cond_1

    .line 5575
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getUserLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    .line 5576
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/FlightLogUtil;->getUserLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5584
    :cond_0
    new-instance v2, Lcom/powervision/base/model/LatLong;

    float-to-double v3, v0

    float-to-double v0, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/powervision/base/model/LatLong;-><init>(DD)V

    .line 5586
    invoke-virtual {v2}, Lcom/powervision/base/model/LatLong;->getLatitude()D

    move-result-wide v0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const-wide/high16 v5, 0x401c000000000000L    # 7.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v0, v0, v7

    .line 5587
    invoke-virtual {v2}, Lcom/powervision/base/model/LatLong;->getLongitude()D

    move-result-wide v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v7, v7, v2

    .line 5588
    iget v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->val$lat:I

    iget v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;->val$lon:I

    double-to-int v0, v0

    double-to-int v1, v7

    invoke-static {v2, v3, v0, v1}, Lcom/powervision/airmap/utils/PositionUtil;->getDistanceByOriginData(IIII)D

    nop

    :cond_1
    :goto_0
    return-void
.end method
