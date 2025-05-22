.class public Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;
.super Ljava/lang/Object;
.source "MatrixImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/MatrixImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MatrixTouchListener"
.end annotation


# static fields
.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_UNABLE:I = 0x3

.field private static final MODE_ZOOM:I = 0x2


# instance fields
.field private mCurrentMatrix:Landroid/graphics/Matrix;

.field mDobleClickScale:F

.field mFirstMove:Z

.field mLeftDragable:Z

.field mMaxScale:F

.field private mMode:I

.field mRightDragable:Z

.field private mStartDis:F

.field private mStartPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/powervision/gcs/view/MatrixImageView;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/MatrixImageView;)V
    .locals 1

    .line 109
    iput-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 125
    iput p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mMaxScale:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 129
    iput p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mDobleClickScale:F

    const/4 p1, 0x0

    .line 130
    iput p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mMode:I

    .line 138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 150
    iput-boolean p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    .line 151
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mStartPoint:Landroid/graphics/PointF;

    return-void
.end method

.method private checkDragable()V
    .locals 5

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mLeftDragable:Z

    .line 213
    iput-boolean v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mRightDragable:Z

    .line 214
    iput-boolean v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 216
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x2

    .line 218
    aget v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    .line 219
    iput-boolean v3, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mRightDragable:Z

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v2}, Lcom/powervision/gcs/view/MatrixImageView;->access$300(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result v2

    aget v4, v0, v3

    mul-float v2, v2, v4

    aget v0, v0, v1

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/MatrixImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    .line 222
    iput-boolean v3, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mLeftDragable:Z

    :cond_1
    return-void
.end method

.method private checkDxBound([FFF)F
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/MatrixImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 294
    iget-boolean v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mLeftDragable:Z

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    if-nez v1, :cond_1

    cmpg-float v1, p2, v3

    if-gez v1, :cond_1

    .line 296
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p1, p1, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    if-eqz p1, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->stopDrag()V

    :cond_0
    return v3

    .line 301
    :cond_1
    iget-boolean v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mRightDragable:Z

    if-nez v1, :cond_3

    cmpl-float v1, p2, v3

    if-lez v1, :cond_3

    .line 303
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p1, p1, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    if-eqz p1, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->stopDrag()V

    :cond_2
    return v3

    :cond_3
    const/4 p3, 0x1

    .line 308
    iput-boolean p3, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mLeftDragable:Z

    .line 309
    iput-boolean p3, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mRightDragable:Z

    .line 310
    iget-boolean p3, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    iput-boolean v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    .line 311
    :cond_4
    iget-object p3, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {p3}, Lcom/powervision/gcs/view/MatrixImageView;->access$300(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result p3

    aget v2, p1, v1

    mul-float p3, p3, v2

    cmpg-float p3, p3, v0

    if-gez p3, :cond_5

    return v3

    :cond_5
    const/4 p3, 0x2

    .line 315
    aget v2, p1, p3

    add-float/2addr v2, p2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 316
    aget p1, p1, p3

    neg-float p2, p1

    goto :goto_0

    .line 317
    :cond_6
    aget v2, p1, p3

    add-float/2addr v2, p2

    iget-object v3, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v3}, Lcom/powervision/gcs/view/MatrixImageView;->access$300(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result v3

    aget v4, p1, v1

    mul-float v3, v3, v4

    sub-float/2addr v3, v0

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 318
    iget-object p2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {p2}, Lcom/powervision/gcs/view/MatrixImageView;->access$300(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result p2

    aget v1, p1, v1

    mul-float p2, p2, v1

    sub-float/2addr p2, v0

    neg-float p2, p2

    aget p1, p1, p3

    sub-float/2addr p2, p1

    :cond_7
    :goto_0
    return p2
.end method

.method private checkDyBound([FF)F
    .locals 6

    .line 275
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/MatrixImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 276
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v1}, Lcom/powervision/gcs/view/MatrixImageView;->access$500(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result v1

    const/4 v2, 0x4

    aget v3, p1, v2

    mul-float v1, v1, v3

    const/4 v3, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x5

    .line 278
    aget v4, p1, v1

    add-float/2addr v4, p2

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1

    .line 279
    aget p1, p1, v1

    neg-float p2, p1

    goto :goto_0

    .line 280
    :cond_1
    aget v3, p1, v1

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v4}, Lcom/powervision/gcs/view/MatrixImageView;->access$500(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result v4

    aget v5, p1, v2

    mul-float v4, v4, v5

    sub-float/2addr v4, v0

    neg-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 281
    iget-object p2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {p2}, Lcom/powervision/gcs/view/MatrixImageView;->access$500(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result p2

    aget v2, p1, v2

    mul-float p2, p2, v2

    sub-float/2addr p2, v0

    neg-float p2, p2

    aget p1, p1, v1

    sub-float/2addr p2, p1

    :cond_2
    :goto_0
    return p2
.end method

.method private checkMaxScale(F[F)F
    .locals 3

    const/4 v0, 0x0

    .line 376
    aget v1, p2, v0

    mul-float v1, v1, p1

    iget v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mMaxScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 377
    aget p1, p2, v0

    div-float p1, v2, p1

    :cond_0
    return p1
.end method

.method private checkRest()Z
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 413
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 415
    aget v0, v0, v1

    .line 417
    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v2}, Lcom/powervision/gcs/view/MatrixImageView;->access$400(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x1

    .line 439
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 440
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 442
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private getCenter(F[F)Landroid/graphics/PointF;
    .locals 6

    const/4 v0, 0x0

    .line 354
    aget v1, p2, v0

    mul-float v1, v1, p1

    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v2}, Lcom/powervision/gcs/view/MatrixImageView;->access$400(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result v2

    const/4 v3, 0x2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/MatrixImageView;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    .line 358
    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/powervision/gcs/view/MatrixImageView;->getHeight()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    .line 360
    iget-object v4, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/MatrixImageView;->getWidth()I

    move-result v4

    div-int/2addr v4, v3

    int-to-float v4, v4

    aget v5, p2, v3

    sub-float/2addr v4, v5

    mul-float v4, v4, p1

    iget-object v5, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/powervision/gcs/view/MatrixImageView;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v1, 0x0

    .line 363
    :cond_1
    iget-object v4, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v4}, Lcom/powervision/gcs/view/MatrixImageView;->access$300(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result v4

    aget v0, p2, v0

    mul-float v4, v4, v0

    aget p2, p2, v3

    add-float/2addr v4, p2

    mul-float v4, v4, p1

    iget-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/MatrixImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v4, p1

    if-gez p1, :cond_2

    .line 364
    iget-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/MatrixImageView;->getWidth()I

    move-result p1

    int-to-float v1, p1

    .line 365
    :cond_2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 355
    :cond_3
    :goto_0
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {p2}, Lcom/powervision/gcs/view/MatrixImageView;->getWidth()I

    move-result p2

    div-int/2addr p2, v3

    int-to-float p2, p2

    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/MatrixImageView;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private isMatrixEnable()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/MatrixImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 428
    iput v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mMode:I

    :goto_0
    return-void
.end method

.method private isZoomChanged()Z
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 260
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 262
    aget v0, v0, v1

    .line 264
    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v2}, Lcom/powervision/gcs/view/MatrixImageView;->access$400(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private reSetMatrix()V
    .locals 5

    .line 385
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->checkRest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v1}, Lcom/powervision/gcs/view/MatrixImageView;->access$600(Lcom/powervision/gcs/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 387
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 391
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 392
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v1}, Lcom/powervision/gcs/view/MatrixImageView;->access$500(Lcom/powervision/gcs/view/MatrixImageView;)F

    move-result v1

    const/4 v2, 0x4

    aget v2, v0, v2

    mul-float v1, v1, v2

    .line 393
    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/powervision/gcs/view/MatrixImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/powervision/gcs/view/MatrixImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    const/4 v1, 0x5

    .line 396
    aget v3, v0, v1

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    .line 397
    iget-object v3, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 398
    iget-object v3, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    aget v0, v0, v1

    sub-float/2addr v2, v0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 399
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setZoomMatrix(Landroid/view/MotionEvent;)V
    .locals 3

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->distance(Landroid/view/MotionEvent;)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 333
    iget v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    div-float v0, p1, v0

    .line 334
    iput p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    .line 335
    iget-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 337
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 338
    invoke-direct {p0, v0, p1}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->checkMaxScale(F[F)F

    move-result v0

    .line 339
    invoke-direct {p0, v0, p1}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->getCenter(F[F)Landroid/graphics/PointF;

    move-result-object p1

    .line 340
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 341
    iget-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method private startDrag()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v0}, Lcom/powervision/gcs/view/MatrixImageView;->access$200(Lcom/powervision/gcs/view/MatrixImageView;)Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v0}, Lcom/powervision/gcs/view/MatrixImageView;->access$200(Lcom/powervision/gcs/view/MatrixImageView;)Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;->startDrag()V

    :cond_0
    return-void
.end method

.method private stopDrag()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v0}, Lcom/powervision/gcs/view/MatrixImageView;->access$200(Lcom/powervision/gcs/view/MatrixImageView;)Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v0}, Lcom/powervision/gcs/view/MatrixImageView;->access$200(Lcom/powervision/gcs/view/MatrixImageView;)Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/view/MatrixImageView$OnMovingListener;->stopDrag()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDoubleClick()V
    .locals 4

    .line 449
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->isZoomChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mDobleClickScale:F

    .line 450
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v2}, Lcom/powervision/gcs/view/MatrixImageView;->access$600(Lcom/powervision/gcs/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 451
    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/powervision/gcs/view/MatrixImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/powervision/gcs/view/MatrixImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 452
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mMode:I

    if-ne p1, v2, :cond_1

    return v0

    .line 181
    :cond_1
    iput v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mMode:I

    .line 182
    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->distance(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    goto :goto_0

    .line 171
    :cond_2
    iget p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mMode:I

    if-ne p1, v1, :cond_3

    .line 172
    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->setZoomMatrix(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    .line 174
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->setDragMatrix(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 176
    :cond_4
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->stopDrag()V

    goto :goto_0

    .line 167
    :cond_5
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->reSetMatrix()V

    .line 168
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->stopDrag()V

    goto :goto_0

    .line 159
    :cond_6
    iput v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mMode:I

    .line 160
    iget-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 161
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->isMatrixEnable()V

    .line 162
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->startDrag()V

    .line 163
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->checkDragable()V

    .line 190
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {p1}, Lcom/powervision/gcs/view/MatrixImageView;->access$100(Lcom/powervision/gcs/view/MatrixImageView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDragMatrix(Landroid/view/MotionEvent;)V
    .locals 7

    .line 232
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->isZoomChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mStartPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mStartPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 236
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 237
    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v2, v3, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 239
    iget-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/powervision/gcs/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 241
    iget-object v2, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 242
    invoke-direct {p0, p1, v1}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->checkDyBound([FF)F

    move-result v1

    .line 243
    invoke-direct {p0, p1, v0, v1}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->checkDxBound([FFF)F

    move-result p1

    .line 245
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 246
    iget-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->stopDrag()V

    :cond_1
    :goto_0
    return-void
.end method
