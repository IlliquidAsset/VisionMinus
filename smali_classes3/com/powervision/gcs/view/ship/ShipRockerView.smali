.class public Lcom/powervision/gcs/view/ship/ShipRockerView;
.super Landroid/view/View;
.source "ShipRockerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipRockerView$OnDistanceLevelListener;,
        Lcom/powervision/gcs/view/ship/ShipRockerView$OnAngleChangeListener;,
        Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;,
        Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;,
        Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;,
        Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;
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

.field private static final DEFAULT_SIZE:I = 0x258

.field public static final POSITION_LEFT:I = 0x0

.field public static final POSITION_RIGHT:I = 0x1

.field private static final ROCKER_BACKGROUND_MODE_COLOR:I = 0x5

.field private static final ROCKER_BACKGROUND_MODE_DEFAULT:I = 0x7

.field private static final ROCKER_BACKGROUND_MODE_PIC:I = 0x4

.field private static final ROCKER_BACKGROUND_MODE_XML:I = 0x6

.field private static final TAG:Ljava/lang/String; = "RockerView"


# instance fields
.field private Rocker_Position:I

.field private areaBackground:Landroid/graphics/drawable/Drawable;

.field private baseDistance:F

.field private deaultControlMode:Z

.field drawArea:Z

.field private hasCall:Z

.field private lastDistance:F

.field private mAreaBackgroundMode:I

.field private mAreaBackgroundPaint:Landroid/graphics/Paint;

.field private mAreaBitmap:Landroid/graphics/Bitmap;

.field private mAreaColor:I

.field private mAreaRadius:I

.field private mCallBackMode:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

.field private mCenterPoint:Landroid/graphics/Point;

.field private mDirectionMode:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

.field private mDistanceLevel:I

.field private mOnAngleChangeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnAngleChangeListener;

.field private mOnDistanceLevelListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnDistanceLevelListener;

.field private mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

.field private mRockerBackgroundMode:I

.field private mRockerBitmap:Landroid/graphics/Bitmap;

.field private mRockerColor:I

.field private mRockerPaint:Landroid/graphics/Paint;

.field private mRockerPosition:Landroid/graphics/Point;

.field private mRockerRadius:I

.field private mRockerScale:F

.field private mUnderWaterViewChangeListener:Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;

.field private positionParam:Lcom/powervision/powersdk/param/PositionParam;

.field private tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    sget-object v0, Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;->CALL_BACK_MODE_MOVE:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCallBackMode:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

    .line 61
    sget-object v0, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->lastDistance:F

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->hasCall:Z

    .line 65
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->baseDistance:F

    const/16 v0, 0xa

    .line 66
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDistanceLevel:I

    const/4 v0, 0x3

    .line 104
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundMode:I

    const/4 v0, 0x7

    .line 112
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBackgroundMode:I

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->deaultControlMode:Z

    .line 377
    iput-boolean v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawArea:Z

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/ship/ShipRockerView;->initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->isInEditMode()Z

    .line 136
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    .line 137
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 140
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPaint:Landroid/graphics/Paint;

    .line 141
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 144
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    .line 146
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    return-void
.end method

.method private callBack(DF)V
    .locals 44

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "distance"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "simon"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget v4, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->lastDistance:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->baseDistance:F

    iget v6, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDistanceLevel:I

    int-to-float v7, v6

    div-float v7, v5, v7

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_0

    .line 693
    iput v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->lastDistance:F

    .line 694
    iget-object v4, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnDistanceLevelListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnDistanceLevelListener;

    if-eqz v4, :cond_0

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v3, v5

    float-to-int v3, v3

    .line 696
    invoke-interface {v4, v3}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnDistanceLevelListener;->onDistanceLevel(I)V

    .line 699
    :cond_0
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnAngleChangeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnAngleChangeListener;

    if-eqz v3, :cond_1

    .line 700
    invoke-interface {v3, v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnAngleChangeListener;->angle(D)V

    .line 702
    :cond_1
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    if-eqz v3, :cond_37

    .line 703
    sget-object v3, Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;->CALL_BACK_MODE_MOVE:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

    iget-object v4, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCallBackMode:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

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

    .line 704
    sget-object v3, Lcom/powervision/gcs/view/ship/ShipRockerView$1;->$SwitchMap$com$powervision$gcs$view$ship$ShipRockerView$DirectionMode:[I

    iget-object v4, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDirectionMode:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->ordinal()I

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

    .line 772
    :cond_4
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_5
    cmpg-double v3, v26, v1

    if-gtz v3, :cond_6

    cmpl-double v3, v22, v1

    if-lez v3, :cond_6

    .line 775
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_6
    cmpg-double v3, v22, v1

    if-gtz v3, :cond_7

    cmpl-double v3, v18, v1

    if-lez v3, :cond_7

    .line 778
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_7
    cmpg-double v3, v18, v1

    if-gtz v3, :cond_8

    cmpl-double v3, v16, v1

    if-lez v3, :cond_8

    .line 781
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_8
    cmpg-double v3, v16, v1

    if-gtz v3, :cond_9

    cmpl-double v3, v14, v1

    if-lez v3, :cond_9

    .line 784
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_9
    cmpg-double v3, v14, v1

    if-gtz v3, :cond_a

    cmpl-double v3, v12, v1

    if-lez v3, :cond_a

    .line 787
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_a
    cmpg-double v3, v12, v1

    if-gtz v3, :cond_b

    cmpl-double v3, v10, v1

    if-lez v3, :cond_b

    .line 790
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_b
    cmpg-double v3, v10, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v28, v1

    if-lez v3, :cond_37

    .line 793
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

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

    .line 757
    :cond_e
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_f
    cmpg-double v3, v30, v1

    if-gtz v3, :cond_10

    cmpl-double v3, v24, v1

    if-lez v3, :cond_10

    .line 760
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_10
    cmpg-double v3, v24, v1

    if-gtz v3, :cond_11

    cmpl-double v3, v20, v1

    if-lez v3, :cond_11

    .line 763
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_11
    cmpg-double v3, v20, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v32, v1

    if-lez v3, :cond_37

    .line 766
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_12
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_13

    cmpl-double v3, v36, v1

    if-lez v3, :cond_13

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_all_side_right:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 736
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_13
    cmpg-double v3, v36, v1

    if-gtz v3, :cond_14

    cmpl-double v3, v34, v1

    if-lez v3, :cond_14

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_all_side_down:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 741
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_14
    cmpg-double v3, v34, v1

    if-gtz v3, :cond_15

    cmpl-double v3, v38, v1

    if-lez v3, :cond_15

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_all_side_left:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 746
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_15
    cmpg-double v3, v38, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v40, v1

    if-lez v3, :cond_37

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_all_side_up:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 751
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_16
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_17

    cmpl-double v3, v34, v1

    if-lez v3, :cond_17

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_up_down_down:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 722
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 723
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_17
    cmpg-double v3, v34, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v40, v1

    if-lez v3, :cond_37

    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_up_down_up:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 728
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

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

    .line 708
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_left_right_right:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 710
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_1b
    cmpg-double v3, v36, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v38, v1

    if-lez v3, :cond_37

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_left_right_left:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 715
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    .line 799
    :cond_1c
    sget-object v3, Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;->CALL_BACK_MODE_STATE_CHANGE:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

    iget-object v4, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCallBackMode:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

    if-ne v3, v4, :cond_37

    .line 800
    sget-object v3, Lcom/powervision/gcs/view/ship/ShipRockerView$1;->$SwitchMap$com$powervision$gcs$view$ship$ShipRockerView$DirectionMode:[I

    iget-object v4, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDirectionMode:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->ordinal()I

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

    .line 878
    :cond_1f
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_20

    .line 880
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 881
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_20
    cmpg-double v3, v26, v1

    if-gtz v3, :cond_21

    cmpl-double v3, v22, v1

    if-lez v3, :cond_21

    .line 882
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_21

    .line 884
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 885
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_21
    cmpg-double v3, v22, v1

    if-gtz v3, :cond_22

    cmpl-double v3, v18, v1

    if-lez v3, :cond_22

    .line 886
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_22

    .line 888
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 889
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_22
    cmpg-double v3, v18, v1

    if-gtz v3, :cond_23

    cmpl-double v3, v16, v1

    if-lez v3, :cond_23

    .line 890
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_23

    .line 892
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 893
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_23
    cmpg-double v3, v16, v1

    if-gtz v3, :cond_24

    cmpl-double v3, v14, v1

    if-lez v3, :cond_24

    .line 894
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_24

    .line 896
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 897
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_24
    cmpg-double v3, v14, v1

    if-gtz v3, :cond_25

    cmpl-double v3, v12, v1

    if-lez v3, :cond_25

    .line 898
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_25

    .line 900
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 901
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_25
    cmpg-double v3, v12, v1

    if-gtz v3, :cond_26

    cmpl-double v3, v10, v1

    if-lez v3, :cond_26

    .line 902
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_26

    .line 904
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 905
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_26
    cmpg-double v3, v10, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v28, v1

    if-lez v3, :cond_37

    .line 906
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v1, v2, :cond_37

    .line 908
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 909
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

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

    .line 859
    :cond_29
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_2a

    .line 861
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 862
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_2a
    cmpg-double v3, v30, v1

    if-gtz v3, :cond_2b

    cmpl-double v3, v24, v1

    if-lez v3, :cond_2b

    .line 863
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_2b

    .line 865
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 866
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_2b
    cmpg-double v3, v24, v1

    if-gtz v3, :cond_2c

    cmpl-double v3, v20, v1

    if-lez v3, :cond_2c

    .line 867
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_2c

    .line 869
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 870
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_2c
    cmpg-double v3, v20, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v32, v1

    if-lez v3, :cond_37

    .line 871
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v1, v2, :cond_37

    .line 873
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 874
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_2d
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_2e

    cmpl-double v3, v36, v1

    if-lez v3, :cond_2e

    .line 832
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_2e

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_all_side_right:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 836
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 837
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_2e
    cmpg-double v3, v36, v1

    if-gtz v3, :cond_2f

    cmpl-double v3, v34, v1

    if-lez v3, :cond_2f

    .line 838
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_2f

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_all_side_down:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 842
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 843
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_2f
    cmpg-double v3, v34, v1

    if-gtz v3, :cond_30

    cmpl-double v3, v38, v1

    if-lez v3, :cond_30

    .line 844
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_30

    .line 846
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_all_side_left:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 848
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 849
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_30
    cmpg-double v3, v38, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v40, v1

    if-lez v3, :cond_37

    .line 850
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v1, v2, :cond_37

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_all_side_up:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 854
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 855
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_31
    cmpg-double v3, v42, v1

    if-gtz v3, :cond_32

    cmpl-double v3, v34, v1

    if-lez v3, :cond_32

    .line 817
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_32

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_up_down_down:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 821
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 822
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto/16 :goto_0

    :cond_32
    cmpg-double v3, v34, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v40, v1

    if-lez v3, :cond_37

    .line 823
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v1, v2, :cond_37

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_up_down_up:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 827
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 828
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

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

    .line 802
    :cond_35
    iget-object v3, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v4, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v3, v4, :cond_36

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_left_right_right:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 806
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 807
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    goto :goto_0

    :cond_36
    cmpg-double v3, v36, v1

    if-gtz v3, :cond_37

    cmpl-double v3, v38, v1

    if-lez v3, :cond_37

    .line 808
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    if-eq v1, v2, :cond_37

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_left_right_left:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    .line 812
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 813
    iget-object v1, v0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    :cond_37
    :goto_0
    return-void
.end method

.method private callBackFinish()V
    .locals 1

    .line 924
    sget-object v0, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 925
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnAngleChangeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnAngleChangeListener;

    if-eqz v0, :cond_0

    .line 926
    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnAngleChangeListener;->onAngleFinish()V

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    if-eqz v0, :cond_1

    .line 929
    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->onFinish()V

    :cond_1
    return-void
.end method

.method private callBackStart()V
    .locals 1

    .line 675
    sget-object v0, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->tempDirection:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    .line 676
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnAngleChangeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnAngleChangeListener;

    if-eqz v0, :cond_0

    .line 677
    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnAngleChangeListener;->onStartAngle()V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    if-eqz v0, :cond_1

    .line 680
    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->onStartShake()V

    :cond_1
    return-void
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 658
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 659
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 661
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 663
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 664
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 665
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 666
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private getCallBackMode(I)Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1058
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCallBackMode:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

    return-object p1

    .line 1056
    :cond_0
    sget-object p1, Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;->CALL_BACK_MODE_STATE_CHANGE:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

    return-object p1

    .line 1054
    :cond_1
    sget-object p1, Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;->CALL_BACK_MODE_MOVE:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

    return-object p1
.end method

.method private getRockerPositionPoint(Landroid/graphics/Point;Landroid/graphics/Point;FF)Landroid/graphics/Point;
    .locals 8

    .line 463
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 465
    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v2, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v2, v1

    float-to-double v1, v2

    .line 467
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v2, v0

    .line 469
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

    .line 471
    invoke-direct {p0, v2, v3}, Lcom/powervision/gcs/view/ship/ShipRockerView;->radian2Angle(D)D

    move-result-wide v4

    add-float v0, v1, p4

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 475
    invoke-direct {p0, v4, v5, p1}, Lcom/powervision/gcs/view/ship/ShipRockerView;->callBack(DF)V

    return-object p2

    .line 479
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

    .line 480
    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double p2, p2, v2

    add-double/2addr v0, p2

    double-to-int p2, v0

    .line 482
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

    invoke-direct {p0, v4, v5, p1}, Lcom/powervision/gcs/view/ship/ShipRockerView;->callBack(DF)V

    .line 483
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p4, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 199
    sget-object v0, Lcom/powervision/gcs/R$styleable;->RockerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 202
    sget p2, Lcom/powervision/gcs/R$styleable;->RockerView_areaBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->areaBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz p2, :cond_3

    .line 205
    instance-of v3, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 207
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 209
    iput v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 210
    :cond_0
    instance-of v3, p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_1

    .line 212
    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x2

    .line 213
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 214
    :cond_1
    instance-of v3, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_2

    .line 216
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaColor:I

    .line 217
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 220
    :cond_2
    iput v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 224
    :cond_3
    iput v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundMode:I

    .line 228
    :goto_0
    sget p2, Lcom/powervision/gcs/R$styleable;->RockerView_rockerBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v2, 0x7

    if-eqz p2, :cond_7

    .line 231
    instance-of v3, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_4

    .line 233
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x4

    .line 235
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 236
    :cond_4
    instance-of v3, p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_5

    .line 238
    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x6

    .line 239
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 240
    :cond_5
    instance-of v3, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_6

    .line 242
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerColor:I

    const/4 p2, 0x5

    .line 243
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 246
    :cond_6
    iput v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 250
    :cond_7
    iput v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBackgroundMode:I

    .line 254
    :goto_1
    sget p2, Lcom/powervision/gcs/R$styleable;->RockerView_rockerScale:I

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerScale:F

    .line 256
    sget p2, Lcom/powervision/gcs/R$styleable;->RockerView_rockerSpeedLevel:I

    const/16 v2, 0xa

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDistanceLevel:I

    .line 258
    sget p2, Lcom/powervision/gcs/R$styleable;->RockerView_rockerCallBackMode:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getCallBackMode(I)Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCallBackMode:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

    .line 259
    sget p2, Lcom/powervision/gcs/R$styleable;->RockerView_deaultControlMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->deaultControlMode:Z

    .line 260
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private moveRocker(FF)V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 501
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaRadius:I

    .line 502
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    sub-int/2addr v0, v1

    .line 507
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaRadius:I

    .line 508
    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    sub-int/2addr v1, v2

    .line 510
    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDirectionMode:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    sget-object v3, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_2_HORIZONTAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    if-ne v2, v3, :cond_0

    .line 511
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    goto :goto_0

    .line 512
    :cond_0
    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDirectionMode:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    sget-object v3, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_2_VERTICAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    if-ne v2, v3, :cond_1

    .line 513
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    goto :goto_0

    .line 514
    :cond_1
    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_4_ROTATE_0:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    .line 518
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    .line 519
    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    int-to-float p2, v1

    div-float/2addr v2, p2

    mul-float v2, v2, v0

    .line 521
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveRocker: percentX = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " percentY = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RockerView"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, -0x3b860000    # -1000.0f

    .line 524
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 526
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 527
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 550
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mUnderWaterViewChangeListener:Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    new-array v1, v1, [Ljava/lang/Integer;

    .line 551
    invoke-interface {p1, p2, v0, v1}, Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;->onUnderWaterViewChange(ILjava/lang/Object;[Ljava/lang/Integer;)V

    .line 614
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->invalidate()V

    return-void
.end method

.method private radian2Angle(D)D
    .locals 3

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    .line 645
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
    .locals 9

    .line 289
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 291
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getMeasuredWidth()I

    move-result v0

    .line 292
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getMeasuredHeight()I

    move-result v1

    .line 294
    div-int/lit8 v2, v0, 0x2

    .line 295
    div-int/lit8 v3, v1, 0x2

    .line 298
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Point;->set(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    if-gt v0, v1, :cond_0

    int-to-float v0, v2

    goto :goto_0

    :cond_0
    int-to-float v0, v3

    .line 301
    :goto_0
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerScale:F

    add-float/2addr v1, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaRadius:I

    int-to-float v0, v0

    .line 302
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    .line 304
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_2

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 309
    :cond_2
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-ne v1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    if-ne v3, v0, :cond_4

    .line 331
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 335
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 311
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawArea:Z

    if-eqz v0, :cond_6

    .line 314
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 316
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaRadius:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaRadius:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaRadius:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget v8, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaRadius:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 318
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 322
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 324
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 326
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_2
    const/4 v0, 0x4

    .line 340
    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBackgroundMode:I

    if-eq v0, v3, :cond_9

    const/4 v0, 0x6

    if-ne v0, v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x5

    if-ne v0, v3, :cond_8

    .line 368
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 372
    :cond_8
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 342
    :cond_9
    :goto_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 344
    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    .line 345
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDirectionMode:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_2_HORIZONTAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    if-ne v1, v2, :cond_a

    .line 347
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    .line 348
    :cond_a
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDirectionMode:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_2_VERTICAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    if-ne v1, v2, :cond_b

    .line 350
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    .line 353
    :cond_b
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 365
    :goto_4
    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 267
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 268
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 269
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 270
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/16 v2, 0x258

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x258

    :goto_0
    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x258

    .line 284
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/ship/ShipRockerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "positionParam"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "--- "

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_0

    if-eq v0, v2, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto/16 :goto_1

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawArea:Z

    if-eqz v0, :cond_3

    .line 421
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_center_button_unselect:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    .line 422
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDirectionMode:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_2_HORIZONTAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    if-ne v0, v2, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_left_right_deafult:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDirectionMode:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_2_VERTICAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    if-ne v0, v2, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_up_down_default:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_rocker_all_side_deafult:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 430
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/ship/ShipRockerView;->moveRocker(FF)V

    .line 435
    :cond_3
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawArea:Z

    if-eqz v0, :cond_5

    .line 437
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->callBackFinish()V

    .line 438
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    if-eqz v0, :cond_4

    .line 439
    sget-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;->direction(Lcom/powervision/gcs/view/ship/ShipRockerView$Direction;)V

    .line 441
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 446
    :cond_5
    iput-boolean v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawArea:Z

    goto/16 :goto_1

    .line 383
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 386
    iget-object v7, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v7, v7, v0

    if-lez v7, :cond_9

    iget-object v7, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v0, v7, v0

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_9

    .line 387
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawArea:Z

    .line 391
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawArea:Z

    .line 392
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v6, 0x64

    .line 393
    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 394
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/powervision/gcs/R$mipmap;->ship_rocker_center_button_select1:I

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    .line 395
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->invalidate()V

    .line 397
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->callBackStart()V

    .line 404
    :cond_7
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawArea:Z

    if-nez v0, :cond_8

    return v5

    .line 407
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 409
    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaRadius:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    iput v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->baseDistance:F

    .line 411
    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCenterPoint:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-direct {v3, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    iget p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaRadius:I

    int-to-float p1, p1

    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerRadius:I

    int-to-float v0, v0

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->getRockerPositionPoint(Landroid/graphics/Point;Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->moveRocker(FF)V

    :goto_1
    return v5

    .line 399
    :cond_9
    iput-boolean v3, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawArea:Z

    return v3
.end method

.method public setAreaBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipRockerView;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 177
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    return-void
.end method

.method public setCallBackMode(Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mCallBackMode:Lcom/powervision/gcs/view/ship/ShipRockerView$CallBackMode;

    return-void
.end method

.method public setDeaultControlMode(ZLcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->deaultControlMode:Z

    .line 188
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDirectionMode:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    .line 189
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipRockerView;->postInvalidate()V

    return-void
.end method

.method public setOnAngleChangeListener(Lcom/powervision/gcs/view/ship/ShipRockerView$OnAngleChangeListener;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnAngleChangeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnAngleChangeListener;

    return-void
.end method

.method public setOnDistanceLevelListener(Lcom/powervision/gcs/view/ship/ShipRockerView$OnDistanceLevelListener;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnDistanceLevelListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnDistanceLevelListener;

    return-void
.end method

.method public setOnShakeListener(Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mDirectionMode:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    .line 997
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mOnShakeListener:Lcom/powervision/gcs/view/ship/ShipRockerView$OnShakeListener;

    return-void
.end method

.method public setRocker_Position(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->Rocker_Position:I

    return-void
.end method

.method public setmUnderWaterViewChangeListener(Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipRockerView;->mUnderWaterViewChangeListener:Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;

    return-void
.end method
