.class Lcom/powervision/map/manager/MapSwitchManager$2$1;
.super Ljava/lang/Object;
.source "MapSwitchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/map/manager/MapSwitchManager$2;->getGpsLocation(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/map/manager/MapSwitchManager$2;

.field final synthetic val$lat:I

.field final synthetic val$lon:I


# direct methods
.method constructor <init>(Lcom/powervision/map/manager/MapSwitchManager$2;II)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager$2$1;->this$1:Lcom/powervision/map/manager/MapSwitchManager$2;

    iput p2, p0, Lcom/powervision/map/manager/MapSwitchManager$2$1;->val$lat:I

    iput p3, p0, Lcom/powervision/map/manager/MapSwitchManager$2$1;->val$lon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$2$1;->this$1:Lcom/powervision/map/manager/MapSwitchManager$2;

    iget-object v0, v0, Lcom/powervision/map/manager/MapSwitchManager$2;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-static {v0}, Lcom/powervision/map/manager/MapSwitchManager;->access$300(Lcom/powervision/map/manager/MapSwitchManager;)Lcom/powervision/airmap/mapview/AirMapView;

    move-result-object v0

    iget v1, p0, Lcom/powervision/map/manager/MapSwitchManager$2$1;->val$lat:I

    iget v2, p0, Lcom/powervision/map/manager/MapSwitchManager$2$1;->val$lon:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/airmap/mapview/AirMapView;->drawAirCraftMarkerAndLines(II)V

    .line 208
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$2$1;->this$1:Lcom/powervision/map/manager/MapSwitchManager$2;

    iget-object v0, v0, Lcom/powervision/map/manager/MapSwitchManager$2;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-static {v0}, Lcom/powervision/map/manager/MapSwitchManager;->access$300(Lcom/powervision/map/manager/MapSwitchManager;)Lcom/powervision/airmap/mapview/AirMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/airmap/mapview/AirMapView;->checkAndDrawDirectLine()V

    return-void
.end method
