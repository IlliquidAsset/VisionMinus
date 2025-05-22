.class public Lcn/powervision/flightlog/customViews/GimbalValueView;
.super Landroid/widget/RelativeLayout;
.source "GimbalValueView.java"


# instance fields
.field private centerX:I

.field private centerY:I

.field private context:Landroid/content/Context;

.field private currentPercent:I

.field private mPointBitmap:Landroid/graphics/Bitmap;

.field private mPointHeight:I

.field private mPointPaint:Landroid/graphics/Paint;

.field private maxHeight:I

.field private maxPercent:I

.field private maxWidth:I

.field private maxheighPercent:I

.field private minHeightPercent:I

.field private onePercent:I

.field private pointColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xd

    .line 28
    iput v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->maxWidth:I

    const/4 v0, 0x5

    .line 29
    iput v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->mPointHeight:I

    const/16 v0, 0x64

    .line 30
    iput v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->maxHeight:I

    const/16 v0, 0x5a

    .line 33
    iput v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->maxPercent:I

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->currentPercent:I

    const v0, -0xffff01

    .line 40
    iput v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->pointColor:I

    .line 45
    invoke-direct {p0, p1, p2}, Lcn/powervision/flightlog/customViews/GimbalValueView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xd

    .line 28
    iput p3, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->maxWidth:I

    const/4 p3, 0x5

    .line 29
    iput p3, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->mPointHeight:I

    const/16 p3, 0x64

    .line 30
    iput p3, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->maxHeight:I

    const/16 p3, 0x5a

    .line 33
    iput p3, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->maxPercent:I

    const/4 p3, 0x0

    .line 37
    iput p3, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->currentPercent:I

    const p3, -0xffff01

    .line 40
    iput p3, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->pointColor:I

    .line 50
    invoke-direct {p0, p1, p2}, Lcn/powervision/flightlog/customViews/GimbalValueView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawViews(Landroid/graphics/Canvas;)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->mPointBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 108
    iget v2, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->currentPercent:I

    invoke-direct {p0, v2}, Lcn/powervision/flightlog/customViews/GimbalValueView;->getPointValue(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getPointValue(I)I
    .locals 1

    if-lez p1, :cond_0

    .line 114
    iget v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->maxPercent:I

    if-gt p1, v0, :cond_0

    .line 115
    iget v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->onePercent:I

    mul-int v0, v0, p1

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 117
    iget p1, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->minHeightPercent:I

    return p1

    .line 119
    :cond_1
    iget p1, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->minHeightPercent:I

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->context:Landroid/content/Context;

    .line 55
    invoke-direct {p0, p2}, Lcn/powervision/flightlog/customViews/GimbalValueView;->initTypedArray(Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Lcn/powervision/flightlog/customViews/GimbalValueView;->intParams()V

    .line 57
    invoke-direct {p0}, Lcn/powervision/flightlog/customViews/GimbalValueView;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->mPointPaint:Landroid/graphics/Paint;

    .line 95
    iget v1, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->pointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->mPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initTypedArray(Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/GimbalValueView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/powervision/flightlog/R$styleable;->FlightlogGimbalValueView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    sget v0, Lcn/powervision/flightlog/R$styleable;->FlightlogGimbalValueView_flightlog_point_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->context:Landroid/content/Context;

    iget v2, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->maxWidth:I

    invoke-static {v1, v2}, Lcom/powervision/base/utils/ScreenUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->context:Landroid/content/Context;

    iget v3, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->mPointHeight:I

    .line 69
    invoke-static {v2, v3}, Lcom/powervision/base/utils/ScreenUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x1

    .line 68
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->mPointBitmap:Landroid/graphics/Bitmap;

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private intParams()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/GimbalValueView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->centerX:I

    .line 87
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/GimbalValueView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->centerY:I

    .line 88
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/GimbalValueView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->context:Landroid/content/Context;

    iget v2, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->mPointHeight:I

    invoke-static {v1, v2}, Lcom/powervision/base/utils/ScreenUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->maxheighPercent:I

    .line 89
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->context:Landroid/content/Context;

    iget v1, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->mPointHeight:I

    invoke-static {v0, v1}, Lcom/powervision/base/utils/ScreenUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->minHeightPercent:I

    .line 90
    iget v1, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->maxheighPercent:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->maxPercent:I

    div-int/2addr v1, v0

    iput v1, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->onePercent:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/customViews/GimbalValueView;->drawViews(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 81
    invoke-direct {p0}, Lcn/powervision/flightlog/customViews/GimbalValueView;->intParams()V

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcn/powervision/flightlog/customViews/GimbalValueView;->currentPercent:I

    .line 127
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/GimbalValueView;->invalidate()V

    return-void
.end method
