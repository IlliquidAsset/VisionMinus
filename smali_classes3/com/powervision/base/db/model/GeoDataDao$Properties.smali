.class public Lcom/powervision/base/db/model/GeoDataDao$Properties;
.super Ljava/lang/Object;
.source "GeoDataDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/db/model/GeoDataDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final City:Lorg/greenrobot/greendao/Property;

.field public static final Color:Lorg/greenrobot/greendao/Property;

.field public static final Country:Lorg/greenrobot/greendao/Property;

.field public static final Description:Lorg/greenrobot/greendao/Property;

.field public static final Geometry:Lorg/greenrobot/greendao/Property;

.field public static final Height:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final Layer_type:Lorg/greenrobot/greendao/Property;

.field public static final Name:Lorg/greenrobot/greendao/Property;

.field public static final Nofly_level:Lorg/greenrobot/greendao/Property;

.field public static final Operating:Lorg/greenrobot/greendao/Property;

.field public static final Point:Lorg/greenrobot/greendao/Property;

.field public static final Radius:Lorg/greenrobot/greendao/Property;

.field public static final Reserved1:Lorg/greenrobot/greendao/Property;

.field public static final Reserved2:Lorg/greenrobot/greendao/Property;

.field public static final Reserved3:Lorg/greenrobot/greendao/Property;

.field public static final Update_time:Lorg/greenrobot/greendao/Property;

.field public static final Url:Lorg/greenrobot/greendao/Property;

.field public static final Xmax:Lorg/greenrobot/greendao/Property;

.field public static final Xmin:Lorg/greenrobot/greendao/Property;

.field public static final Ymax:Lorg/greenrobot/greendao/Property;

.field public static final Ymin:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 25
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const/4 v1, 0x0

    const-string v3, "id"

    const/4 v4, 0x1

    const-string v5, "id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 26
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x1

    const-string v10, "layer_type"

    const/4 v11, 0x0

    const-string v12, "layer_type"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Layer_type:Lorg/greenrobot/greendao/Property;

    .line 27
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, "city"

    const/4 v5, 0x0

    const-string v6, "city"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->City:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x3

    const-string v10, "update_time"

    const-string v12, "update_time"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Update_time:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Double;

    const/4 v2, 0x4

    const-string v4, "ymax"

    const-string v6, "ymax"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Ymax:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Double;

    const/4 v8, 0x5

    const-string v10, "xmin"

    const-string v12, "xmin"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Xmin:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Double;

    const/4 v2, 0x6

    const-string v4, "ymin"

    const-string v6, "ymin"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Ymin:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Double;

    const/4 v8, 0x7

    const-string v10, "xmax"

    const-string v12, "xmax"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Xmax:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x8

    const-string v4, "point"

    const-string v6, "point"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Point:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x9

    const-string v10, "geometry"

    const-string v12, "geometry"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Geometry:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xa

    const-string v4, "country"

    const-string v6, "country"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Country:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xb

    const-string v10, "description"

    const-string v12, "description"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Description:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Double;

    const/16 v2, 0xc

    const-string v4, "height"

    const-string v6, "height"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Height:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xd

    const-string v10, "color"

    const-string v12, "color"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Color:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Double;

    const/16 v2, 0xe

    const-string v4, "radius"

    const-string v6, "radius"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Radius:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xf

    const-string v10, "url"

    const-string v12, "url"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Url:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/16 v2, 0x10

    const-string v4, "nofly_level"

    const-string v6, "nofly_level"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Nofly_level:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x11

    const-string v10, "name"

    const-string v12, "name"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x12

    const-string v4, "operating"

    const-string v6, "operating"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Operating:Lorg/greenrobot/greendao/Property;

    .line 44
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x13

    const-string v10, "reserved1"

    const-string v12, "reserved1"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Reserved1:Lorg/greenrobot/greendao/Property;

    .line 45
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x14

    const-string v4, "reserved2"

    const-string v6, "reserved2"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Reserved2:Lorg/greenrobot/greendao/Property;

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x15

    const-string v10, "reserved3"

    const-string v12, "reserved3"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/powervision/base/db/model/GeoDataDao$Properties;->Reserved3:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
