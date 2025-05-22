.class public Lcom/powervision/base/views/LongTouchStickPointView;
.super Landroid/view/View;
.source "LongTouchStickPointView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;,
        Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;,
        Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;
    }
.end annotation


# static fields
.field private static final DRAG_MIN_DISTANCE:I = 0x14

.field private static final MAX_TOUCHPOINTS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LongTouchStickPointView"


# instance fields
.field private final CHANGE_FACTOR:I

.field private Tag:Ljava/lang/String;

.field private animator:Landroid/animation/ValueAnimator;

.field private canFling:Z

.field private canLongPress:Z

.field private density:I

.field private displayHeight:I

.field private displayWidth:I

.field doubleFlingListener:Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;

.field private dragMode:I

.field private inClearStatus:Z

.field private isLongTouch:Z

.field private isOne:Z

.field private isTouchEnable:Z

.field isTouchUp:Z

.field private mCenterRadius:F

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Landroid/content/Context;

.field private mEndX:F

.field private mEndY:F

.field mFingerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMaxDistance:F

.field private mMovingRadius:F

.field private mMovingX:F

.field private mMovingY:F

.field private mMyGestureDetectorListener:Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;

.field private mOnStickPointChangeListener:Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

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

.field private mStartRadius:F

.field private mTouchTime:J

.field private pointSize:I

.field secondYs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field slopDistance:I

.field private startY:F

.field private startYY:F

.field private stickPointBodyColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/powervision/base/views/LongTouchStickPointView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/base/views/LongTouchStickPointView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "LongTouchStick"

    .line 34
    iput-object p3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->Tag:Ljava/lang/String;

    const/16 p3, 0xa

    .line 36
    iput p3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->CHANGE_FACTOR:I

    const/4 p3, 0x0

    .line 68
    iput p3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->dragMode:I

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isTouchEnable:Z

    .line 80
    iput-boolean v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isTouchUp:Z

    .line 84
    iput-boolean p3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isOne:Z

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mFingerList:Ljava/util/List;

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPointMap:Ljava/util/Map;

    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->secondYs:Ljava/util/Map;

    .line 178
    iput p3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->slopDistance:I

    .line 185
    iput-boolean p3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->inClearStatus:Z

    .line 186
    iput p3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->pointSize:I

    const/4 v1, 0x0

    .line 187
    iput v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->startY:F

    .line 188
    iput v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->startYY:F

    .line 190
    iput-boolean p3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->canFling:Z

    .line 397
    iput-boolean v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->canLongPress:Z

    .line 105
    iput-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mContext:Landroid/content/Context;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/LongTouchStickPointView;->initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    invoke-direct {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->initPaint()V

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/base/views/LongTouchStickPointView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isLongTouch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/powervision/base/views/LongTouchStickPointView;)Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mOnStickPointChangeListener:Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/powervision/base/views/LongTouchStickPointView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingRadius:F

    return p1
.end method

.method static synthetic access$1102(Lcom/powervision/base/views/LongTouchStickPointView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMaxDistance:F

    return p1
.end method

.method static synthetic access$1200(Lcom/powervision/base/views/LongTouchStickPointView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->updatePath()V

    return-void
.end method

.method static synthetic access$1300(Lcom/powervision/base/views/LongTouchStickPointView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/base/views/LongTouchStickPointView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->canLongPress:Z

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/base/views/LongTouchStickPointView;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    return p0
.end method

.method static synthetic access$302(Lcom/powervision/base/views/LongTouchStickPointView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    return p1
.end method

.method static synthetic access$400(Lcom/powervision/base/views/LongTouchStickPointView;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    return p0
.end method

.method static synthetic access$402(Lcom/powervision/base/views/LongTouchStickPointView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    return p1
.end method

.method static synthetic access$500(Lcom/powervision/base/views/LongTouchStickPointView;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterRadius:F

    return p0
.end method

.method static synthetic access$502(Lcom/powervision/base/views/LongTouchStickPointView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterRadius:F

    return p1
.end method

.method static synthetic access$600(Lcom/powervision/base/views/LongTouchStickPointView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->density:I

    return p0
.end method

.method static synthetic access$702(Lcom/powervision/base/views/LongTouchStickPointView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mStartRadius:F

    return p1
.end method

.method static synthetic access$802(Lcom/powervision/base/views/LongTouchStickPointView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingX:F

    return p1
.end method

.method static synthetic access$902(Lcom/powervision/base/views/LongTouchStickPointView;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingY:F

    return p1
.end method

.method private compareDownSlop(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 359
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 363
    iget-object v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mFingerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 364
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 366
    iget-object v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPointMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/powervision/base/views/LongTouchStickPointView;->slopDistance:I

    mul-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mTouchTime:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x407f400000000000L    # 500.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    .line 368
    iget-boolean v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isOne:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    return v0
.end method

.method private compareTouch(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 334
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 339
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/powervision/base/views/LongTouchStickPointView;->slopDistance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "->compareTouch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPointMap:Ljava/util/Map;

    .line 342
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LongTouchStickPointView"

    .line 341
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v6, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPointMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->slopDistance:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mTouchTime:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x407f400000000000L    # 500.0

    cmpl-double p1, v3, v5

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private compareUpDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    const/4 p1, 0x1

    return p1
.end method

.method private compareUpSlop(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 296
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 300
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isOne:Z

    if-eqz v0, :cond_1

    .line 301
    invoke-direct {p0, p1}, Lcom/powervision/base/views/LongTouchStickPointView;->isOneCanMove(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 303
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFingerList.size() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mFingerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "flying"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 305
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " mPointMap.get(index) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPointMap:Ljava/util/Map;

    .line 307
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " 10 * "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "slopDistance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/base/views/LongTouchStickPointView;->slopDistance:I

    mul-int/lit8 v7, v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPointMap:Ljava/util/Map;

    .line 308
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/powervision/base/views/LongTouchStickPointView;->slopDistance:I

    mul-int/lit8 v8, v8, 0xa

    int-to-float v8, v8

    const/4 v9, 0x1

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-static {v2, v6}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System.currentTimeMillis() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " mTouchTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mTouchTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " \u95f4\u9694 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v10, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mTouchTime:J

    sub-long/2addr v7, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-static {v2, v6}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v6, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPointMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->slopDistance:I

    mul-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mTouchTime:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x4079000000000000L    # 400.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    .line 314
    iget-boolean v3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isOne:Z

    if-eqz v3, :cond_4

    return v9

    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_5
    return v3
.end method

.method private doOnMove(II)V
    .locals 3

    .line 536
    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->dragMode:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 537
    iget p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/LongTouchStickPointView;->verifyPointMove(FF)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 538
    iget p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    add-float/2addr p2, v1

    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/LongTouchStickPointView;->onMove(FF)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 541
    iget p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/LongTouchStickPointView;->verifyPointMove(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 542
    iget p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    add-float/2addr p1, v1

    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/LongTouchStickPointView;->onMove(FF)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    int-to-float p1, p1

    int-to-float p2, p2

    .line 545
    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/powervision/base/views/LongTouchStickPointView;->vectorToPoint(FFFF)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 546
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/LongTouchStickPointView;->onMove(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initAnim()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 143
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->animator:Landroid/animation/ValueAnimator;

    .line 144
    new-instance v1, Lcom/powervision/base/views/-$$Lambda$LongTouchStickPointView$pIwWJnzdl87dpDYVXh5bLbVOgA8;

    invoke-direct {v1, p0}, Lcom/powervision/base/views/-$$Lambda$LongTouchStickPointView$pIwWJnzdl87dpDYVXh5bLbVOgA8;-><init>(Lcom/powervision/base/views/LongTouchStickPointView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/powervision/base/views/LongTouchStickPointView$1;

    invoke-direct {v1, p0}, Lcom/powervision/base/views/LongTouchStickPointView$1;-><init>(Lcom/powervision/base/views/LongTouchStickPointView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 112
    sget-object v0, Lcom/powervision/base/R$styleable;->AircraftLongTouchStickPointView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 114
    sget p2, Lcom/powervision/base/R$styleable;->AircraftLongTouchStickPointView_aircraft_touch_stick_point_color:I

    .line 116
    invoke-virtual {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$color;->aircraft_seekbar_frame_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 114
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->stickPointBodyColor:I

    .line 117
    sget p2, Lcom/powervision/base/R$styleable;->AircraftLongTouchStickPointView_aircraft_touch_stick_point_darg_mode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->dragMode:I

    .line 119
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPaint()V
    .locals 3

    .line 123
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPath:Landroid/graphics/Path;

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPaint:Landroid/graphics/Paint;

    .line 125
    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->stickPointBodyColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    invoke-virtual {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->slopDistance:I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slopDistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->slopDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongTouchStickPointView"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->density:I

    .line 134
    invoke-direct {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->initAnim()V

    .line 135
    new-instance v0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;-><init>(Lcom/powervision/base/views/LongTouchStickPointView;)V

    iput-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMyGestureDetectorListener:Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;

    .line 136
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMyGestureDetectorListener:Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 137
    invoke-virtual {p0, p0}, Lcom/powervision/base/views/LongTouchStickPointView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isOneCanMove(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->startY:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->slopDistance:I

    mul-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mTouchTime:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onMove(FF)V
    .locals 2

    .line 563
    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingX:F

    .line 564
    iput p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingY:F

    .line 565
    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/powervision/base/views/LongTouchStickPointView;->vectorToPoint(FFFF)F

    move-result p1

    .line 567
    iget p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMaxDistance:F

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    div-float p1, p2, p1

    .line 569
    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingX:F

    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    sub-float/2addr v0, v1

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingX:F

    .line 570
    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingY:F

    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    sub-float/2addr v0, v1

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingY:F

    move p1, p2

    .line 573
    :cond_0
    iget p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mStartRadius:F

    const/high16 v0, 0x41200000    # 10.0f

    div-float v0, p1, v0

    sub-float v0, p2, v0

    iput v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterRadius:F

    sub-float/2addr p2, v0

    .line 574
    iput p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingRadius:F

    .line 576
    iget p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMaxDistance:F

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    const/16 p2, 0x3e8

    if-le p1, p2, :cond_1

    const/16 p1, 0x3e8

    .line 582
    :cond_1
    iget-object p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mOnStickPointChangeListener:Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;

    if-eqz p2, :cond_4

    .line 583
    iget p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->dragMode:I

    if-nez p2, :cond_2

    .line 584
    iget p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingX:F

    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    :goto_0
    neg-int p1, p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 586
    iget p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingY:F

    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    goto :goto_0

    .line 588
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mOnStickPointChangeListener:Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;

    invoke-interface {p2, p0, p1}, Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;->onStickPointValueChange(Lcom/powervision/base/views/LongTouchStickPointView;I)V

    .line 590
    :cond_4
    invoke-direct {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->updatePath()V

    .line 591
    invoke-virtual {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->invalidate()V

    return-void
.end method

.method private updateFingerStartPoint(Landroid/view/MotionEvent;)V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mFingerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 278
    iget-object v3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPointMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_2
    return-void
.end method

.method private updatePath()V
    .locals 12

    .line 501
    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingY:F

    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingX:F

    iget v3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v1

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-double v0, v0

    .line 504
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 506
    iget v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterRadius:F

    float-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    double-to-float v2, v2

    .line 507
    iget v3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterRadius:F

    float-to-double v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-float v3, v3

    .line 509
    iget v4, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingRadius:F

    float-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    double-to-float v4, v4

    .line 510
    iget v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingRadius:F

    float-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v5, v5, v0

    double-to-float v0, v5

    .line 512
    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    sub-float v5, v1, v2

    .line 513
    iget v6, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    add-float v7, v6, v3

    .line 515
    iget v8, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingX:F

    sub-float v9, v8, v4

    .line 516
    iget v10, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingY:F

    add-float v11, v10, v0

    add-float/2addr v4, v8

    sub-float v0, v10, v0

    add-float/2addr v2, v1

    sub-float v3, v6, v3

    add-float/2addr v1, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    add-float/2addr v6, v10

    div-float/2addr v6, v8

    .line 527
    iget-object v8, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 528
    iget-object v8, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 529
    iget-object v8, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1, v6, v9, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 530
    iget-object v8, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 531
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 532
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private vectorToPoint(FFFF)F
    .locals 4

    sub-float/2addr p3, p1

    .line 600
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private verifyPointMove(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 558
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41a00000    # 20.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v1, :cond_2

    const/4 v0, 0x5

    if-eq v3, v0, :cond_1

    goto/16 :goto_4

    .line 215
    :cond_1
    iput v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->pointSize:I

    .line 216
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->startYY:F

    goto/16 :goto_4

    .line 227
    :cond_2
    iget-boolean v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->canFling:Z

    if-nez v2, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_a

    .line 229
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    if-nez v3, :cond_6

    .line 231
    iget-boolean v6, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isOne:Z

    if-eqz v6, :cond_8

    if-ne v0, v1, :cond_4

    .line 233
    iput-boolean v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->canFling:Z

    goto :goto_4

    :cond_4
    int-to-float v5, v5

    .line 236
    iget v6, p0, Lcom/powervision/base/views/LongTouchStickPointView;->startY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43c80000    # 400.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    .line 237
    iget-boolean v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->inClearStatus:Z

    if-eqz v5, :cond_5

    .line 238
    iget-object v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->doubleFlingListener:Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;

    invoke-interface {v5}, Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;->reset()V

    goto :goto_1

    .line 240
    :cond_5
    iget-object v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->doubleFlingListener:Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;

    invoke-interface {v5}, Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;->oneFling()V

    .line 242
    :goto_1
    iput-boolean v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->canFling:Z

    .line 243
    iget-boolean v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->inClearStatus:Z

    xor-int/2addr v5, v4

    iput-boolean v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->inClearStatus:Z

    goto :goto_3

    :cond_6
    if-ne v3, v4, :cond_8

    int-to-float v5, v5

    .line 247
    iget v6, p0, Lcom/powervision/base/views/LongTouchStickPointView;->startYY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43960000    # 300.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    .line 248
    iget-boolean v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isOne:Z

    if-nez v5, :cond_8

    .line 249
    iget-boolean v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->inClearStatus:Z

    if-eqz v5, :cond_7

    .line 250
    iget-object v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->doubleFlingListener:Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;

    invoke-interface {v5}, Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;->reset()V

    goto :goto_2

    .line 252
    :cond_7
    iget-object v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->doubleFlingListener:Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;

    invoke-interface {v5}, Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;->oneFling()V

    .line 254
    :goto_2
    iput-boolean v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->canFling:Z

    .line 255
    iget-boolean v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->inClearStatus:Z

    xor-int/2addr v5, v4

    iput-boolean v5, p0, Lcom/powervision/base/views/LongTouchStickPointView;->inClearStatus:Z

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_9
    iput-boolean v4, p0, Lcom/powervision/base/views/LongTouchStickPointView;->canFling:Z

    const-string v0, "flying"

    const-string v1, "ACTION_DOWN"

    .line 210
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->startY:F

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mTouchTime:J

    .line 264
    :cond_a
    :goto_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public isInClearStatus()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->inClearStatus:Z

    return v0
.end method

.method public synthetic lambda$initAnim$0$LongTouchStickPointView(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 145
    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mEndX:F

    sub-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingX:F

    .line 146
    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mEndY:F

    sub-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingY:F

    .line 147
    iget p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mStartRadius:F

    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    iget v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    iget v3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingX:F

    .line 148
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/powervision/base/views/LongTouchStickPointView;->vectorToPoint(FFFF)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterRadius:F

    .line 149
    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mStartRadius:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingRadius:F

    .line 150
    invoke-direct {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->updatePath()V

    .line 151
    invoke-virtual {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 389
    iget-boolean v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isLongTouch:Z

    if-eqz v0, :cond_0

    .line 391
    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterX:F

    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterY:F

    iget v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mCenterRadius:F

    iget-object v3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 392
    iget v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingX:F

    iget v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingY:F

    iget v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingRadius:F

    iget-object v3, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 393
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 380
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 381
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/views/LongTouchStickPointView;->setMeasuredDimension(II)V

    .line 383
    invoke-virtual {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->displayWidth:I

    .line 384
    invoke-virtual {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->displayHeight:I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 405
    iget-boolean p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isTouchEnable:Z

    if-eqz p1, :cond_3

    .line 406
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 407
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 408
    iget-object v1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 409
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 410
    iput-boolean v2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isTouchUp:Z

    .line 412
    iget p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingX:F

    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mEndX:F

    .line 413
    iget p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mMovingY:F

    iput p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mEndY:F

    .line 414
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 417
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 418
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mOnStickPointChangeListener:Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;

    if-eqz p1, :cond_2

    .line 419
    invoke-interface {p1}, Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;->onStickViewActionUp()V

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 422
    iget-boolean p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isLongTouch:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isTouchUp:Z

    if-nez p2, :cond_2

    .line 423
    invoke-direct {p0, p1, v0}, Lcom/powervision/base/views/LongTouchStickPointView;->doOnMove(II)V

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 p1, 0x0

    .line 428
    iput-boolean p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isTouchEnable:Z

    .line 429
    invoke-virtual {p0}, Lcom/powervision/base/views/LongTouchStickPointView;->invalidate()V

    return p1
.end method

.method public setCanLongPress(Z)V
    .locals 0

    .line 400
    iput-boolean p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->canLongPress:Z

    return-void
.end method

.method public setDoubleFlingListener(Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->doubleFlingListener:Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;

    return-void
.end method

.method public setOnSeekViewChangeListener(Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->mOnStickPointChangeListener:Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;

    return-void
.end method

.method public setOne(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/powervision/base/views/LongTouchStickPointView;->isOne:Z

    return-void
.end method
