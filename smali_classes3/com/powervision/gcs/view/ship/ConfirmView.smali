.class public Lcom/powervision/gcs/view/ship/ConfirmView;
.super Landroid/view/View;
.source "ConfirmView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ConfirmView$OnConfirmViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfirmView"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private centerInsideRadius:I

.field context:Landroid/content/Context;

.field private defalutSize:I

.field private distance:F

.field private dst:Landroid/graphics/Rect;

.field private mListener:Lcom/powervision/gcs/view/ship/ConfirmView$OnConfirmViewListener;

.field private mMaxDistance:F

.field private mRadius:F

.field private padding:I

.field private paint:Landroid/graphics/Paint;

.field private paint0:Landroid/graphics/Paint;

.field private paintInside:Landroid/graphics/Paint;

.field private percent:F

.field private src:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->percent:F

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paintInside:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint0:Landroid/graphics/Paint;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->src:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->dst:Landroid/graphics/Rect;

    .line 170
    iput p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->distance:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->percent:F

    .line 26
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paintInside:Landroid/graphics/Paint;

    .line 27
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint:Landroid/graphics/Paint;

    .line 28
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint0:Landroid/graphics/Paint;

    .line 75
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->src:Landroid/graphics/Rect;

    .line 76
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->dst:Landroid/graphics/Rect;

    .line 170
    iput p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->distance:F

    .line 43
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ConfirmView;->initView()V

    return-void
.end method

.method private initPaint()V
    .locals 0

    return-void
.end method

.method private initPaint0()V
    .locals 0

    return-void
.end method

.method private initView()V
    .locals 6

    const/high16 v0, 0x40800000    # 4.0f

    .line 47
    invoke-static {v0}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->padding:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 48
    invoke-static {v0}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->centerInsideRadius:I

    .line 50
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ConfirmView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$drawable;->point:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->bitmap:Landroid/graphics/Bitmap;

    .line 52
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paintInside:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 54
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 60
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint0:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint0:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint0:Landroid/graphics/Paint;

    const-string v1, "#3A75F2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint0:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
    .end array-data
.end method


# virtual methods
.method public getPercent()F
    .locals 1

    .line 190
    iget v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->percent:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ConfirmView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 89
    iget v2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->padding:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iput v2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->mRadius:F

    .line 90
    iget v3, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->centerInsideRadius:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float v3, v2, v3

    iput v3, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->mMaxDistance:F

    .line 94
    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 97
    iget v2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->centerInsideRadius:I

    int-to-float v3, v2

    div-float/2addr v3, v1

    sub-float v5, v0, v3

    iget v3, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->padding:I

    int-to-float v6, v3

    int-to-float v3, v2

    div-float/2addr v3, v1

    add-float v7, v0, v3

    int-to-float v3, v2

    div-float/2addr v3, v1

    add-float v8, v0, v3

    int-to-float v9, v2

    int-to-float v10, v2

    iget-object v11, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paint0:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 100
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->src:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 101
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->src:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 102
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->src:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 103
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->src:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 105
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->dst:Landroid/graphics/Rect;

    iget v2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->centerInsideRadius:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 106
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->dst:Landroid/graphics/Rect;

    iget v2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->centerInsideRadius:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 107
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->dst:Landroid/graphics/Rect;

    iget v2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->centerInsideRadius:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->distance:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 108
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->dst:Landroid/graphics/Rect;

    iget v2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->centerInsideRadius:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->distance:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 110
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->src:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->dst:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->paintInside:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setDistance(F)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 121
    iput p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->percent:F

    .line 122
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ConfirmView;->postInvalidate()V

    return-void
.end method

.method public setListener(Lcom/powervision/gcs/view/ship/ConfirmView$OnConfirmViewListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->mListener:Lcom/powervision/gcs/view/ship/ConfirmView$OnConfirmViewListener;

    return-void
.end method

.method public setYPosition(F)V
    .locals 1

    .line 174
    iput p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->distance:F

    .line 175
    iget v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->mMaxDistance:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->distance:F

    const/4 v0, 0x0

    .line 176
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->distance:F

    .line 177
    iget v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->mMaxDistance:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->percent:F

    .line 178
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ConfirmView;->postInvalidate()V

    .line 179
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->mListener:Lcom/powervision/gcs/view/ship/ConfirmView$OnConfirmViewListener;

    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->mListener:Lcom/powervision/gcs/view/ship/ConfirmView$OnConfirmViewListener;

    iget v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->percent:F

    invoke-interface {p1, v0}, Lcom/powervision/gcs/view/ship/ConfirmView$OnConfirmViewListener;->onPercentChanged(F)V

    :cond_0
    return-void
.end method

.method public startDistance()F
    .locals 1

    .line 167
    iget v0, p0, Lcom/powervision/gcs/view/ship/ConfirmView;->distance:F

    return v0
.end method
