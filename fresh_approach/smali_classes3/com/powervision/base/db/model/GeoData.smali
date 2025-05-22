.class public Lcom/powervision/base/db/model/GeoData;
.super Ljava/lang/Object;
.source "GeoData.java"


# instance fields
.field public city:Ljava/lang/String;

.field public color:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public geometry:Ljava/lang/String;

.field public height:Ljava/lang/Double;

.field public id:Ljava/lang/Long;

.field public layer_type:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nofly_level:Ljava/lang/Integer;

.field public operating:Ljava/lang/String;

.field public point:Ljava/lang/String;

.field public radius:Ljava/lang/Double;

.field public reserved1:Ljava/lang/String;

.field public reserved2:Ljava/lang/String;

.field public reserved3:Ljava/lang/String;

.field public update_time:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public xmax:Ljava/lang/Double;

.field public xmin:Ljava/lang/Double;

.field public ymax:Ljava/lang/Double;

.field public ymin:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 66
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->id:Ljava/lang/Long;

    move-object v1, p2

    .line 67
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->layer_type:Ljava/lang/String;

    move-object v1, p3

    .line 68
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->city:Ljava/lang/String;

    move-object v1, p4

    .line 69
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->update_time:Ljava/lang/String;

    move-object v1, p5

    .line 70
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->ymax:Ljava/lang/Double;

    move-object v1, p6

    .line 71
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->xmin:Ljava/lang/Double;

    move-object v1, p7

    .line 72
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->ymin:Ljava/lang/Double;

    move-object v1, p8

    .line 73
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->xmax:Ljava/lang/Double;

    move-object v1, p9

    .line 74
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->point:Ljava/lang/String;

    move-object v1, p10

    .line 75
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->geometry:Ljava/lang/String;

    move-object v1, p11

    .line 76
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->country:Ljava/lang/String;

    move-object v1, p12

    .line 77
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->description:Ljava/lang/String;

    move-object v1, p13

    .line 78
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->height:Ljava/lang/Double;

    move-object/from16 v1, p14

    .line 79
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->color:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 80
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->radius:Ljava/lang/Double;

    move-object/from16 v1, p16

    .line 81
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->url:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 82
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->nofly_level:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 83
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->name:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 84
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->operating:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 85
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->reserved1:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 86
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->reserved2:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 87
    iput-object v1, v0, Lcom/powervision/base/db/model/GeoData;->reserved3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGeometry()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->geometry:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Double;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->height:Ljava/lang/Double;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLayer_type()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->layer_type:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNofly_level()Ljava/lang/Integer;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->nofly_level:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOperating()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->operating:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->point:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()Ljava/lang/Double;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->radius:Ljava/lang/Double;

    return-object v0
.end method

.method public getReserved1()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->reserved1:Ljava/lang/String;

    return-object v0
.end method

.method public getReserved2()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->reserved2:Ljava/lang/String;

    return-object v0
.end method

.method public getReserved3()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->reserved3:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_time()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->update_time:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getXmax()Ljava/lang/Double;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->xmax:Ljava/lang/Double;

    return-object v0
.end method

.method public getXmin()Ljava/lang/Double;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->xmin:Ljava/lang/Double;

    return-object v0
.end method

.method public getYmax()Ljava/lang/Double;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->ymax:Ljava/lang/Double;

    return-object v0
.end method

.method public getYmin()Ljava/lang/Double;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/powervision/base/db/model/GeoData;->ymin:Ljava/lang/Double;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->city:Ljava/lang/String;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->color:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->country:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->description:Ljava/lang/String;

    return-void
.end method

.method public setGeometry(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->geometry:Ljava/lang/String;

    return-void
.end method

.method public setHeight(Ljava/lang/Double;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->height:Ljava/lang/Double;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLayer_type(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->layer_type:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->name:Ljava/lang/String;

    return-void
.end method

.method public setNofly_level(Ljava/lang/Integer;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->nofly_level:Ljava/lang/Integer;

    return-void
.end method

.method public setOperating(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->operating:Ljava/lang/String;

    return-void
.end method

.method public setPoint(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->point:Ljava/lang/String;

    return-void
.end method

.method public setRadius(Ljava/lang/Double;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->radius:Ljava/lang/Double;

    return-void
.end method

.method public setReserved1(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->reserved1:Ljava/lang/String;

    return-void
.end method

.method public setReserved2(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->reserved2:Ljava/lang/String;

    return-void
.end method

.method public setReserved3(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->reserved3:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_time(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->update_time:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->url:Ljava/lang/String;

    return-void
.end method

.method public setXmax(Ljava/lang/Double;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->xmax:Ljava/lang/Double;

    return-void
.end method

.method public setXmin(Ljava/lang/Double;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->xmin:Ljava/lang/Double;

    return-void
.end method

.method public setYmax(Ljava/lang/Double;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->ymax:Ljava/lang/Double;

    return-void
.end method

.method public setYmin(Ljava/lang/Double;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/powervision/base/db/model/GeoData;->ymin:Ljava/lang/Double;

    return-void
.end method
