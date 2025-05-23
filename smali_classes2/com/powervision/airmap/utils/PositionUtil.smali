.class public Lcom/powervision/airmap/utils/PositionUtil;
.super Ljava/lang/Object;
.source "PositionUtil.java"


# static fields
.field public static final BAIDU_LBS_TYPE:Ljava/lang/String; = "bd09ll"

.field public static a:D = 6378245.0

.field public static ee:D = 0.006693421622965943

.field public static pi:D = 3.141592653589793


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bd09_To_Gcj02(DD)Lcom/powervision/base/model/LatLong;
    .locals 6

    const-wide v0, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double/2addr p2, v0

    const-wide v0, 0x3f789374bc6a7efaL    # 0.006

    sub-double/2addr p0, v0

    mul-double v0, p2, p2

    mul-double v2, p0, p0

    add-double/2addr v0, v2

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-wide v2, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v2, v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    .line 86
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    sget-wide v2, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double p2, p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double p2, p2, v2

    sub-double/2addr p0, p2

    .line 87
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double p2, p2, v0

    .line 88
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v0, v0, p0

    .line 89
    new-instance p0, Lcom/powervision/base/model/LatLong;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/powervision/base/model/LatLong;-><init>(DD)V

    return-object p0
.end method

.method public static calculateDistance(IIIIII)D
    .locals 4

    int-to-double v0, p0

    .line 225
    invoke-static {v0, v1}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v0

    int-to-double p0, p1

    .line 226
    invoke-static {p0, p1}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide p0

    int-to-double v2, p3

    .line 227
    invoke-static {v2, v3}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v2

    int-to-double p3, p4

    .line 228
    invoke-static {p3, p4}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide p3

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 229
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr p0, p3

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    sub-int/2addr p2, p5

    int-to-double p0, p2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static gcj02_To_Bd09(DD)Lcom/powervision/base/model/LatLong;
    .locals 6

    mul-double v0, p2, p2

    mul-double v2, p0, p0

    add-double/2addr v0, v2

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-wide v2, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v2, v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 73
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    sget-wide v2, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double p2, p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double p2, p2, v2

    add-double/2addr p0, p2

    .line 74
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double p2, p2, v0

    const-wide v2, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr p2, v2

    .line 75
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v0, v0, p0

    const-wide p0, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v0, p0

    .line 76
    new-instance p0, Lcom/powervision/base/model/LatLong;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/powervision/base/model/LatLong;-><init>(DD)V

    return-object p0
.end method

.method public static gcj_To_Gps84(DD)Lcom/powervision/base/model/LatLong;
    .locals 5

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/powervision/airmap/utils/PositionUtil;->transform(DD)Lcom/powervision/base/model/LatLong;

    move-result-object v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double p2, p2, v1

    .line 48
    invoke-virtual {v0}, Lcom/powervision/base/model/LatLong;->getLongitude()D

    move-result-wide v3

    sub-double/2addr p2, v3

    mul-double p0, p0, v1

    .line 49
    invoke-virtual {v0}, Lcom/powervision/base/model/LatLong;->getLatitude()D

    move-result-wide v0

    sub-double/2addr p0, v0

    .line 50
    new-instance v0, Lcom/powervision/base/model/LatLong;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/powervision/base/model/LatLong;-><init>(DD)V

    return-object v0
.end method

.method public static getDistance(DDDD)D
    .locals 4

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p2, p2, v0

    mul-double p6, p6, v0

    mul-double p0, p0, v0

    mul-double p4, p4, v0

    .line 190
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double p0, p0, p4

    sub-double/2addr p6, p2

    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double p0, p0, p2

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    const-wide p2, 0x40b8e30000000000L    # 6371.0

    mul-double p0, p0, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, p2

    return-wide p0
.end method

.method public static getDistanceByOriginData(IIII)D
    .locals 10

    int-to-double v0, p0

    .line 205
    invoke-static {v0, v1}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v2

    int-to-double p0, p1

    .line 206
    invoke-static {p0, p1}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v4

    int-to-double p0, p2

    .line 207
    invoke-static {p0, p1}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v6

    int-to-double p0, p3

    .line 208
    invoke-static {p0, p1}, Lcom/powervision/airmap/utils/PositionUtil;->getPositionByOriginalData(D)D

    move-result-wide v8

    .line 210
    invoke-static/range {v2 .. v9}, Lcom/powervision/airmap/utils/PositionUtil;->getDistance(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getPositionByOriginalData(D)D
    .locals 4

    .line 172
    # Replaced BigDecimal operations with double division for performance.
    # Original logic: return p0 / Math.pow(10.0, 7.0);

    const-wide v0, 0x416312d000000000L    # 1.0E7

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static gps84_To_Gcj02(DD)Lcom/powervision/base/model/LatLong;
    .locals 22

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    .line 26
    invoke-static/range {p0 .. p3}, Lcom/powervision/airmap/utils/PositionUtil;->outOfChina(DD)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    new-instance v4, Lcom/powervision/base/model/LatLong;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/powervision/base/model/LatLong;-><init>(DD)V

    return-object v4

    :cond_0
    const-wide v4, 0x405a400000000000L    # 105.0

    sub-double v4, v2, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    sub-double v6, v0, v6

    .line 29
    invoke-static {v4, v5, v6, v7}, Lcom/powervision/airmap/utils/PositionUtil;->transformLat(DD)D

    move-result-wide v8

    .line 30
    invoke-static {v4, v5, v6, v7}, Lcom/powervision/airmap/utils/PositionUtil;->transformLon(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v10, v0, v6

    .line 31
    sget-wide v12, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v10, v10, v12

    .line 32
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 33
    sget-wide v14, Lcom/powervision/airmap/utils/PositionUtil;->ee:D

    mul-double v14, v14, v12

    mul-double v14, v14, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v14, v12, v14

    .line 34
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    mul-double v8, v8, v6

    .line 35
    sget-wide v18, Lcom/powervision/airmap/utils/PositionUtil;->a:D

    sget-wide v20, Lcom/powervision/airmap/utils/PositionUtil;->ee:D

    sub-double v12, v12, v20

    mul-double v12, v12, v18

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    sget-wide v14, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v12, v12, v14

    div-double/2addr v8, v12

    mul-double v4, v4, v6

    div-double v18, v18, v16

    .line 36
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v18, v18, v6

    sget-wide v6, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v18, v18, v6

    div-double v4, v4, v18

    add-double/2addr v0, v8

    add-double/2addr v2, v4

    .line 39
    new-instance v4, Lcom/powervision/base/model/LatLong;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/powervision/base/model/LatLong;-><init>(DD)V

    return-object v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 155
    new-instance p0, Lcom/powervision/base/model/LatLong;

    const-wide v0, 0x404bb6a487336588L    # 55.426896

    const-wide v2, 0x4042bf81adea8976L    # 37.496145

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/powervision/base/model/LatLong;-><init>(DD)V

    .line 156
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/powervision/base/model/LatLong;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/powervision/base/model/LatLong;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/powervision/airmap/utils/PositionUtil;->gps84_To_Gcj02(DD)Lcom/powervision/base/model/LatLong;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lcom/powervision/base/model/LatLong;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/powervision/base/model/LatLong;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/powervision/airmap/utils/PositionUtil;->gcj02_To_Bd09(DD)Lcom/powervision/base/model/LatLong;

    move-result-object p0

    .line 162
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bd  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/powervision/base/model/LatLong;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/powervision/base/model/LatLong;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/powervision/airmap/utils/PositionUtil;->bd09_To_Gcj02(DD)Lcom/powervision/base/model/LatLong;

    move-result-object p0

    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gcj :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static outOfChina(DD)Z
    .locals 4

    const/4 v0, 0x1

    const-wide v1, 0x4052004189374bc7L    # 72.004

    cmpg-double v3, p2, v1

    if-ltz v3, :cond_2

    const-wide v1, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double v3, p2, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide p2, 0x3fea89a027525461L    # 0.8293

    cmpg-double v1, p0, p2

    if-ltz v1, :cond_2

    const-wide p2, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double v1, p0, p2

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static transform(DD)Lcom/powervision/base/model/LatLong;
    .locals 22

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    .line 118
    invoke-static/range {p0 .. p3}, Lcom/powervision/airmap/utils/PositionUtil;->outOfChina(DD)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    new-instance v4, Lcom/powervision/base/model/LatLong;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/powervision/base/model/LatLong;-><init>(DD)V

    return-object v4

    :cond_0
    const-wide v4, 0x405a400000000000L    # 105.0

    sub-double v4, v2, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    sub-double v6, v0, v6

    .line 121
    invoke-static {v4, v5, v6, v7}, Lcom/powervision/airmap/utils/PositionUtil;->transformLat(DD)D

    move-result-wide v8

    .line 122
    invoke-static {v4, v5, v6, v7}, Lcom/powervision/airmap/utils/PositionUtil;->transformLon(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v10, v0, v6

    .line 123
    sget-wide v12, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v10, v10, v12

    .line 124
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 125
    sget-wide v14, Lcom/powervision/airmap/utils/PositionUtil;->ee:D

    mul-double v14, v14, v12

    mul-double v14, v14, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v14, v12, v14

    .line 126
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    mul-double v8, v8, v6

    .line 127
    sget-wide v18, Lcom/powervision/airmap/utils/PositionUtil;->a:D

    sget-wide v20, Lcom/powervision/airmap/utils/PositionUtil;->ee:D

    sub-double v12, v12, v20

    mul-double v12, v12, v18

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    sget-wide v14, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v12, v12, v14

    div-double/2addr v8, v12

    mul-double v4, v4, v6

    div-double v18, v18, v16

    .line 128
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v18, v18, v6

    sget-wide v6, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v18, v18, v6

    div-double v4, v4, v18

    add-double/2addr v0, v8

    add-double/2addr v2, v4

    .line 131
    new-instance v4, Lcom/powervision/base/model/LatLong;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/powervision/base/model/LatLong;-><init>(DD)V

    return-object v4
.end method

.method public static transformLat(DD)D
    .locals 12

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p0, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p2, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p2, v8

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double v10, v10, p0

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    .line 136
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double p0, p0, v8

    .line 137
    sget-wide v8, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double p0, p0, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double p0, p0, v8

    sget-wide v10, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v2, v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    .line 138
    sget-wide p0, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double p0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v8

    div-double v2, p2, v6

    sget-wide v8, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    div-double p0, p2, p0

    .line 139
    sget-wide v2, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    mul-double p0, p0, v2

    sget-wide v2, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double p2, p2, v2

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    mul-double p2, p2, v2

    add-double/2addr p0, p2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    return-wide v4
.end method

.method public static transformLon(DD)D
    .locals 12

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p2, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p0, v6

    mul-double v10, v8, p0

    add-double/2addr v2, v10

    mul-double v8, v8, p2

    add-double/2addr v2, v8

    .line 145
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4018000000000000L    # 6.0

    mul-double p2, p2, p0

    .line 146
    sget-wide v6, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double p2, p2, v6

    mul-double v8, p0, v4

    sget-wide v10, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr p2, v8

    mul-double p2, p2, v4

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    .line 147
    sget-wide p2, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double p2, p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    div-double v6, p0, v8

    sget-wide v10, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    mul-double v6, v6, v10

    add-double/2addr p2, v6

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4028000000000000L    # 12.0

    div-double p2, p0, p2

    .line 148
    sget-wide v6, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide v6, 0x4062c00000000000L    # 150.0

    mul-double p2, p2, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v6

    sget-wide v6, Lcom/powervision/airmap/utils/PositionUtil;->pi:D

    mul-double p0, p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    add-double/2addr p2, p0

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    return-wide v2
.end method
