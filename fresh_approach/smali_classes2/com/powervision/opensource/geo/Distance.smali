.class public Lcom/powervision/opensource/geo/Distance;
.super Ljava/lang/Object;
.source "Distance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mathDistence(Lcom/powervision/opensource/geo/PointGps;Lcom/powervision/opensource/geo/PointGps;)F
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 15
    iget-wide v2, v0, Lcom/powervision/opensource/geo/PointGps;->y:D

    .line 16
    iget-wide v4, v0, Lcom/powervision/opensource/geo/PointGps;->x:D

    .line 17
    iget-wide v6, v1, Lcom/powervision/opensource/geo/PointGps;->y:D

    .line 18
    iget-wide v0, v1, Lcom/powervision/opensource/geo/PointGps;->x:D

    const-wide v8, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double v2, v2, v8

    mul-double v4, v4, v8

    mul-double v6, v6, v8

    mul-double v0, v0, v8

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 27
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 29
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    move-wide/from16 p0, v14

    const/4 v14, 0x3

    new-array v15, v14, [D

    new-array v14, v14, [D

    mul-double v2, v2, v4

    const/16 v16, 0x0

    aput-wide v2, v15, v16

    mul-double v4, v4, v8

    const/4 v2, 0x1

    aput-wide v4, v15, v2

    const/4 v3, 0x2

    aput-wide v10, v15, v3

    mul-double v6, v6, v0

    aput-wide v6, v14, v16

    mul-double v0, v0, v12

    aput-wide v0, v14, v2

    aput-wide p0, v14, v3

    .line 39
    aget-wide v0, v15, v16

    aget-wide v4, v14, v16

    sub-double/2addr v0, v4

    aget-wide v4, v15, v16

    aget-wide v6, v14, v16

    sub-double/2addr v4, v6

    mul-double v0, v0, v4

    aget-wide v4, v15, v2

    aget-wide v6, v14, v2

    sub-double/2addr v4, v6

    aget-wide v6, v15, v2

    aget-wide v8, v14, v2

    sub-double/2addr v6, v8

    mul-double v4, v4, v6

    add-double/2addr v0, v4

    aget-wide v4, v15, v3

    aget-wide v6, v14, v3

    sub-double/2addr v4, v6

    aget-wide v6, v15, v3

    aget-wide v2, v14, v3

    sub-double/2addr v6, v2

    mul-double v4, v4, v6

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x41684dae328e2ad1L    # 1.27420015798544E7

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0

    .line 43
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u975e\u6cd5\u5750\u6807\u503c"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
