.class public Lcom/powervision/gcs/view/materialview/RippleView;
.super Landroid/widget/RelativeLayout;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/materialview/RippleView$RippleType;,
        Lcom/powervision/gcs/view/materialview/RippleView$OnRippleCompleteListener;
    }
.end annotation


# instance fields
.field private HEIGHT:I

.field private WIDTH:I

.field private animationRunning:Z

.field private canvasHandler:Landroid/os/Handler;

.field private durationEmpty:I

.field private frameRate:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hasToZoom:Ljava/lang/Boolean;

.field private isCentered:Ljava/lang/Boolean;

.field private onCompletionListener:Lcom/powervision/gcs/view/materialview/RippleView$OnRippleCompleteListener;

.field private originBitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private radiusMax:F

.field private rippleAlpha:I

.field private rippleColor:I

.field private rippleDuration:I

.field private ripplePadding:I

.field private rippleType:Ljava/lang/Integer;

.field private final runnable:Ljava/lang/Runnable;

.field private scaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private timer:I

.field private timerEmpty:I

.field private x:F

.field private y:F

.field private zoomDuration:I

.field private zoomScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xa

    .line 39
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    const/16 p1, 0x190

    .line 40
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    const/16 p1, 0x5a

    .line 41
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleAlpha:I

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->radiusMax:F

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->animationRunning:Z

    .line 45
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    .line 46
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timerEmpty:I

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->durationEmpty:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 48
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->x:F

    .line 49
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->y:F

    .line 61
    new-instance p1, Lcom/powervision/gcs/view/materialview/RippleView$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/materialview/RippleView$1;-><init>(Lcom/powervision/gcs/view/materialview/RippleView;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xa

    .line 39
    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    const/16 v0, 0x190

    .line 40
    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    const/16 v0, 0x5a

    .line 41
    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleAlpha:I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->radiusMax:F

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->animationRunning:Z

    .line 45
    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    .line 46
    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timerEmpty:I

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->durationEmpty:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 48
    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->x:F

    .line 49
    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->y:F

    .line 61
    new-instance v0, Lcom/powervision/gcs/view/materialview/RippleView$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/materialview/RippleView$1;-><init>(Lcom/powervision/gcs/view/materialview/RippleView;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->runnable:Ljava/lang/Runnable;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/materialview/RippleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xa

    .line 39
    iput p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    const/16 p3, 0x190

    .line 40
    iput p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    const/16 p3, 0x5a

    .line 41
    iput p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleAlpha:I

    const/4 p3, 0x0

    .line 43
    iput p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->radiusMax:F

    const/4 p3, 0x0

    .line 44
    iput-boolean p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->animationRunning:Z

    .line 45
    iput p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    .line 46
    iput p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timerEmpty:I

    const/4 p3, -0x1

    .line 47
    iput p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->durationEmpty:I

    const/high16 p3, -0x40800000    # -1.0f

    .line 48
    iput p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->x:F

    .line 49
    iput p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->y:F

    .line 61
    new-instance p3, Lcom/powervision/gcs/view/materialview/RippleView$1;

    invoke-direct {p3, p0}, Lcom/powervision/gcs/view/materialview/RippleView$1;-><init>(Lcom/powervision/gcs/view/materialview/RippleView;)V

    iput-object p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->runnable:Ljava/lang/Runnable;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/materialview/RippleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/materialview/RippleView;Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/materialview/RippleView;->sendClickEvent(Ljava/lang/Boolean;)V

    return-void
.end method

.method private createAnimation(FF)V
    .locals 3

    .line 228
    invoke-virtual {p0}, Lcom/powervision/gcs/view/materialview/RippleView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->animationRunning:Z

    if-nez v0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->hasToZoom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/materialview/RippleView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->WIDTH:I

    iget v1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->HEIGHT:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->radiusMax:F

    .line 234
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 235
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->radiusMax:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->radiusMax:F

    .line 237
    :cond_1
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->radiusMax:F

    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->ripplePadding:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->radiusMax:F

    .line 239
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->isCentered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 243
    :cond_2
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->x:F

    .line 244
    iput p2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->y:F

    goto :goto_1

    .line 240
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/materialview/RippleView;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->x:F

    .line 241
    invoke-virtual {p0}, Lcom/powervision/gcs/view/materialview/RippleView;->getMeasuredHeight()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->y:F

    .line 247
    :goto_1
    iput-boolean v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->animationRunning:Z

    .line 249
    iget-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    .line 250
    invoke-virtual {p0, v2}, Lcom/powervision/gcs/view/materialview/RippleView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    .line 252
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/gcs/view/materialview/RippleView;->invalidate()V

    :cond_5
    return-void
.end method

.method private getCircleBitmap(I)Landroid/graphics/Bitmap;
    .locals 8

    .line 292
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 294
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 295
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/powervision/gcs/view/materialview/RippleView;->x:F

    int-to-float p1, p1

    sub-float v5, v4, p1

    float-to-int v5, v5

    iget v6, p0, Lcom/powervision/gcs/view/materialview/RippleView;->y:F

    sub-float v7, v6, p1

    float-to-int v7, v7

    add-float/2addr v4, p1

    float-to-int v4, v4

    add-float/2addr v6, p1

    float-to-int v6, v6

    invoke-direct {v3, v5, v7, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    .line 297
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x0

    .line 298
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 299
    iget v4, p0, Lcom/powervision/gcs/view/materialview/RippleView;->x:F

    iget v5, p0, Lcom/powervision/gcs/view/materialview/RippleView;->y:F

    invoke-virtual {v1, v4, v5, p1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 301
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 302
    iget-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/powervision/gcs/view/materialview/RippleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/powervision/gcs/R$styleable;->RippleView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 95
    sget v0, Lcom/powervision/gcs/R$styleable;->RippleView_rv_color:I

    invoke-virtual {p0}, Lcom/powervision/gcs/view/materialview/RippleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleColor:I

    .line 96
    sget v0, Lcom/powervision/gcs/R$styleable;->RippleView_rv_type:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleType:Ljava/lang/Integer;

    .line 97
    sget v0, Lcom/powervision/gcs/R$styleable;->RippleView_rv_zoom:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->hasToZoom:Ljava/lang/Boolean;

    .line 98
    sget v0, Lcom/powervision/gcs/R$styleable;->RippleView_rv_centered:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->isCentered:Ljava/lang/Boolean;

    .line 99
    sget v0, Lcom/powervision/gcs/R$styleable;->RippleView_rv_rippleDuration:I

    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    .line 100
    sget v0, Lcom/powervision/gcs/R$styleable;->RippleView_rv_framerate:I

    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    .line 101
    sget v0, Lcom/powervision/gcs/R$styleable;->RippleView_rv_alpha:I

    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleAlpha:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleAlpha:I

    .line 102
    sget v0, Lcom/powervision/gcs/R$styleable;->RippleView_rv_ripplePadding:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->ripplePadding:I

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->canvasHandler:Landroid/os/Handler;

    .line 104
    sget v0, Lcom/powervision/gcs/R$styleable;->RippleView_rv_zoomScale:I

    const v2, 0x3f83d70a    # 1.03f

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->zoomScale:F

    .line 105
    sget v0, Lcom/powervision/gcs/R$styleable;->RippleView_rv_zoomDuration:I

    const/16 v2, 0xc8

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->zoomDuration:I

    .line 106
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object p2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object p2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object p2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleAlpha:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/materialview/RippleView;->setWillNotDraw(Z)V

    .line 114
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v1, Lcom/powervision/gcs/view/materialview/RippleView$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/materialview/RippleView$2;-><init>(Lcom/powervision/gcs/view/materialview/RippleView;)V

    invoke-direct {p2, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->gestureDetector:Landroid/view/GestureDetector;

    .line 133
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/materialview/RippleView;->setDrawingCacheEnabled(Z)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/materialview/RippleView;->setClickable(Z)V

    return-void
.end method

.method private sendClickEvent(Ljava/lang/Boolean;)V
    .locals 7

    .line 277
    invoke-virtual {p0}, Lcom/powervision/gcs/view/materialview/RippleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/powervision/gcs/view/materialview/RippleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/AdapterView;

    .line 279
    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 280
    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 281
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 286
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public animateRipple(FF)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/materialview/RippleView;->createAnimation(FF)V

    return-void
.end method

.method public animateRipple(Landroid/view/MotionEvent;)V
    .locals 1

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/powervision/gcs/view/materialview/RippleView;->createAnimation(FF)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 139
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 140
    iget-boolean v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->animationRunning:Z

    if-eqz v0, :cond_8

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    iget v1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    mul-int v1, v1, v2

    const/4 v3, -0x1

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->animationRunning:Z

    .line 144
    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    .line 145
    iput v3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->durationEmpty:I

    .line 146
    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timerEmpty:I

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/materialview/RippleView;->invalidate()V

    .line 153
    iget-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->onCompletionListener:Lcom/powervision/gcs/view/materialview/RippleView$OnRippleCompleteListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/powervision/gcs/view/materialview/RippleView$OnRippleCompleteListener;->onComplete(Lcom/powervision/gcs/view/materialview/RippleView;)V

    :cond_1
    return-void

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->canvasHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->runnable:Ljava/lang/Runnable;

    int-to-long v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    if-nez v0, :cond_3

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    :cond_3
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->x:F

    iget v1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->y:F

    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->radiusMax:F

    iget v4, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    int-to-float v4, v4

    iget v5, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v2, v2, v4

    iget-object v4, p0, Lcom/powervision/gcs/view/materialview/RippleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->paint:Landroid/graphics/Paint;

    const-string v1, "#ffff4444"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    int-to-float v2, v0

    iget v4, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    int-to-float v5, v4

    mul-float v2, v2, v5

    iget v5, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    int-to-float v6, v5

    div-float/2addr v2, v6

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_5

    .line 167
    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->durationEmpty:I

    if-ne v2, v3, :cond_4

    mul-int v0, v0, v4

    sub-int/2addr v5, v0

    .line 168
    iput v5, p0, Lcom/powervision/gcs/view/materialview/RippleView;->durationEmpty:I

    .line 170
    :cond_4
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timerEmpty:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timerEmpty:I

    .line 171
    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->radiusMax:F

    int-to-float v0, v0

    iget v3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    iget v3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->durationEmpty:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/materialview/RippleView;->getCircleBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    iget-object v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 179
    iget p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    int-to-float p1, p1

    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    int-to-float v2, v0

    mul-float p1, p1, v2

    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    const v2, 0x3f19999a    # 0.6f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    .line 180
    iget-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleAlpha:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget v4, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timerEmpty:I

    int-to-float v4, v4

    int-to-float v0, v0

    mul-float v4, v4, v0

    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->durationEmpty:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    mul-float v2, v2, v4

    sub-float/2addr v3, v2

    float-to-int v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 182
    :cond_6
    iget-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 184
    :cond_7
    iget-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleAlpha:I

    int-to-float v2, v0

    int-to-float v0, v0

    iget v3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    int-to-float v3, v3

    iget v4, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget v4, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    :goto_0
    iget p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->timer:I

    :cond_8
    return-void
.end method

.method public getFrameRate()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    return v0
.end method

.method public getRippleAlpha()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleAlpha:I

    return v0
.end method

.method public getRippleColor()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleColor:I

    return v0
.end method

.method public getRippleDuration()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    return v0
.end method

.method public getRipplePadding()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->ripplePadding:I

    return v0
.end method

.method public getRippleType()Lcom/powervision/gcs/view/materialview/RippleView$RippleType;
    .locals 2

    .line 322
    invoke-static {}, Lcom/powervision/gcs/view/materialview/RippleView$RippleType;->values()[Lcom/powervision/gcs/view/materialview/RippleView$RippleType;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getZoomDuration()I
    .locals 1

    .line 387
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->zoomDuration:I

    return v0
.end method

.method public getZoomScale()F
    .locals 1

    .line 374
    iget v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->zoomScale:F

    return v0
.end method

.method public isCentered()Ljava/lang/Boolean;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->isCentered:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isZooming()Ljava/lang/Boolean;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->hasToZoom:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/materialview/RippleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 268
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 193
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->WIDTH:I

    .line 194
    iput p2, p0, Lcom/powervision/gcs/view/materialview/RippleView;->HEIGHT:I

    .line 196
    new-instance p3, Landroid/view/animation/ScaleAnimation;

    iget v4, p0, Lcom/powervision/gcs/view/materialview/RippleView;->zoomScale:F

    const/4 p4, 0x2

    div-int/2addr p1, p4

    int-to-float v5, p1

    div-int/2addr p2, p4

    int-to-float v6, p2

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p3

    move v2, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object p3, p0, Lcom/powervision/gcs/view/materialview/RippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 197
    iget p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->zoomDuration:I

    int-to-long p1, p1

    invoke-virtual {p3, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 198
    iget-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p4}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 199
    iget-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/materialview/RippleView;->animateRipple(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    .line 260
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/materialview/RippleView;->sendClickEvent(Ljava/lang/Boolean;)V

    .line 262
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCentered(Ljava/lang/Boolean;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->isCentered:Ljava/lang/Boolean;

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 422
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->frameRate:I

    return-void
.end method

.method public setOnRippleCompleteListener(Lcom/powervision/gcs/view/materialview/RippleView$OnRippleCompleteListener;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->onCompletionListener:Lcom/powervision/gcs/view/materialview/RippleView$OnRippleCompleteListener;

    return-void
.end method

.method public setRippleAlpha(I)V
    .locals 0

    .line 435
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleAlpha:I

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/powervision/gcs/view/materialview/RippleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleColor:I

    return-void
.end method

.method public setRippleDuration(I)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleDuration:I

    return-void
.end method

.method public setRipplePadding(I)V
    .locals 0

    .line 357
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->ripplePadding:I

    return-void
.end method

.method public setRippleType(Lcom/powervision/gcs/view/materialview/RippleView$RippleType;)V
    .locals 0

    .line 331
    invoke-virtual {p1}, Lcom/powervision/gcs/view/materialview/RippleView$RippleType;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->rippleType:Ljava/lang/Integer;

    return-void
.end method

.method public setZoomDuration(I)V
    .locals 0

    .line 396
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->zoomDuration:I

    return-void
.end method

.method public setZoomScale(F)V
    .locals 0

    .line 383
    iput p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->zoomScale:F

    return-void
.end method

.method public setZooming(Ljava/lang/Boolean;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView;->hasToZoom:Ljava/lang/Boolean;

    return-void
.end method
