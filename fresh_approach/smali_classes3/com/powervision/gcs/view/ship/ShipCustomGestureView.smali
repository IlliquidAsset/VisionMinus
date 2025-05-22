.class public Lcom/powervision/gcs/view/ship/ShipCustomGestureView;
.super Landroid/view/View;
.source "ShipCustomGestureView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;,
        Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;,
        Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;
    }
.end annotation


# static fields
.field private static final BOTH:I = 0x3

.field public static final DEFAULT_MIN_DISTANCE:I = 0xa

.field private static final DUIJIAO:I = 0x2

.field private static final NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShipCustomGestureView"

.field private static final WANGGE:I = 0x1


# instance fields
.field private CURRENT:I

.field private Height:I

.field private RockerCircleR:I

.field private RockerCircleX:I

.field private RockerCircleY:I

.field private SmallRockerCircleR:F

.field private SmallRockerCircleX:F

.field private SmallRockerCircleY:F

.field private Width:I

.field private bitmap:Landroid/graphics/Bitmap;

.field canCalculate:Z

.field private canDraw:Z

.field private canTouch:Z

.field private canvas:Landroid/graphics/Canvas;

.field private cloudBackgroundBitmap:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field public defaultRockerCircleR:I

.field public defaultSmallRockerCircleR:I

.field private doubleFling:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;

.field private downt:J

.field private gestrueControlListener:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;

.field holdOn:Z

.field private inClearStatus:Z

.field private isDoubleTouch:Z

.field public isEgg:Z

.field isMoveMode:Z

.field private isShowCloudControl:Z

.field private linePaint:Landroid/graphics/Paint;

.field mFingerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerSpace:F

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mMaxSlopDistance:I

.field mPointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mTouchTime:J

.field public myOnGestureListener:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;

.field private paint:Landroid/graphics/Paint;

.field private rectWidth:F

.field private rectX:F

.field private rectY:F

.field private scaleAnimator:Landroid/animation/ValueAnimator;

.field private scrollt:J

.field slopDistance:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 44
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->CURRENT:I

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->linePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Height:I

    .line 47
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Width:I

    const/16 v0, 0xbe

    .line 49
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->defaultRockerCircleR:I

    const/16 v0, 0x1e

    .line 51
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->defaultSmallRockerCircleR:I

    .line 64
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleX:I

    .line 65
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleY:I

    .line 66
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleR:I

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleX:F

    .line 70
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    .line 71
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleR:F

    .line 76
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->rectX:F

    .line 77
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->rectY:F

    .line 78
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->rectWidth:F

    .line 80
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->x:F

    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->y:F

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isEgg:Z

    .line 90
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canDraw:Z

    .line 91
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isDoubleTouch:Z

    .line 92
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isShowCloudControl:Z

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mPointMap:Ljava/util/Map;

    .line 99
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->slopDistance:I

    .line 101
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canCalculate:Z

    .line 104
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isMoveMode:Z

    .line 108
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->holdOn:Z

    .line 481
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;-><init>(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)V

    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->gestrueControlListener:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;

    .line 565
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->inClearStatus:Z

    .line 844
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canTouch:Z

    .line 114
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->context:Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->slopDistance:I

    mul-int/lit8 v1, v1, 0x3

    .line 116
    iput v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mMaxSlopDistance:I

    .line 118
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getViewClearMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isMoveMode:Z

    .line 119
    new-instance p2, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;

    invoke-direct {p2}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->myOnGestureListener:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;

    .line 120
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->myOnGestureListener:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;

    invoke-direct {p2, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 121
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->myOnGestureListener:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->gestrueControlListener:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;

    invoke-virtual {p2, v1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->addGestrueControlListener(Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->setKeepScreenOn(Z)V

    .line 123
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    .line 124
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->setFocusable(Z)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->setFocusableInTouchMode(Z)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 128
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42c80000    # 100.0f

    .line 129
    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->defaultRockerCircleR:I

    const/high16 p2, 0x41000000    # 8.0f

    .line 131
    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->defaultSmallRockerCircleR:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 133
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->scaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x320

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 135
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->camera_auto_fouce:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->bitmap:Landroid/graphics/Bitmap;

    .line 136
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->ship_cloud_slider_bg_:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->cloudBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {p0, p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->initPaint()V

    .line 139
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;-><init>(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canDraw:Z

    return p1
.end method

.method static synthetic access$1002(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleX:F

    return p1
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->rectWidth:F

    return p1
.end method

.method static synthetic access$1102(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    return p1
.end method

.method static synthetic access$1202(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleR:F

    return p1
.end method

.method static synthetic access$1300(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->downt:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->rectX:F

    return p1
.end method

.method static synthetic access$1602(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->rectY:F

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleR:I

    return p0
.end method

.method static synthetic access$202(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleR:I

    return p1
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->scaleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$402(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isShowCloudControl:Z

    return p1
.end method

.method static synthetic access$500(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)Landroid/graphics/Paint;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->x:F

    return p0
.end method

.method static synthetic access$602(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->x:F

    return p1
.end method

.method static synthetic access$700(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->y:F

    return p0
.end method

.method static synthetic access$702(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->y:F

    return p1
.end method

.method static synthetic access$802(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleX:I

    return p1
.end method

.method static synthetic access$902(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleY:I

    return p1
.end method

.method private cancel(FFFF)V
    .locals 0

    .line 838
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->initRockerCircle()V

    .line 839
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->initSmallRockerCircle()V

    const/4 p1, 0x0

    .line 841
    invoke-static {p1}, Lcom/powervision/natives/PVSDK_W4_API;->setGimbalPitch(S)V

    return-void
.end method

.method private compareDownSlop(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 920
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 924
    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 935
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 936
    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mPointMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v4, v3

    .line 937
    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mMaxSlopDistance:I

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private compareTouch(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 948
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 957
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    .line 960
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 963
    iget-object v6, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mPointMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->slopDistance:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mTouchTime:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x407f400000000000L    # 500.0

    cmpl-double p1, v3, v5

    if-lez p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private compareUpSlop(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 886
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 890
    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 902
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 903
    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mPointMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v3, v4

    .line 909
    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mMaxSlopDistance:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private drawDrawWang(Landroid/graphics/Canvas;)V
    .locals 8

    .line 723
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Height:I

    div-int/lit8 v1, v0, 0x3

    int-to-float v4, v1

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Width:I

    int-to-float v5, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->linePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 724
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Height:I

    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v4, v1

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Width:I

    int-to-float v5, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 725
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Width:I

    div-int/lit8 v1, v0, 0x3

    int-to-float v3, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Height:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->linePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 726
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Width:I

    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v3, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Height:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDuijiao(Landroid/graphics/Canvas;)V
    .locals 7

    .line 710
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Width:I

    int-to-float v4, v0

    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Height:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->linePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 711
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Height:I

    int-to-float v3, v0

    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Width:I

    int-to-float v4, v0

    iget-object v6, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->linePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getActionName(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "ACTION_MOVE"

    goto :goto_0

    :cond_1
    const-string p1, "ACTION_UP"

    goto :goto_0

    :cond_2
    const-string p1, "ACTION_DOWN"

    :goto_0
    return-object p1
.end method

.method private getDistance(Landroid/view/MotionEvent;)F
    .locals 7

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 215
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private getLength(FFFF)D
    .locals 4

    sub-float/2addr p1, p3

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 831
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p2, p4

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private getMoveDistance(FF)F
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 220
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private initPaint()V
    .locals 3

    .line 186
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->linePaint:Landroid/graphics/Paint;

    .line 187
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->hint_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateFingerStartPoint(Landroid/view/MotionEvent;)V
    .locals 4

    .line 857
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 866
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 870
    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mPointMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "ShipCustomGestureView"

    const-string v2, "updateFingerStartPoint: "

    .line 872
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 877
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->holdOn:Z

    .line 878
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canCalculate:Z

    .line 879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mTouchTime:J

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_b

    const/4 v5, 0x0

    if-eq v2, v3, :cond_a

    if-eq v2, v4, :cond_4

    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    const/4 v0, 0x6

    if-eq v2, v0, :cond_0

    goto/16 :goto_0

    .line 326
    :cond_0
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canCalculate:Z

    .line 327
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->holdOn:Z

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 333
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->updateFingerStartPoint(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 312
    :cond_1
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canCalculate:Z

    .line 313
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->holdOn:Z

    if-eq v1, v3, :cond_2

    if-ne v1, v4, :cond_3

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 317
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 322
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->updateFingerStartPoint(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 350
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_d

    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canCalculate:Z

    if-eqz v0, :cond_d

    .line 352
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isMoveMode:Z

    const-string v1, "ShipCustomGestureView"

    if-eqz v0, :cond_8

    .line 353
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->inClearStatus:Z

    if-eqz v0, :cond_6

    .line 354
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->compareUpSlop(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->compareDownSlop(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_5
    const-string v0, "compareSlop: \u4e0a\u6ed1"

    .line 355
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->inClearStatus:Z

    .line 358
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->doubleFling:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;->reset()V

    .line 359
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canCalculate:Z

    goto :goto_0

    .line 362
    :cond_6
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->compareUpSlop(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->compareDownSlop(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_7
    const-string v0, "compareSlop: \u4e0b\u6ed1"

    .line 363
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iput-boolean v3, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->inClearStatus:Z

    .line 366
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->doubleFling:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;->doubleFling()V

    .line 367
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canCalculate:Z

    goto :goto_0

    .line 372
    :cond_8
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->holdOn:Z

    if-eqz v0, :cond_d

    .line 373
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->compareTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "compareTouch: hold"

    .line 374
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->holdOn:Z

    .line 377
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->inClearStatus:Z

    if-eqz v0, :cond_9

    .line 378
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->inClearStatus:Z

    .line 379
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->doubleFling:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;->reset()V

    goto :goto_0

    .line 381
    :cond_9
    iput-boolean v3, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->inClearStatus:Z

    .line 382
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->doubleFling:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;->doubleFling()V

    goto :goto_0

    .line 337
    :cond_a
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canCalculate:Z

    .line 338
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->holdOn:Z

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 344
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->updateFingerStartPoint(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_b
    if-eq v1, v3, :cond_c

    if-ne v1, v4, :cond_d

    .line 305
    :cond_c
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 306
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_d
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawRect()V
    .locals 5

    .line 773
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 774
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 776
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    const v1, -0x545455

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 777
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 780
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canDraw:Z

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->rectX:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->rectY:F

    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public drawTheGestor()V
    .locals 7

    .line 730
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 731
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 733
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->cloudBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 734
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->cloudBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 735
    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleX:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleY:I

    if-eqz v2, :cond_6

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleY:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "----"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleX:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yuntaijiaodu"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->cloudBackgroundBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleX:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v5, v1

    int-to-float v1, v5

    iget v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleY:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v5, v0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 738
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleY:I

    add-int v4, v2, v0

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0xa

    int-to-float v1, v2

    .line 739
    iput v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "--\u5224\u65ad\u62d6\u52a8\u5230\u6700\u4e0b--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleY:I

    sub-int v4, v2, v0

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0xa

    int-to-float v1, v2

    .line 743
    iput v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "--\u5224\u65ad\u62d6\u52a8\u5230\u6700\u4e0a--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 747
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleR:F

    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 748
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleY:I

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    sub-float v3, v1, v3

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0xa

    int-to-float v0, v2

    sub-float/2addr v1, v0

    cmpl-float v0, v1, v5

    if-nez v0, :cond_2

    goto :goto_0

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    const-string v1, "#6c99ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 753
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleR:F

    sub-float/2addr v3, v4

    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 757
    :cond_3
    :goto_0
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-float v0, v0, v4

    float-to-int v0, v0

    int-to-short v0, v0

    if-lez v0, :cond_4

    const/16 v1, 0x3dd

    if-le v0, v1, :cond_5

    const/16 v0, 0x3e8

    goto :goto_1

    :cond_4
    const/16 v1, -0x3dd

    if-ge v0, v1, :cond_5

    const/16 v0, -0x3e8

    :cond_5
    :goto_1
    neg-int v0, v0

    int-to-short v0, v0

    .line 767
    invoke-static {v0}, Lcom/powervision/natives/PVSDK_W4_API;->setGimbalPitch(S)V

    :cond_6
    return-void
.end method

.method public getRad(FFFF)D
    .locals 6

    sub-float/2addr p3, p1

    sub-float p1, p2, p4

    float-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 789
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    div-float/2addr p3, p1

    float-to-double v0, p3

    .line 791
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p1, v0

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    neg-float p1, p1

    :cond_0
    float-to-double p1, p1

    return-wide p1
.end method

.method public getXY(FFFD)V
    .locals 4

    float-to-double v0, p3

    .line 799
    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-float p3, v2

    add-float/2addr p3, p1

    iput p3, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleX:F

    .line 800
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double v0, v0, p3

    double-to-float p1, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    return-void
.end method

.method public initRect()V
    .locals 1

    const/4 v0, 0x0

    .line 816
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->rectX:F

    .line 817
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->rectY:F

    .line 818
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->rectWidth:F

    return-void
.end method

.method public initRockerCircle()V
    .locals 1

    const/4 v0, 0x0

    .line 804
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleX:I

    .line 805
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleY:I

    .line 806
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleR:I

    return-void
.end method

.method public initSmallRockerCircle()V
    .locals 1

    const/4 v0, 0x0

    .line 810
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleX:F

    .line 811
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    .line 812
    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleR:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 682
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canvas:Landroid/graphics/Canvas;

    .line 683
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isEgg:Z

    if-nez v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->drawRect()V

    .line 686
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isShowCloudControl:Z

    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->drawTheGestor()V

    .line 689
    :cond_1
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->CURRENT:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 701
    :cond_2
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->drawDrawWang(Landroid/graphics/Canvas;)V

    .line 702
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->drawDuijiao(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 698
    :cond_3
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->drawDuijiao(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 695
    :cond_4
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->drawDrawWang(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 175
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 176
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Height:I

    .line 177
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Width:I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 398
    iget-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canTouch:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 454
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 455
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 456
    iget p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleX:F

    iget v2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    iget v4, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleY:I

    int-to-float v4, v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->cancel(FFFF)V

    .line 457
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isShowCloudControl:Z

    const/4 p1, 0x0

    .line 458
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->mFingerSpace:F

    .line 460
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleX:F

    .line 461
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleY:F

    .line 462
    iget p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->defaultRockerCircleR:I

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->RockerCircleR:I

    .line 463
    iget p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->defaultSmallRockerCircleR:I

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->SmallRockerCircleR:F

    .line 465
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->invalidate()V

    return v1

    .line 468
    :cond_1
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canTouch:Z

    .line 469
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->invalidate()V

    return v0
.end method

.method public setAirType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 194
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isEgg:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isEgg:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setCanTouch(Z)V
    .locals 0

    .line 848
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->canTouch:Z

    return-void
.end method

.method public setCloudControlVisible(Z)V
    .locals 0

    .line 476
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isShowCloudControl:Z

    .line 477
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->invalidate()V

    return-void
.end method

.method public setDoubleFling(Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->doubleFling:Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;

    return-void
.end method

.method public setGridType(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->CURRENT:I

    .line 203
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->invalidate()V

    return-void
.end method

.method public setMoveMode(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isMoveMode:Z

    return-void
.end method

.method public setScreenSize(II)V
    .locals 0

    .line 717
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Height:I

    .line 718
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->Width:I

    return-void
.end method
