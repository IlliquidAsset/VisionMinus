.class public Lcom/powervision/handheld/ui/views/RockerView;
.super Landroid/view/View;
.source "RockerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/ui/views/RockerView$OnDistanceLevelListener;,
        Lcom/powervision/handheld/ui/views/RockerView$OnAngleChangeListener;,
        Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;,
        Lcom/powervision/handheld/ui/views/RockerView$OnShakeListener;,
        Lcom/powervision/handheld/ui/views/RockerView$Direction;,
        Lcom/powervision/handheld/ui/views/RockerView$DirectionMode;,
        Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;
    }
.end annotation


# static fields
.field private static final ANGLE_0:D = 0.0

.field private static final ANGLE_360:D = 360.0

.field private static final ANGLE_8D_OF_0P:D = 22.5

.field private static final ANGLE_8D_OF_1P:D = 67.5

.field private static final ANGLE_8D_OF_2P:D = 112.5

.field private static final ANGLE_8D_OF_3P:D = 157.5

.field private static final ANGLE_8D_OF_4P:D = 202.5

.field private static final ANGLE_8D_OF_5P:D = 247.5

.field private static final ANGLE_8D_OF_6P:D = 292.5

.field private static final ANGLE_8D_OF_7P:D = 337.5

.field private static final ANGLE_ROTATE45_4D_OF_0P:D = 45.0

.field private static final ANGLE_ROTATE45_4D_OF_1P:D = 135.0

.field private static final ANGLE_ROTATE45_4D_OF_2P:D = 225.0

.field private static final ANGLE_ROTATE45_4D_OF_3P:D = 315.0

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

.field private mCallBackMode:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

.field private mCenterPoint:Landroid/graphics/Point;

.field private mDirectionMode:Lcom/powervision/handheld/ui/views/RockerView$DirectionMode;

.field private mDistanceLevel:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOnAngleChangeListener:Lcom/powervision/handheld/ui/views/RockerView$OnAngleChangeListener;

.field private mOnDistanceLevelListener:Lcom/powervision/handheld/ui/views/RockerView$OnDistanceLevelListener;

.field private mOnShakeListener:Lcom/powervision/handheld/ui/views/RockerView$OnShakeListener;

.field private mRockerBackgroundMode:I

.field private mRockerBitmap:Landroid/graphics/Bitmap;

.field private mRockerColor:I

.field private mRockerPaint:Landroid/graphics/Paint;

.field private mRockerPosition:Landroid/graphics/Point;

.field private mRockerRadius:I

.field private mRockerScale:F

.field private mStartX:F

.field private mStartY:F

.field private onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

.field private tempDirection:Lcom/powervision/handheld/ui/views/RockerView$Direction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object v0, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;->CALL_BACK_MODE_MOVE:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCallBackMode:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    .line 56
    sget-object v0, Lcom/powervision/handheld/ui/views/RockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/handheld/ui/views/RockerView$Direction;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->tempDirection:Lcom/powervision/handheld/ui/views/RockerView$Direction;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->lastDistance:F

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->hasCall:Z

    .line 60
    iput v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->baseDistance:F

    const/16 v0, 0xa

    .line 61
    iput v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mDistanceLevel:I

    const/4 v0, 0x3

    .line 84
    iput v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundMode:I

    const/4 v0, 0x7

    .line 92
    iput v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBackgroundMode:I

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/powervision/handheld/ui/views/RockerView;->initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 111
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    .line 112
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 115
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    .line 117
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    .line 118
    new-instance p2, Lcom/powervision/handheld/ui/views/RockerView$1;

    invoke-direct {p2, p0}, Lcom/powervision/handheld/ui/views/RockerView$1;-><init>(Lcom/powervision/handheld/ui/views/RockerView;)V

    .line 125
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/handheld/ui/views/RockerView;)Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    return-object p0
.end method

.method private callBack(DF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 443
    iget v2, v0, Lcom/powervision/handheld/ui/views/RockerView;->lastDistance:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Lcom/powervision/handheld/ui/views/RockerView;->baseDistance:F

    iget v4, v0, Lcom/powervision/handheld/ui/views/RockerView;->mDistanceLevel:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 444
    iput v1, v0, Lcom/powervision/handheld/ui/views/RockerView;->lastDistance:F

    .line 446
    :cond_0
    iget v2, v0, Lcom/powervision/handheld/ui/views/RockerView;->baseDistance:F

    iget v3, v0, Lcom/powervision/handheld/ui/views/RockerView;->mDistanceLevel:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 447
    iget-object v2, v0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x0

    const-wide v4, 0x4036800000000000L    # 22.5

    cmpg-double v6, v2, p1

    if-gtz v6, :cond_1

    cmpl-double v2, v4, p1

    if-gtz v2, :cond_2

    :cond_1
    const-wide v2, 0x4075180000000000L    # 337.5

    cmpg-double v6, v2, p1

    if-gtz v6, :cond_3

    const-wide v6, 0x4076800000000000L    # 360.0

    cmpl-double v8, v6, p1

    if-lez v8, :cond_3

    .line 464
    :cond_2
    iget-object v2, v0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;->getShakeDate(II)V

    goto/16 :goto_0

    :cond_3
    const-wide v6, 0x405c200000000000L    # 112.5

    const-wide v8, 0x4050e00000000000L    # 67.5

    cmpg-double v10, v8, p1

    if-gtz v10, :cond_4

    cmpl-double v10, v6, p1

    if-lez v10, :cond_4

    .line 467
    iget-object v2, v0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;->getShakeDate(II)V

    goto/16 :goto_0

    :cond_4
    const-wide v10, 0x4069500000000000L    # 202.5

    const-wide v12, 0x4063b00000000000L    # 157.5

    cmpg-double v14, v12, p1

    if-gtz v14, :cond_5

    cmpl-double v14, v10, p1

    if-lez v14, :cond_5

    .line 470
    iget-object v2, v0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;->getShakeDate(II)V

    goto :goto_0

    :cond_5
    const-wide v14, 0x4072480000000000L    # 292.5

    const-wide v16, 0x406ef00000000000L    # 247.5

    cmpg-double v18, v16, p1

    if-gtz v18, :cond_6

    cmpl-double v18, v14, p1

    if-lez v18, :cond_6

    .line 473
    iget-object v2, v0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    const/4 v3, 0x3

    invoke-interface {v2, v3, v1}, Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;->getShakeDate(II)V

    goto :goto_0

    :cond_6
    cmpg-double v18, v4, p1

    if-gtz v18, :cond_7

    cmpl-double v4, v8, p1

    if-lez v4, :cond_7

    .line 476
    iget-object v2, v0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v1}, Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;->getShakeDate(II)V

    goto :goto_0

    :cond_7
    cmpg-double v4, v6, p1

    if-gtz v4, :cond_8

    cmpl-double v4, v12, p1

    if-lez v4, :cond_8

    .line 479
    iget-object v2, v0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    const/4 v3, 0x5

    invoke-interface {v2, v3, v1}, Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;->getShakeDate(II)V

    goto :goto_0

    :cond_8
    cmpg-double v4, v10, p1

    if-gtz v4, :cond_9

    cmpl-double v4, v16, p1

    if-lez v4, :cond_9

    .line 482
    iget-object v2, v0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    const/4 v3, 0x6

    invoke-interface {v2, v3, v1}, Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;->getShakeDate(II)V

    goto :goto_0

    :cond_9
    cmpg-double v4, v14, p1

    if-gtz v4, :cond_a

    cmpl-double v4, v2, p1

    if-lez v4, :cond_a

    .line 485
    iget-object v2, v0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    const/4 v3, 0x7

    invoke-interface {v2, v3, v1}, Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;->getShakeDate(II)V

    :cond_a
    :goto_0
    return-void
.end method

.method private callBackFinish()V
    .locals 1

    .line 495
    sget-object v0, Lcom/powervision/handheld/ui/views/RockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/handheld/ui/views/RockerView$Direction;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->tempDirection:Lcom/powervision/handheld/ui/views/RockerView$Direction;

    .line 496
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mOnAngleChangeListener:Lcom/powervision/handheld/ui/views/RockerView$OnAngleChangeListener;

    if-eqz v0, :cond_0

    .line 497
    invoke-interface {v0}, Lcom/powervision/handheld/ui/views/RockerView$OnAngleChangeListener;->onFinish()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mOnShakeListener:Lcom/powervision/handheld/ui/views/RockerView$OnShakeListener;

    if-eqz v0, :cond_1

    .line 500
    invoke-interface {v0}, Lcom/powervision/handheld/ui/views/RockerView$OnShakeListener;->onFinish()V

    :cond_1
    return-void
.end method

.method private callBackStart()V
    .locals 1

    .line 427
    sget-object v0, Lcom/powervision/handheld/ui/views/RockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/handheld/ui/views/RockerView$Direction;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->tempDirection:Lcom/powervision/handheld/ui/views/RockerView$Direction;

    .line 428
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mOnAngleChangeListener:Lcom/powervision/handheld/ui/views/RockerView$OnAngleChangeListener;

    if-eqz v0, :cond_0

    .line 429
    invoke-interface {v0}, Lcom/powervision/handheld/ui/views/RockerView$OnAngleChangeListener;->onStart()V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mOnShakeListener:Lcom/powervision/handheld/ui/views/RockerView$OnShakeListener;

    if-eqz v0, :cond_1

    .line 432
    invoke-interface {v0}, Lcom/powervision/handheld/ui/views/RockerView$OnShakeListener;->onStart()V

    :cond_1
    return-void
.end method

.method private checkInArea(FF)Z
    .locals 6

    .line 326
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    sub-int/2addr v0, v1

    .line 327
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    add-int/2addr v1, v2

    .line 328
    iget-object v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    sub-int/2addr v2, v3

    .line 329
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    add-int/2addr v3, v4

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " cx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " cy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " left:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " right:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " top:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bottom:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    int-to-float p1, v3

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 411
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 412
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 414
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 416
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 417
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 418
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 419
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private getCallBackMode(I)Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 649
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCallBackMode:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    return-object p1

    .line 647
    :cond_0
    sget-object p1, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;->CALL_BACK_MODE_STATE_CHANGE:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    return-object p1

    .line 645
    :cond_1
    sget-object p1, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;->CALL_BACK_MODE_MOVE:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    return-object p1
.end method

.method private getRockerPositionPoint(FFFF)Landroid/graphics/Point;
    .locals 6

    .line 346
    iget v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x41700000    # 15.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartX:F

    sub-float v0, p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 348
    :goto_0
    iget v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartY:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    iget v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartY:F

    sub-float v1, p2, v1

    :cond_1
    mul-float v2, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v2, v1

    float-to-double v1, v2

    .line 350
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v2, v0

    .line 352
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    iget v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartY:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    int-to-double v4, v0

    mul-double v2, v2, v4

    .line 354
    invoke-direct {p0, v2, v3}, Lcom/powervision/handheld/ui/views/RockerView;->radian2Angle(D)D

    move-result-wide v4

    add-float v0, v1, p4

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_3

    float-to-int p3, v1

    int-to-float p3, p3

    .line 358
    invoke-direct {p0, v4, v5, p3}, Lcom/powervision/handheld/ui/views/RockerView;->callBack(DF)V

    .line 359
    new-instance p3, Landroid/graphics/Point;

    iget p4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartX:F

    sub-float/2addr p1, p4

    iget-object p4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    add-float/2addr p1, p4

    float-to-int p1, p1

    iget p4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartY:F

    sub-float/2addr p2, p4

    iget-object p4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    add-float/2addr p2, p4

    float-to-int p2, p2

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p3

    .line 362
    :cond_3
    iget p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartX:F

    float-to-double p1, p1

    sub-float/2addr p3, p4

    float-to-double p3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, p3

    add-double/2addr p1, v0

    double-to-int p1, p1

    .line 363
    iget p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartY:F

    float-to-double v0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double p3, p3, v2

    add-double/2addr v0, p3

    double-to-int p2, v0

    int-to-float p1, p1

    .line 365
    iget p3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartX:F

    sub-float p4, p1, p3

    sub-float p3, p1, p3

    mul-float p4, p4, p3

    int-to-float p2, p2

    iget p3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartY:F

    sub-float v0, p2, p3

    sub-float p3, p2, p3

    mul-float v0, v0, p3

    add-float/2addr p4, v0

    float-to-double p3, p4

    .line 366
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    int-to-float p3, p3

    .line 365
    invoke-direct {p0, v4, v5, p3}, Lcom/powervision/handheld/ui/views/RockerView;->callBack(DF)V

    .line 367
    new-instance p3, Landroid/graphics/Point;

    iget p4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartX:F

    sub-float/2addr p1, p4

    iget-object p4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    add-float/2addr p1, p4

    float-to-int p1, p1

    iget p4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartY:F

    sub-float/2addr p2, p4

    iget-object p4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    add-float/2addr p2, p4

    float-to-int p2, p2

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p3
.end method

.method private initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 139
    sget-object v0, Lcom/powervision/handheld/R$styleable;->Handheld_RockerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 142
    sget p2, Lcom/powervision/handheld/R$styleable;->Handheld_RockerView_handheld_areaBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p2, :cond_3

    .line 145
    instance-of v2, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 147
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    .line 148
    iput v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 149
    :cond_0
    instance-of v2, p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    .line 151
    invoke-direct {p0, p2}, Lcom/powervision/handheld/ui/views/RockerView;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x2

    .line 152
    iput p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 153
    :cond_1
    instance-of v2, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 155
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    iput p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaColor:I

    const/4 p2, 0x1

    .line 156
    iput p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 159
    :cond_2
    iput v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundMode:I

    goto :goto_0

    .line 163
    :cond_3
    iput v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundMode:I

    .line 166
    :goto_0
    sget p2, Lcom/powervision/handheld/R$styleable;->Handheld_RockerView_handheld_rockerBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v1, 0x7

    if-eqz p2, :cond_7

    .line 169
    instance-of v2, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    .line 171
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x4

    .line 172
    iput p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 173
    :cond_4
    instance-of v2, p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_5

    .line 175
    invoke-direct {p0, p2}, Lcom/powervision/handheld/ui/views/RockerView;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x6

    .line 176
    iput p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 177
    :cond_5
    instance-of v2, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_6

    .line 179
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    iput p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerColor:I

    const/4 p2, 0x5

    .line 180
    iput p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 183
    :cond_6
    iput v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBackgroundMode:I

    goto :goto_1

    .line 187
    :cond_7
    iput v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBackgroundMode:I

    .line 191
    :goto_1
    sget p2, Lcom/powervision/handheld/R$styleable;->Handheld_RockerView_handheld_rockerScale:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerScale:F

    .line 193
    sget p2, Lcom/powervision/handheld/R$styleable;->Handheld_RockerView_handheld_rockerSpeedLevel:I

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mDistanceLevel:I

    .line 195
    sget p2, Lcom/powervision/handheld/R$styleable;->Handheld_RockerView_handheld_rockerCallBackMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/powervision/handheld/ui/views/RockerView;->getCallBackMode(I)Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCallBackMode:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    .line 196
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private radian2Angle(D)D
    .locals 3

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    .line 399
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
.method public moveRocker(FF)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 379
    iget p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->Rocker_Position:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 389
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/RockerView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 225
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/RockerView;->getMeasuredWidth()I

    move-result v0

    .line 228
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/RockerView;->getMeasuredHeight()I

    move-result v1

    .line 230
    div-int/lit8 v2, v0, 0x2

    .line 231
    div-int/lit8 v3, v1, 0x2

    .line 234
    iget-object v4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Point;->set(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    if-gt v0, v1, :cond_0

    int-to-float v0, v2

    goto :goto_0

    :cond_0
    int-to-float v0, v3

    .line 236
    :goto_0
    iget v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerScale:F

    add-float/2addr v1, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaRadius:I

    int-to-float v0, v0

    .line 237
    iget v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    .line 239
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_2

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 244
    :cond_2
    iget v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-ne v2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-ne v2, v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 246
    :cond_5
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 247
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaRadius:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaRadius:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaRadius:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCenterPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaRadius:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 249
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_2
    const/4 v0, 0x4

    .line 261
    iget v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBackgroundMode:I

    if-eq v0, v2, :cond_8

    const/4 v0, 0x6

    if-ne v0, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x5

    if-ne v0, v2, :cond_7

    .line 269
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 273
    :cond_7
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 263
    :cond_8
    :goto_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 264
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 266
    iget-object v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 203
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 204
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 205
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 206
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

    .line 220
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/powervision/handheld/ui/views/RockerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_0

    .line 291
    :cond_0
    iget v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartX:F

    iget v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartY:F

    invoke-direct {p0, v0, v3}, Lcom/powervision/handheld/ui/views/RockerView;->checkInArea(FF)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 296
    iget v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaRadius:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    iput v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->baseDistance:F

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->baseDistance:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "baseDistance"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget v2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mAreaRadius:I

    iget v3, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/powervision/handheld/ui/views/RockerView;->getRockerPositionPoint(FFFF)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRockerPosition.x = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c mRockerPosition.y = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zzl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mRockerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/powervision/handheld/ui/views/RockerView;->moveRocker(FF)V

    goto :goto_0

    .line 305
    :cond_2
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/RockerView;->callBackFinish()V

    .line 306
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mOnShakeListener:Lcom/powervision/handheld/ui/views/RockerView$OnShakeListener;

    if-eqz p1, :cond_3

    .line 307
    sget-object v0, Lcom/powervision/handheld/ui/views/RockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/handheld/ui/views/RockerView$Direction;

    invoke-interface {p1, v0}, Lcom/powervision/handheld/ui/views/RockerView$OnShakeListener;->direction(Lcom/powervision/handheld/ui/views/RockerView$Direction;)V

    :cond_3
    const/4 p1, 0x0

    .line 309
    invoke-virtual {p0, p1, p1}, Lcom/powervision/handheld/ui/views/RockerView;->moveRocker(FF)V

    .line 310
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    if-eqz p1, :cond_5

    .line 311
    invoke-interface {p1}, Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;->stopShake()V

    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartX:F

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mStartY:F

    .line 287
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/RockerView;->callBackStart()V

    :cond_5
    :goto_0
    return v1
.end method

.method public setCallBackMode(Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mCallBackMode:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    return-void
.end method

.method public setOnAngleChangeListener(Lcom/powervision/handheld/ui/views/RockerView$OnAngleChangeListener;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mOnAngleChangeListener:Lcom/powervision/handheld/ui/views/RockerView$OnAngleChangeListener;

    return-void
.end method

.method public setOnDirectionAndDistanceListener(Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->onDirectionAndDistanceListener:Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    return-void
.end method

.method public setOnDistanceLevelListener(Lcom/powervision/handheld/ui/views/RockerView$OnDistanceLevelListener;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mOnDistanceLevelListener:Lcom/powervision/handheld/ui/views/RockerView$OnDistanceLevelListener;

    return-void
.end method

.method public setOnShakeListener(Lcom/powervision/handheld/ui/views/RockerView$DirectionMode;Lcom/powervision/handheld/ui/views/RockerView$OnShakeListener;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->mDirectionMode:Lcom/powervision/handheld/ui/views/RockerView$DirectionMode;

    .line 568
    iput-object p2, p0, Lcom/powervision/handheld/ui/views/RockerView;->mOnShakeListener:Lcom/powervision/handheld/ui/views/RockerView$OnShakeListener;

    return-void
.end method

.method public setRocker_Position(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/powervision/handheld/ui/views/RockerView;->Rocker_Position:I

    return-void
.end method
