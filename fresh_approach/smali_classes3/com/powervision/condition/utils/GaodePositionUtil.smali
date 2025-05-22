.class public Lcom/powervision/condition/utils/GaodePositionUtil;
.super Ljava/lang/Object;
.source "GaodePositionUtil.java"


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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gcj2Gps84(DD)Lcom/powervision/base/nationmap/model/NationLatLng;
    .locals 1

    .line 36
    new-instance v0, Lcom/powervision/base/nationmap/model/NationLatLng;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/powervision/base/nationmap/model/NationLatLng;-><init>(DD)V

    return-object v0
.end method

.method public static getPositionByOriginalData(F)D
    .locals 5

    .line 115
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p0, Ljava/math/BigDecimal;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    const-wide/high16 v3, 0x401c000000000000L    # 7.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static gps2Gcj02(Landroid/content/Context;DD)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 173
    new-instance p0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object p0
.end method

.method public static gps842Gcj02(Landroid/content/Context;DD)Lcom/powervision/base/nationmap/model/NationLatLng;
    .locals 0

    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Lcom/powervision/condition/utils/GaodePositionUtil;->gps2Gcj02(Landroid/content/Context;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    invoke-static {p0}, Lcom/powervision/condition/utils/ConvertUtils;->convertAmapToNation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object p0

    return-object p0
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

.method public static transform(DD)Lcom/powervision/base/nationmap/model/NationLatLng;
    .locals 18

    const-wide v0, 0x405a400000000000L    # 105.0

    sub-double v0, p2, v0

    const-wide v2, 0x4041800000000000L    # 35.0

    sub-double v2, p0, v2

    .line 78
    invoke-static {v0, v1, v2, v3}, Lcom/powervision/condition/utils/GaodePositionUtil;->transformLat(DD)D

    move-result-wide v4

    .line 79
    invoke-static {v0, v1, v2, v3}, Lcom/powervision/condition/utils/GaodePositionUtil;->transformLon(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v6, p0, v2

    .line 80
    sget-wide v8, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

    mul-double v6, v6, v8

    .line 81
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 82
    sget-wide v10, Lcom/powervision/condition/utils/GaodePositionUtil;->ee:D

    mul-double v10, v10, v8

    mul-double v10, v10, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v10, v8, v10

    .line 83
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double v4, v4, v2

    .line 84
    sget-wide v14, Lcom/powervision/condition/utils/GaodePositionUtil;->a:D

    sget-wide v16, Lcom/powervision/condition/utils/GaodePositionUtil;->ee:D

    sub-double v8, v8, v16

    mul-double v8, v8, v14

    mul-double v10, v10, v12

    div-double/2addr v8, v10

    sget-wide v10, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

    mul-double v8, v8, v10

    div-double/2addr v4, v8

    mul-double v0, v0, v2

    div-double/2addr v14, v12

    .line 85
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v14, v14, v2

    sget-wide v2, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

    mul-double v14, v14, v2

    div-double/2addr v0, v14

    add-double v2, p0, v4

    add-double v0, p2, v0

    .line 88
    new-instance v4, Lcom/powervision/base/nationmap/model/NationLatLng;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/powervision/base/nationmap/model/NationLatLng;-><init>(DD)V

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

    .line 93
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double p0, p0, v8

    .line 94
    sget-wide v8, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

    mul-double p0, p0, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double p0, p0, v8

    sget-wide v10, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

    mul-double v2, v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    .line 95
    sget-wide p0, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

    mul-double p0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v8

    div-double v2, p2, v6

    sget-wide v8, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

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

    .line 96
    sget-wide v2, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

    mul-double p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    mul-double p0, p0, v2

    sget-wide v2, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

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

    .line 102
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4018000000000000L    # 6.0

    mul-double p2, p2, p0

    .line 103
    sget-wide v6, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double p2, p2, v6

    mul-double v8, p0, v4

    sget-wide v10, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr p2, v8

    mul-double p2, p2, v4

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    .line 104
    sget-wide p2, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

    mul-double p2, p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    div-double v6, p0, v8

    sget-wide v10, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

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

    .line 105
    sget-wide v6, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide v6, 0x4062c00000000000L    # 150.0

    mul-double p2, p2, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v6

    sget-wide v6, Lcom/powervision/condition/utils/GaodePositionUtil;->pi:D

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
