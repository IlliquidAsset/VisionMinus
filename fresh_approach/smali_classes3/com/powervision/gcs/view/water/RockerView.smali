.class public Lcom/powervision/gcs/view/water/RockerView;
.super Landroid/view/View;
.source "RockerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/water/RockerView$OnDistanceLevelListener;,
        Lcom/powervision/gcs/view/water/RockerView$OnAngleChangeListener;,
        Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;,
        Lcom/powervision/gcs/view/water/RockerView$Direction;,
        Lcom/powervision/gcs/view/water/RockerView$DirectionMode;,
        Lcom/powervision/gcs/view/water/RockerView$CallBackMode;
    }
.end annotation


# static fields
.field private static final ANGLE_0:D = 0.0

.field private static final ANGLE_360:D = 360.0

.field private static final ANGLE_4D_OF_0P:D = 0.0

.field private static final ANGLE_4D_OF_1P:D = 90.0

.field private static final ANGLE_4D_OF_2P:D = 180.0

.field private static final ANGLE_4D_OF_3P:D = 270.0

.field private static final ANGLE_8D_OF_0P:D = 22.5

.field private static final ANGLE_8D_OF_1P:D = 67.5

.field private static final ANGLE_8D_OF_2P:D = 112.5

.field private static final ANGLE_8D_OF_3P:D = 157.5

.field private static final ANGLE_8D_OF_4P:D = 202.5

.field private static final ANGLE_8D_OF_5P:D = 247.5

.field private static final ANGLE_8D_OF_6P:D = 292.5

.field private static final ANGLE_8D_OF_7P:D = 337.5

.field private static final ANGLE_HORIZONTAL_2D_OF_0P:D = 90.0

.field private static final ANGLE_HORIZONTAL_2D_OF_1P:D = 270.0

.field private static final ANGLE_ROTATE45_4D_OF_0P:D = 45.0

.field private static final ANGLE_ROTATE45_4D_OF_1P:D = 135.0

.field private static final ANGLE_ROTATE45_4D_OF_2P:D = 225.0

.field private static final ANGLE_ROTATE45_4D_OF_3P:D = 315.0

.field private static final ANGLE_VERTICAL_2D_OF_0P:D = 0.0

.field private static final ANGLE_VERTICAL_2D_OF_1P:D = 180.0

.field private static final AREA_BACKGROUND_MODE_COLOR:I = 0x1

.field private static final AREA_BACKGROUND_MODE_DEFAULT:I = 0x3

.field private static final AREA_BACKGROUND_MODE_PIC:I = 0x0

.field private static final AREA_BACKGROUND_MODE_XML:I = 0x2

.field private static final DEFAULT_ROCKER_SCALE:F = 0.5f

.field private static final DEFAULT_SIZE:I = 0x190

.field public static final POSITION_LEFT:I = 0x0

.field public static final POSITION_RIGHT:I = 0x1

.field private static final ROCKER_BACKGROUND_MODE_COLOR:I = 0x5

.field private static final ROCKER_BACKGROUND_MODE_DEFAULT:I = 0x7

.field private static final ROCKER_BACKGROUND_MODE_PIC:I = 0x4

.field private static final ROCKER_BACKGROUND_MODE_XML:I = 0x6

.field private static final TAG:Ljava/lang/String; = "RockerView"


# instance fields
.field private Rocker_Position:I

.field private baseDistance:F

.field private hasCall:Z

.field private lastDistance:F

.field private mAreaBackgroundMode:I

.field private mAreaBackgroundPaint:Landroid/graphics/Paint;

.field private mAreaBitmap:Landroid/graphics/Bitmap;

.field private mAreaColor:I

.field private mAreaRadius:I

.field private mCallBackMode:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

.field private mCenterPoint:Landroid/graphics/Point;

.field private mDirectionMode:Lcom/powervision/gcs/view/water/RockerView$DirectionMode;

.field private mDistanceLevel:I

.field private mOnAngleChangeListener:Lcom/powervision/gcs/view/water/RockerView$OnAngleChangeListener;

.field private mOnDistanceLevelListener:Lcom/powervision/gcs/view/water/RockerView$OnDistanceLevelListener;

.field private mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

.field private mRockerBackgroundMode:I

.field private mRockerBitmap:Landroid/graphics/Bitmap;

.field private mRockerColor:I

.field private mRockerPaint:Landroid/graphics/Paint;

.field private mRockerPosition:Landroid/graphics/Point;

.field private mRockerRadius:I

.field private mRockerScale:F

.field private mUnderWaterViewChangeListener:Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;

.field private tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object v0, Lcom/powervision/gcs/view/water/RockerView$CallBackMode;->CALL_BACK_MODE_MOVE:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    iput-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mCallBackMode:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    .line 55
    sget-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/powervision/gcs/view/water/RockerView;->lastDistance:F

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/powervision/gcs/view/water/RockerView;->hasCall:Z

    .line 59
    iput v0, p0, Lcom/powervision/gcs/view/water/RockerView;->baseDistance:F

    const/16 v0, 0xa

    .line 60
    iput v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mDistanceLevel:I

    const/4 v0, 0x3

    .line 98
    iput v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundMode:I

    const/4 v0, 0x7

    .line 106
    iput v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBackgroundMode:I

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/water/RockerView;->initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    invoke-virtual {p0}, Lcom/powervision/gcs/view/water/RockerView;->isInEditMode()Z

    .line 123
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 124
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 127
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    .line 128
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 131
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    .line 133
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    return-void
.end method

.method private callBack(DF)V
    .locals 44

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    .line 453
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "distance"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget v4, v0, Lcom/powervision/gcs/view/water/RockerView;->lastDistance:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v0, Lcom/powervision/gcs/view/water/RockerView;->baseDistance:F

    iget v6, v0, Lcom/powervision/gcs/view/water/RockerView;->mDistanceLevel:I

    int-to-float v7, v6

    div-float v7, v5, v7

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_0

    .line 455
    iput v3, v0, Lcom/powervision/gcs/view/water/RockerView;->lastDistance:F

    .line 456
    iget-object v4, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnDistanceLevelListener:Lcom/powervision/gcs/view/water/RockerView$OnDistanceLevelListener;

    if-eqz v4, :cond_0

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v3, v5

    float-to-int v3, v3

    .line 458
    invoke-interface {v4, v3}, Lcom/powervision/gcs/view/water/RockerView$OnDistanceLevelListener;->onDistanceLevel(I)V

    .line 461
    :cond_0
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnAngleChangeListener:Lcom/powervision/gcs/view/water/RockerView$OnAngleChangeListener;

    if-eqz v3, :cond_1

    .line 462
    invoke-interface {v3, v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnAngleChangeListener;->angle(D)V

    .line 464
    :cond_1
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    if-eqz v3, :cond_37

    .line 465
    sget-object v3, Lcom/powervision/gcs/view/water/RockerView$CallBackMode;->CALL_BACK_MODE_MOVE:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    iget-object v4, v0, Lcom/powervision/gcs/view/water/RockerView;->mCallBackMode:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide v10, 0x4072480000000000L    # 292.5

    const-wide v12, 0x406ef00000000000L    # 247.5

    const-wide v14, 0x4069500000000000L    # 202.5

    const-wide v16, 0x4063b00000000000L    # 157.5

    const-wide v18, 0x405c200000000000L    # 112.5

    const-wide v20, 0x406c200000000000L    # 225.0

    const-wide v22, 0x4050e00000000000L    # 67.5

    const-wide v24, 0x4060e00000000000L    # 135.0

    const-wide v26, 0x4036800000000000L    # 22.5

    const-wide v28, 0x4075180000000000L    # 337.5

    const-wide v30, 0x4046800000000000L    # 45.0

    const-wide v32, 0x4073b00000000000L    # 315.0

    const-wide v34, 0x4066800000000000L    # 180.0

    const-wide v36, 0x4056800000000000L    # 90.0

    const-wide v38, 0x4070e00000000000L    # 270.0

    const-wide v40, 0x4076800000000000L    # 360.0

    const-wide/16 v42, 0x0

    if-ne v3, v4, :cond_1c

    .line 466
    sget-object v3, Lcom/powervision/gcs/view/water/RockerView$1;->$SwitchMap$com$powervision$gcs$view$water$RockerView$DirectionMode:[I

    iget-object v4, v0, Lcom/powervision/gcs/view/water/RockerView;->mDirectionMode:Lcom/powervision/gcs/view/water/RockerView$DirectionMode;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/water/RockerView$DirectionMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v9, :cond_18

    if-eq v3, v8, :cond_16

    if-eq v3, v7, :cond_12

    if-eq v3, v6, :cond_c

    if-eq v3, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_3

    cmpl-double v3, v26, v1

    if-gtz v3, :cond_4

    :cond_3
    cmpg-double v3, v28, v1

    if-gtz v3, :cond_5

    cmpl-double v3, v40, v1

    if-lez v3, :cond_5

    .line 518
    :cond_4
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_5
    cmpg-double v3, v26, v1

    if-gtz v3, :cond_6

    cmpl-double v3, v22, v1

    if-lez v3, :cond_6

    .line 521
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_6
    cmpg-double v3, v22, v1

    if-gtz v3, :cond_7

    cmpl-double v3, v18, v1

    if-lez v3, :cond_7

    .line 524
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_7
    cmpg-double v3, v18, v1

    if-gtz v3, :cond_8

    cmpl-double v3, v16, v1

    if-lez v3, :cond_8

    .line 527
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_8
    cmpg-double v3, v16, v1

    if-gtz v3, :cond_9

    cmpl-double v3, v14, v1

    if-lez v3, :cond_9

    .line 530
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_9
    cmpg-double v3, v14, v1

    if-gtz v3, :cond_a

    cmpl-double v3, v12, v1

    if-lez v3, :cond_a

    .line 533
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_a
    cmpg-double v3, v12, v1

    if-gtz v3, :cond_b

    cmpl-double v3, v10, v1

    if-lez v3, :cond_b

    .line 536
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_b
    cmpg-double v3, v10, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v28, v1

    if-lez v3, :cond_37

    .line 539
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_c
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_d

    cmpl-double v3, v30, v1

    if-gtz v3, :cond_e

    :cond_d
    cmpg-double v3, v32, v1

    if-gtz v3, :cond_f

    cmpl-double v3, v40, v1

    if-lez v3, :cond_f

    .line 503
    :cond_e
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_f
    cmpg-double v3, v30, v1

    if-gtz v3, :cond_10

    cmpl-double v3, v24, v1

    if-lez v3, :cond_10

    .line 506
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_10
    cmpg-double v3, v24, v1

    if-gtz v3, :cond_11

    cmpl-double v3, v20, v1

    if-lez v3, :cond_11

    .line 509
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_11
    cmpg-double v3, v20, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v32, v1

    if-lez v3, :cond_37

    .line 512
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_12
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_13

    cmpl-double v3, v36, v1

    if-lez v3, :cond_13

    .line 488
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_13
    cmpg-double v3, v36, v1

    if-gtz v3, :cond_14

    cmpl-double v3, v34, v1

    if-lez v3, :cond_14

    .line 491
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_14
    cmpg-double v3, v34, v1

    if-gtz v3, :cond_15

    cmpl-double v3, v38, v1

    if-lez v3, :cond_15

    .line 494
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_15
    cmpg-double v3, v38, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v40, v1

    if-lez v3, :cond_37

    .line 497
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_16
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_17

    cmpl-double v3, v34, v1

    if-lez v3, :cond_17

    .line 479
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_17
    cmpg-double v3, v34, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v40, v1

    if-lez v3, :cond_37

    .line 482
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_18
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_19

    cmpl-double v3, v36, v1

    if-gtz v3, :cond_1a

    :cond_19
    cmpg-double v3, v38, v1

    if-gtz v3, :cond_1b

    cmpl-double v3, v40, v1

    if-lez v3, :cond_1b

    .line 470
    :cond_1a
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_1b
    cmpg-double v3, v36, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v38, v1

    if-lez v3, :cond_37

    .line 473
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    .line 545
    :cond_1c
    sget-object v3, Lcom/powervision/gcs/view/water/RockerView$CallBackMode;->CALL_BACK_MODE_STATE_CHANGE:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    iget-object v4, v0, Lcom/powervision/gcs/view/water/RockerView;->mCallBackMode:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    if-ne v3, v4, :cond_37

    .line 546
    sget-object v3, Lcom/powervision/gcs/view/water/RockerView$1;->$SwitchMap$com$powervision$gcs$view$water$RockerView$DirectionMode:[I

    iget-object v4, v0, Lcom/powervision/gcs/view/water/RockerView;->mDirectionMode:Lcom/powervision/gcs/view/water/RockerView$DirectionMode;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/water/RockerView$DirectionMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v9, :cond_33

    if-eq v3, v8, :cond_31

    if-eq v3, v7, :cond_2d

    if-eq v3, v6, :cond_27

    if-eq v3, v5, :cond_1d

    goto/16 :goto_0

    :cond_1d
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_1e

    cmpl-double v3, v26, v1

    if-gtz v3, :cond_1f

    :cond_1e
    cmpg-double v3, v28, v1

    if-gtz v3, :cond_20

    cmpl-double v3, v40, v1

    if-lez v3, :cond_20

    .line 608
    :cond_1f
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_20

    .line 610
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 611
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_20
    cmpg-double v3, v26, v1

    if-gtz v3, :cond_21

    cmpl-double v3, v22, v1

    if-lez v3, :cond_21

    .line 612
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_21

    .line 614
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 615
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_21
    cmpg-double v3, v22, v1

    if-gtz v3, :cond_22

    cmpl-double v3, v18, v1

    if-lez v3, :cond_22

    .line 616
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_22

    .line 618
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 619
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_22
    cmpg-double v3, v18, v1

    if-gtz v3, :cond_23

    cmpl-double v3, v16, v1

    if-lez v3, :cond_23

    .line 620
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_23

    .line 622
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 623
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_23
    cmpg-double v3, v16, v1

    if-gtz v3, :cond_24

    cmpl-double v3, v14, v1

    if-lez v3, :cond_24

    .line 624
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_24

    .line 626
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 627
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_24
    cmpg-double v3, v14, v1

    if-gtz v3, :cond_25

    cmpl-double v3, v12, v1

    if-lez v3, :cond_25

    .line 628
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_25

    .line 630
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 631
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_25
    cmpg-double v3, v12, v1

    if-gtz v3, :cond_26

    cmpl-double v3, v10, v1

    if-lez v3, :cond_26

    .line 632
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_26

    .line 634
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 635
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_26
    cmpg-double v3, v10, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v28, v1

    if-lez v3, :cond_37

    .line 636
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v1, v2, :cond_37

    .line 638
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 639
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_27
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_28

    cmpl-double v3, v30, v1

    if-gtz v3, :cond_29

    :cond_28
    cmpg-double v3, v32, v1

    if-gtz v3, :cond_2a

    cmpl-double v3, v40, v1

    if-lez v3, :cond_2a

    .line 589
    :cond_29
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_2a

    .line 591
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 592
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_2a
    cmpg-double v3, v30, v1

    if-gtz v3, :cond_2b

    cmpl-double v3, v24, v1

    if-lez v3, :cond_2b

    .line 593
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_2b

    .line 595
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 596
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_2b
    cmpg-double v3, v24, v1

    if-gtz v3, :cond_2c

    cmpl-double v3, v20, v1

    if-lez v3, :cond_2c

    .line 597
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_2c

    .line 599
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 600
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_2c
    cmpg-double v3, v20, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v32, v1

    if-lez v3, :cond_37

    .line 601
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v1, v2, :cond_37

    .line 603
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 604
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_2d
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_2e

    cmpl-double v3, v36, v1

    if-lez v3, :cond_2e

    .line 570
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_2e

    .line 572
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 573
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_2e
    cmpg-double v3, v36, v1

    if-gtz v3, :cond_2f

    cmpl-double v3, v34, v1

    if-lez v3, :cond_2f

    .line 574
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_2f

    .line 576
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 577
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_2f
    cmpg-double v3, v34, v1

    if-gtz v3, :cond_30

    cmpl-double v3, v38, v1

    if-lez v3, :cond_30

    .line 578
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_30

    .line 580
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 581
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_30
    cmpg-double v3, v38, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v40, v1

    if-lez v3, :cond_37

    .line 582
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v1, v2, :cond_37

    .line 584
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 585
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto/16 :goto_0

    :cond_31
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_32

    cmpl-double v3, v34, v1

    if-lez v3, :cond_32

    .line 559
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_32

    .line 561
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 562
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto :goto_0

    :cond_32
    cmpg-double v3, v34, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v40, v1

    if-lez v3, :cond_37

    .line 563
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v1, v2, :cond_37

    .line 565
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 566
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto :goto_0

    :cond_33
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_34

    cmpl-double v3, v36, v1

    if-gtz v3, :cond_35

    :cond_34
    cmpg-double v3, v38, v1

    if-gtz v3, :cond_36

    cmpl-double v3, v40, v1

    if-lez v3, :cond_36

    .line 548
    :cond_35
    iget-object v3, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v3, v4, :cond_36

    .line 550
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 551
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    goto :goto_0

    :cond_36
    cmpg-double v3, v36, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v38, v1

    if-lez v3, :cond_37

    .line 552
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    if-eq v1, v2, :cond_37

    .line 554
    sget-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 555
    iget-object v1, v0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    :cond_37
    :goto_0
    return-void
.end method

.method private callBackFinish()V
    .locals 1

    .line 654
    sget-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 655
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mOnAngleChangeListener:Lcom/powervision/gcs/view/water/RockerView$OnAngleChangeListener;

    if-eqz v0, :cond_0

    .line 656
    invoke-interface {v0}, Lcom/powervision/gcs/view/water/RockerView$OnAngleChangeListener;->onFinish()V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    if-eqz v0, :cond_1

    .line 659
    invoke-interface {v0}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->onFinish()V

    :cond_1
    return-void
.end method

.method private callBackStart()V
    .locals 1

    .line 437
    sget-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/gcs/view/water/RockerView$Direction;

    iput-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->tempDirection:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 438
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mOnAngleChangeListener:Lcom/powervision/gcs/view/water/RockerView$OnAngleChangeListener;

    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v0}, Lcom/powervision/gcs/view/water/RockerView$OnAngleChangeListener;->onStart()V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    if-eqz v0, :cond_1

    .line 442
    invoke-interface {v0}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->onStart()V

    :cond_1
    return-void
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 420
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 421
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 423
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 425
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 426
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 427
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 428
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private getCallBackMode(I)Lcom/powervision/gcs/view/water/RockerView$CallBackMode;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 788
    iget-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mCallBackMode:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    return-object p1

    .line 786
    :cond_0
    sget-object p1, Lcom/powervision/gcs/view/water/RockerView$CallBackMode;->CALL_BACK_MODE_STATE_CHANGE:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    return-object p1

    .line 784
    :cond_1
    sget-object p1, Lcom/powervision/gcs/view/water/RockerView$CallBackMode;->CALL_BACK_MODE_MOVE:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    return-object p1
.end method

.method private getRockerPositionPoint(Landroid/graphics/Point;Landroid/graphics/Point;FF)Landroid/graphics/Point;
    .locals 8

    .line 330
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 332
    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v2, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v2, v1

    float-to-double v1, v2

    .line 334
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v2, v0

    .line 336
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-double v4, v0

    mul-double v2, v2, v4

    .line 338
    invoke-direct {p0, v2, v3}, Lcom/powervision/gcs/view/water/RockerView;->radian2Angle(D)D

    move-result-wide v4

    add-float v0, v1, p4

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 342
    invoke-direct {p0, v4, v5, p1}, Lcom/powervision/gcs/view/water/RockerView;->callBack(DF)V

    return-object p2

    .line 346
    :cond_1
    iget p2, p1, Landroid/graphics/Point;->x:I

    int-to-double v0, p2

    sub-float/2addr p3, p4

    float-to-double p2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, p2

    add-double/2addr v0, v6

    double-to-int p4, v0

    .line 347
    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double p2, p2, v2

    add-double/2addr v0, p2

    double-to-int p2, v0

    .line 349
    iget p3, p1, Landroid/graphics/Point;->x:I

    sub-int p3, p4, p3

    iget v0, p1, Landroid/graphics/Point;->x:I

    sub-int v0, p4, v0

    mul-int p3, p3, v0

    iget v0, p1, Landroid/graphics/Point;->y:I

    sub-int v0, p2, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int p1, p2, p1

    mul-int v0, v0, p1

    add-int/2addr p3, v0

    int-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p1, p1

    invoke-direct {p0, v4, v5, p1}, Lcom/powervision/gcs/view/water/RockerView;->callBack(DF)V

    .line 350
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p4, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 151
    sget-object v0, Lcom/powervision/gcs/R$styleable;->RockerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 154
    sget p2, Lcom/powervision/gcs/R$styleable;->RockerView_areaBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p2, :cond_3

    .line 157
    instance-of v2, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 159
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 160
    iput v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 161
    :cond_0
    instance-of v2, p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    .line 163
    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/water/RockerView;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x2

    .line 164
    iput p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 165
    :cond_1
    instance-of v2, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 167
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaColor:I

    const/4 p2, 0x1

    .line 168
    iput p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 171
    :cond_2
    iput v1, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 175
    :cond_3
    iput v1, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundMode:I

    .line 178
    :goto_0
    sget p2, Lcom/powervision/gcs/R$styleable;->RockerView_rockerBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v1, 0x7

    if-eqz p2, :cond_7

    .line 181
    instance-of v2, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    .line 183
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x4

    .line 184
    iput p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 185
    :cond_4
    instance-of v2, p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_5

    .line 187
    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/water/RockerView;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x6

    .line 188
    iput p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 189
    :cond_5
    instance-of v2, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_6

    .line 191
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerColor:I

    const/4 p2, 0x5

    .line 192
    iput p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 195
    :cond_6
    iput v1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 199
    :cond_7
    iput v1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBackgroundMode:I

    .line 203
    :goto_1
    sget p2, Lcom/powervision/gcs/R$styleable;->RockerView_rockerScale:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerScale:F

    .line 205
    sget p2, Lcom/powervision/gcs/R$styleable;->RockerView_rockerSpeedLevel:I

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mDistanceLevel:I

    .line 207
    sget p2, Lcom/powervision/gcs/R$styleable;->RockerView_rockerCallBackMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/water/RockerView;->getCallBackMode(I)Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mCallBackMode:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    .line 208
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private moveRocker(FF)V
    .locals 5

    .line 361
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 362
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mUnderWaterViewChangeListener:Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;

    if-eqz v0, :cond_1

    .line 363
    iget v1, p0, Lcom/powervision/gcs/view/water/RockerView;->Rocker_Position:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [I

    aput p1, v1, v4

    aput p2, v1, v3

    const/16 p1, 0x8

    new-array p2, v4, [Ljava/lang/Integer;

    .line 368
    invoke-interface {v0, p1, v1, p2}, Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;->onUnderWaterViewChange(ILjava/lang/Object;[Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    new-array v1, v2, [I

    aput p1, v1, v4

    aput p2, v1, v3

    const/4 p1, 0x7

    new-array p2, v4, [Ljava/lang/Integer;

    .line 374
    invoke-interface {v0, p1, v1, p2}, Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;->onUnderWaterViewChange(ILjava/lang/Object;[Ljava/lang/Integer;)V

    .line 377
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/water/RockerView;->invalidate()V

    return-void
.end method

.method private radian2Angle(D)D
    .locals 3

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    .line 408
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p1, v0

    :goto_0
    return-wide p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 237
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 239
    invoke-virtual {p0}, Lcom/powervision/gcs/view/water/RockerView;->getMeasuredWidth()I

    move-result v0

    .line 240
    invoke-virtual {p0}, Lcom/powervision/gcs/view/water/RockerView;->getMeasuredHeight()I

    move-result v1

    .line 242
    div-int/lit8 v2, v0, 0x2

    .line 243
    div-int/lit8 v3, v1, 0x2

    .line 246
    iget-object v4, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Point;->set(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    if-gt v0, v1, :cond_0

    int-to-float v0, v2

    goto :goto_0

    :cond_0
    int-to-float v0, v3

    .line 248
    :goto_0
    iget v1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerScale:F

    add-float/2addr v1, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaRadius:I

    int-to-float v0, v0

    .line 249
    iget v1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerRadius:I

    .line 251
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_2

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 256
    :cond_2
    iget v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-ne v2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-ne v2, v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 258
    :cond_5
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 259
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaRadius:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaRadius:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaRadius:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaRadius:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 260
    iget-object v3, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_2
    const/4 v0, 0x4

    .line 272
    iget v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBackgroundMode:I

    if-eq v0, v2, :cond_8

    const/4 v0, 0x6

    if-ne v0, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x5

    if-ne v0, v2, :cond_7

    .line 279
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 283
    :cond_7
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 274
    :cond_8
    :goto_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 275
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerRadius:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerRadius:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 276
    iget-object v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 215
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 216
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 217
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 218
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/16 v2, 0x190

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x190

    :goto_0
    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x190

    .line 232
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/water/RockerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "zzl"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/water/RockerView;->callBackFinish()V

    .line 307
    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    if-eqz v0, :cond_1

    .line 308
    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-interface {v0, v2}, Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/water/RockerView$Direction;)V

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCenterPoint.x = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c mCenterPoint.y = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 313
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/water/RockerView;->moveRocker(FF)V

    goto :goto_0

    .line 293
    :cond_2
    invoke-direct {p0}, Lcom/powervision/gcs/view/water/RockerView;->callBackStart()V

    .line 295
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 297
    iget v4, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaRadius:I

    add-int/2addr v4, v2

    int-to-float v2, v4

    iput v2, p0, Lcom/powervision/gcs/view/water/RockerView;->baseDistance:F

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/powervision/gcs/view/water/RockerView;->baseDistance:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "baseDistance"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/powervision/gcs/view/water/RockerView;->mCenterPoint:Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-direct {v4, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    iget p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mAreaRadius:I

    iget v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerRadius:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-direct {p0, v2, v4, p1, v0}, Lcom/powervision/gcs/view/water/RockerView;->getRockerPositionPoint(Landroid/graphics/Point;Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRockerPosition.x = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c mRockerPosition.y = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/powervision/gcs/view/water/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/water/RockerView;->moveRocker(FF)V

    :goto_0
    return v3
.end method

.method public setCallBackMode(Lcom/powervision/gcs/view/water/RockerView$CallBackMode;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mCallBackMode:Lcom/powervision/gcs/view/water/RockerView$CallBackMode;

    return-void
.end method

.method public setOnAngleChangeListener(Lcom/powervision/gcs/view/water/RockerView$OnAngleChangeListener;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mOnAngleChangeListener:Lcom/powervision/gcs/view/water/RockerView$OnAngleChangeListener;

    return-void
.end method

.method public setOnDistanceLevelListener(Lcom/powervision/gcs/view/water/RockerView$OnDistanceLevelListener;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mOnDistanceLevelListener:Lcom/powervision/gcs/view/water/RockerView$OnDistanceLevelListener;

    return-void
.end method

.method public setOnShakeListener(Lcom/powervision/gcs/view/water/RockerView$DirectionMode;Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mDirectionMode:Lcom/powervision/gcs/view/water/RockerView$DirectionMode;

    .line 727
    iput-object p2, p0, Lcom/powervision/gcs/view/water/RockerView;->mOnShakeListener:Lcom/powervision/gcs/view/water/RockerView$OnShakeListener;

    return-void
.end method

.method public setRocker_Position(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/powervision/gcs/view/water/RockerView;->Rocker_Position:I

    return-void
.end method

.method public setmUnderWaterViewChangeListener(Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/powervision/gcs/view/water/RockerView;->mUnderWaterViewChangeListener:Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;

    return-void
.end method
