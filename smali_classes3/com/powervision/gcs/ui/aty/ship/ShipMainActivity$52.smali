.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$52;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/SonarWindowView$FindFishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->initMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 6545
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$52;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updata(I)V
    .locals 0

    .line 6555
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$52;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/condition/geo/GeoConditionMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6556
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$52;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/condition/geo/GeoConditionMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/condition/geo/GeoConditionMap;->addFish()V

    :cond_0
    return-void
.end method
