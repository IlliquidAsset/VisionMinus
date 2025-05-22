.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$51;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/FishPositionView$OnFishPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showFishPositionView(Lcom/powervision/base/nationmap/model/NationLatLng;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$fishPositionView:Lcom/powervision/gcs/view/ship/FishPositionView;

.field final synthetic val$imgPath:Ljava/lang/String;

.field final synthetic val$latLng:Lcom/powervision/base/nationmap/model/NationLatLng;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/base/nationmap/model/NationLatLng;Lcom/powervision/gcs/view/ship/FishPositionView;Ljava/lang/String;)V
    .locals 0

    .line 6176
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$51;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$51;->val$latLng:Lcom/powervision/base/nationmap/model/NationLatLng;

    iput-object p3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$51;->val$fishPositionView:Lcom/powervision/gcs/view/ship/FishPositionView;

    iput-object p4, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$51;->val$imgPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect()V
    .locals 4

    .line 6179
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$51;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$51;->val$latLng:Lcom/powervision/base/nationmap/model/NationLatLng;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$51;->val$fishPositionView:Lcom/powervision/gcs/view/ship/FishPositionView;

    invoke-virtual {v2}, Lcom/powervision/gcs/view/ship/FishPositionView;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$51;->val$imgPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/base/nationmap/model/NationLatLng;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toFish()V
    .locals 4

    .line 6184
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$51;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$51;->val$latLng:Lcom/powervision/base/nationmap/model/NationLatLng;

    const/16 v2, 0x8c

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7600(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/base/nationmap/model/NationLatLng;IZ)V

    return-void
.end method
