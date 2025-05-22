.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/SlideReturnView$SlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showToAddress(Lcom/powervision/base/nationmap/model/NationLatLng;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$is_marker:Z

.field final synthetic val$latLng:Lcom/powervision/base/nationmap/model/NationLatLng;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/base/nationmap/model/NationLatLng;IZ)V
    .locals 0

    .line 5088
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->val$latLng:Lcom/powervision/base/nationmap/model/NationLatLng;

    iput p3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->val$type:I

    iput-boolean p4, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->val$is_marker:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$6800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;Lcom/powervision/base/nationmap/model/NationLatLng;Z)V
    .locals 0

    .line 5088
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->goInterest(Lcom/powervision/base/nationmap/model/NationLatLng;Z)V

    return-void
.end method

.method private goInterest(Lcom/powervision/base/nationmap/model/NationLatLng;Z)V
    .locals 6

    if-nez p2, :cond_0

    .line 5187
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p2, p2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p2}, Lcom/powervision/condition/view/NationMapView;->clearMarker()V

    .line 5188
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, p2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/powervision/base/nationmap/model/NationLatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/powervision/base/nationmap/model/NationLatLng;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/powervision/condition/view/NationMapView;->onPositionHistory(ZDD)V

    .line 5190
    :cond_0
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 5191
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 5192
    iget-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p2, p2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p2, p1}, Lcom/powervision/condition/view/NationMapView;->goInterest(Lcom/powervision/base/nationmap/model/NationLatLng;)V

    .line 5193
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->val$type:I

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)V

    .line 5194
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipRockerRight:Lcom/powervision/gcs/view/ship/ShipRockerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/ShipRockerView;->setVisibility(I)V

    .line 5195
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipRockerLeft:Lcom/powervision/gcs/view/ship/ShipRockerView;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/ShipRockerView;->setVisibility(I)V

    .line 5196
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->val$type:I

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)V

    .line 5197
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)V

    .line 5198
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    return-void
.end method


# virtual methods
.method public cancelReturnSlide()V
    .locals 2

    .line 5091
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/SlideReturnView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->setVisibility(I)V

    return-void
.end method

.method public returnSlide()V
    .locals 5

    .line 5096
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$6700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/SlideReturnView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->setVisibility(I)V

    .line 5097
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 5098
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-boolean v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isShipArm:Z

    if-eqz v0, :cond_0

    .line 5099
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    new-instance v2, Lcom/powervision/gcs/model/ship/ShipWarning;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    sget v4, Lcom/powervision/gcs/R$string;->PVW4_Msg_96:I

    invoke-virtual {v3, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    return-void

    .line 5103
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isAIEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5104
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {v0}, Lcom/powervision/condition/view/NationMapView;->getCurrentPersonLatLng()Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5106
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->val$latLng:Lcom/powervision/base/nationmap/model/NationLatLng;

    invoke-static {v2, v0}, Lcom/powervision/condition/utils/MapUtils;->calculateLineDistance(Lcom/powervision/base/nationmap/model/NationLatLng;Lcom/powervision/base/nationmap/model/NationLatLng;)F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 5108
    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->val$type:I

    const/16 v2, 0x82

    if-ne v0, v2, :cond_1

    .line 5109
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    new-instance v2, Lcom/powervision/gcs/model/ship/ShipWarning;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    sget v4, Lcom/powervision/gcs/R$string;->PVW4_AI_16:I

    invoke-virtual {v3, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    goto :goto_0

    .line 5111
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    new-instance v2, Lcom/powervision/gcs/model/ship/ShipWarning;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    sget v4, Lcom/powervision/gcs/R$string;->PVW4_Map_29:I

    invoke-virtual {v3, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    :goto_0
    return-void

    .line 5118
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3600(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 5180
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->val$latLng:Lcom/powervision/base/nationmap/model/NationLatLng;

    iget-boolean v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->val$is_marker:Z

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->goInterest(Lcom/powervision/base/nationmap/model/NationLatLng;Z)V

    goto :goto_2

    .line 5119
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3000(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/PVW4SailModelManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$44;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->setSailModeChangeListener(Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;)V

    const/4 v0, 0x0

    .line 5178
    invoke-static {v0}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    :cond_5
    :goto_2
    return-void
.end method
