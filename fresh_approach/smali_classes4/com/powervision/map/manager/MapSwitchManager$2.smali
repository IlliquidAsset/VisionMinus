.class Lcom/powervision/map/manager/MapSwitchManager$2;
.super Ljava/lang/Object;
.source "MapSwitchManager.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/map/manager/MapSwitchManager;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/map/manager/MapSwitchManager;


# direct methods
.method constructor <init>(Lcom/powervision/map/manager/MapSwitchManager;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager$2;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGpsLocation(III)V
    .locals 2

    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    return-void

    :cond_0
    int-to-double v0, p1

    .line 186
    invoke-static {v0, v1}, Lcom/powervision/map/utils/PositionUtil;->getPositionByOriginalData(D)D

    int-to-double v0, p2

    .line 187
    invoke-static {v0, v1}, Lcom/powervision/map/utils/PositionUtil;->getPositionByOriginalData(D)D

    .line 191
    iget-object p3, p0, Lcom/powervision/map/manager/MapSwitchManager$2;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-static {p3}, Lcom/powervision/map/manager/MapSwitchManager;->access$200(Lcom/powervision/map/manager/MapSwitchManager;)Lcom/powervision/map/callback/AircraftLocationChangeListener;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 192
    iget-object p3, p0, Lcom/powervision/map/manager/MapSwitchManager$2;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-static {p3}, Lcom/powervision/map/manager/MapSwitchManager;->access$200(Lcom/powervision/map/manager/MapSwitchManager;)Lcom/powervision/map/callback/AircraftLocationChangeListener;

    move-result-object p3

    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$2;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-static {v0}, Lcom/powervision/map/manager/MapSwitchManager;->access$300(Lcom/powervision/map/manager/MapSwitchManager;)Lcom/powervision/airmap/mapview/AirMapView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/powervision/airmap/mapview/AirMapView;->inGeoArea(II)Z

    move-result v0

    invoke-interface {p3, p1, p2, v0}, Lcom/powervision/map/callback/AircraftLocationChangeListener;->onAircraftLocationChange(IIZ)V

    .line 201
    :cond_1
    iget-object p3, p0, Lcom/powervision/map/manager/MapSwitchManager$2;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    iget-boolean p3, p3, Lcom/powervision/map/manager/MapSwitchManager;->noFlightLog:Z

    if-nez p3, :cond_2

    return-void

    .line 204
    :cond_2
    iget-object p3, p0, Lcom/powervision/map/manager/MapSwitchManager$2;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-static {p3}, Lcom/powervision/map/manager/MapSwitchManager;->access$300(Lcom/powervision/map/manager/MapSwitchManager;)Lcom/powervision/airmap/mapview/AirMapView;

    move-result-object p3

    new-instance v0, Lcom/powervision/map/manager/MapSwitchManager$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/map/manager/MapSwitchManager$2$1;-><init>(Lcom/powervision/map/manager/MapSwitchManager$2;II)V

    invoke-virtual {p3, v0}, Lcom/powervision/airmap/mapview/AirMapView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
