.class public abstract Lcom/powervision/opensource/geo/CenterPoint;
.super Ljava/lang/Object;
.source "CenterPoint.java"


# instance fields
.field public centerL:Lcom/powervision/opensource/geo/PointGps;

.field public cl:Lcom/powervision/opensource/geo/PointGps;

.field public endTime:J

.field public firstLat:D

.field public firstLon:D

.field public id:J

.field public isBig:Z

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/powervision/opensource/geo/CenterPoint;->startTime:J

    .line 17
    iput-wide v0, p0, Lcom/powervision/opensource/geo/CenterPoint;->endTime:J

    .line 18
    iput-wide v0, p0, Lcom/powervision/opensource/geo/CenterPoint;->id:J

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/powervision/opensource/geo/CenterPoint;->isBig:Z

    return-void
.end method


# virtual methods
.method public abstract changeTheCenter(DD)V
.end method

.method public abstract getMarker()Ljava/lang/Object;
.end method

.method public abstract removeThisCircle()V
.end method

.method public abstract setMarker(Ljava/lang/Object;)V
.end method
