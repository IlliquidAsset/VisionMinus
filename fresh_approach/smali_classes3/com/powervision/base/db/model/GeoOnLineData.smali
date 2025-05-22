.class public Lcom/powervision/base/db/model/GeoOnLineData;
.super Ljava/lang/Object;
.source "GeoOnLineData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/db/model/GeoOnLineData$PointBean;,
        Lcom/powervision/base/db/model/GeoOnLineData$GeometryBean;
    }
.end annotation


# instance fields
.field private _id:Ljava/lang/Long;

.field private city:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private geometry:Ljava/lang/Object;

.field private height:Ljava/lang/Double;

.field private layer_type:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nofly_level:Ljava/lang/Integer;

.field private operating:Ljava/lang/String;

.field private point:Ljava/lang/Object;

.field private radius:Ljava/lang/Double;

.field private update_time:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private xmax:Ljava/lang/Double;

.field private xmin:Ljava/lang/Double;

.field private ymax:Ljava/lang/Double;

.field private ymin:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGeometry()Ljava/lang/Object;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->geometry:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Double;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->height:Ljava/lang/Double;

    return-object v0
.end method

.method public getLayer_type()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->layer_type:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNofly_level()Ljava/lang/Integer;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->nofly_level:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOperating()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->operating:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Ljava/lang/Object;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->point:Ljava/lang/Object;

    return-object v0
.end method

.method public getRadius()Ljava/lang/Double;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->radius:Ljava/lang/Double;

    return-object v0
.end method

.method public getUpdate_time()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->update_time:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getXmax()Ljava/lang/Double;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->xmax:Ljava/lang/Double;

    return-object v0
.end method

.method public getXmin()Ljava/lang/Double;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->xmin:Ljava/lang/Double;

    return-object v0
.end method

.method public getYmax()Ljava/lang/Double;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->ymax:Ljava/lang/Double;

    return-object v0
.end method

.method public getYmin()Ljava/lang/Double;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->ymin:Ljava/lang/Double;

    return-object v0
.end method

.method public get_id()Ljava/lang/Long;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoOnLineData;->_id:Ljava/lang/Long;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->city:Ljava/lang/String;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->color:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->country:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->description:Ljava/lang/String;

    return-void
.end method

.method public setGeometry(Ljava/lang/Object;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->geometry:Ljava/lang/Object;

    return-void
.end method

.method public setHeight(Ljava/lang/Double;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->height:Ljava/lang/Double;

    return-void
.end method

.method public setLayer_type(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->layer_type:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->name:Ljava/lang/String;

    return-void
.end method

.method public setNofly_level(Ljava/lang/Integer;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->nofly_level:Ljava/lang/Integer;

    return-void
.end method

.method public setOperating(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->operating:Ljava/lang/String;

    return-void
.end method

.method public setPoint(Ljava/lang/Object;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->point:Ljava/lang/Object;

    return-void
.end method

.method public setRadius(Ljava/lang/Double;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->radius:Ljava/lang/Double;

    return-void
.end method

.method public setUpdate_time(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->update_time:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->url:Ljava/lang/String;

    return-void
.end method

.method public setXmax(Ljava/lang/Double;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->xmax:Ljava/lang/Double;

    return-void
.end method

.method public setXmin(Ljava/lang/Double;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->xmin:Ljava/lang/Double;

    return-void
.end method

.method public setYmax(Ljava/lang/Double;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->ymax:Ljava/lang/Double;

    return-void
.end method

.method public setYmin(Ljava/lang/Double;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->ymin:Ljava/lang/Double;

    return-void
.end method

.method public set_id(Ljava/lang/Long;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoOnLineData;->_id:Ljava/lang/Long;

    return-void
.end method
