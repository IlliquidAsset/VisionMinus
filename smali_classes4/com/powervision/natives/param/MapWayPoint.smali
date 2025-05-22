.class public Lcom/powervision/natives/param/MapWayPoint;
.super Ljava/lang/Object;
.source "MapWayPoint.java"


# instance fields
.field _turnaroundDist:D

.field gridAngle:D

.field gridMode:B

.field gridRefly:Z

.field gridSpacing:D

.field gridTriggerCamera:Z

.field gridTriggerCameraDist:D

.field hoverAndCaptureDelaySeconds:D

.field hoverAndCaptureEnabled:Z

.field pointList:[Lcom/powervision/natives/model/WayPoint;

.field wayPointGPS:Lcom/powervision/natives/model/WayPoint;


# direct methods
.method public constructor <init>([Lcom/powervision/natives/model/WayPoint;Lcom/powervision/natives/model/WayPoint;DZDDZDDBZ)V
    .locals 3

    move-object v0, p0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 24
    iput-object v1, v0, Lcom/powervision/natives/param/MapWayPoint;->pointList:[Lcom/powervision/natives/model/WayPoint;

    move-object v1, p2

    .line 25
    iput-object v1, v0, Lcom/powervision/natives/param/MapWayPoint;->wayPointGPS:Lcom/powervision/natives/model/WayPoint;

    move-wide v1, p3

    .line 26
    iput-wide v1, v0, Lcom/powervision/natives/param/MapWayPoint;->gridSpacing:D

    move v1, p5

    .line 27
    iput-boolean v1, v0, Lcom/powervision/natives/param/MapWayPoint;->hoverAndCaptureEnabled:Z

    move-wide v1, p6

    .line 28
    iput-wide v1, v0, Lcom/powervision/natives/param/MapWayPoint;->hoverAndCaptureDelaySeconds:D

    move-wide v1, p8

    .line 29
    iput-wide v1, v0, Lcom/powervision/natives/param/MapWayPoint;->gridAngle:D

    move v1, p10

    .line 30
    iput-boolean v1, v0, Lcom/powervision/natives/param/MapWayPoint;->gridTriggerCamera:Z

    move-wide v1, p11

    .line 31
    iput-wide v1, v0, Lcom/powervision/natives/param/MapWayPoint;->gridTriggerCameraDist:D

    move-wide/from16 v1, p13

    .line 32
    iput-wide v1, v0, Lcom/powervision/natives/param/MapWayPoint;->_turnaroundDist:D

    move/from16 v1, p15

    .line 33
    iput-byte v1, v0, Lcom/powervision/natives/param/MapWayPoint;->gridMode:B

    move/from16 v1, p16

    .line 34
    iput-boolean v1, v0, Lcom/powervision/natives/param/MapWayPoint;->gridRefly:Z

    return-void
.end method
