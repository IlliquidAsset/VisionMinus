.class public Lcom/powervision/gcs/utils/RotateUtils;
.super Ljava/lang/Object;
.source "RotateUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/powervision/gcs/utils/RotateUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/utils/RotateUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMotionPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 8

    .line 19
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 20
    iget p0, p0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/16 v4, 0x3e8

    const/16 v5, -0x3e8

    const/high16 v6, -0x3f600000    # -5.0f

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_0

    add-float/2addr v0, v3

    mul-float v0, v0, v2

    float-to-int v0, v0

    if-ge v0, v5, :cond_2

    const/16 v0, -0x3e8

    goto :goto_0

    :cond_0
    cmpl-float v6, v0, v3

    if-ltz v6, :cond_1

    sub-float/2addr v0, v3

    mul-float v0, v0, v2

    float-to-int v0, v0

    if-le v0, v4, :cond_2

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    const/high16 v3, -0x3de00000    # -40.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x42c80000    # 100.0f

    cmpg-float v3, p0, v3

    if-gtz v3, :cond_4

    const/high16 v1, 0x42200000    # 40.0f

    add-float/2addr p0, v1

    mul-float p0, p0, v7

    div-float/2addr p0, v6

    float-to-int p0, p0

    if-ge p0, v5, :cond_3

    const/16 v1, -0x3e8

    goto :goto_1

    :cond_3
    move v1, p0

    goto :goto_1

    :cond_4
    const/high16 v3, -0x3e380000    # -25.0f

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_5

    add-float/2addr p0, v2

    mul-float p0, p0, v7

    div-float/2addr p0, v6

    float-to-int p0, p0

    if-le p0, v4, :cond_3

    const/16 v1, 0x3e8

    .line 47
    :cond_5
    :goto_1
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static getVrPoint(Landroid/graphics/PointF;F)Landroid/graphics/Point;
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 61
    iget v0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    .line 62
    iget v1, p0, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    .line 64
    sget-object v2, Lcom/powervision/gcs/utils/RotateUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/gcs/utils/show/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v2, Lcom/powervision/gcs/utils/RotateUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/powervision/gcs/utils/show/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object p0, Lcom/powervision/gcs/utils/RotateUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left_right_Dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/powervision/gcs/utils/show/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object p0, Lcom/powervision/gcs/utils/RotateUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_left_and_right: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/show/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, 0x42960000    # 75.0f

    const/high16 p1, -0x3f600000    # -5.0f

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    const/16 v4, -0x3e8

    const/high16 v5, 0x447a0000    # 1000.0f

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v7, v0, p1

    if-gtz v7, :cond_0

    add-float/2addr v0, v6

    mul-float v0, v0, v5

    div-float/2addr v0, p0

    float-to-int p0, v0

    if-ge p0, v4, :cond_2

    const/16 p0, -0x3e8

    goto :goto_0

    :cond_0
    cmpl-float v7, v0, v6

    if-ltz v7, :cond_1

    sub-float/2addr v0, v6

    mul-float v0, v0, v5

    div-float/2addr v0, p0

    float-to-int p0, v0

    if-le p0, v3, :cond_2

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float p1, v1, p1

    if-gez p1, :cond_4

    add-float/2addr v1, v6

    mul-float v1, v1, v5

    div-float/2addr v1, v0

    float-to-int p1, v1

    if-ge p1, v4, :cond_3

    const/16 v2, -0x3e8

    goto :goto_1

    :cond_3
    move v2, p1

    goto :goto_1

    :cond_4
    cmpl-float p1, v1, v6

    if-lez p1, :cond_5

    sub-float/2addr v1, v6

    mul-float v1, v1, v5

    div-float/2addr v1, v0

    float-to-int p1, v1

    if-le p1, v3, :cond_3

    const/16 v2, 0x3e8

    .line 99
    :cond_5
    :goto_1
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p0, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method
