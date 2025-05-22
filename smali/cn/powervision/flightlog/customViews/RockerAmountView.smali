.class public Lcn/powervision/flightlog/customViews/RockerAmountView;
.super Landroid/view/View;
.source "RockerAmountView.java"


# instance fields
.field private final Tag:Ljava/lang/String;

.field private VALUE_UNIT:F

.field private centerX:I

.field private centerY:I

.field private mCenterPointBitmap:Landroid/graphics/Bitmap;

.field private mOffsetBgColor:I

.field private mOffsetBgPaint:Landroid/graphics/Paint;

.field private mPointPaint:Landroid/graphics/Paint;

.field private mPointRaddius:I

.field mPointX:F

.field mPointY:F

.field private mRadius:I

.field private mRockerCurrentValue:F

.field private mRockerMode:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcn/powervision/flightlog/customViews/RockerAmountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcn/powervision/flightlog/customViews/RockerAmountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "RockerAmountView"

    .line 28
    iput-object p3, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->Tag:Ljava/lang/String;

    const/4 p3, 0x0

    .line 34
    iput p3, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mRockerCurrentValue:F

    const/4 p3, 0x0

    .line 36
    iput p3, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mRockerMode:I

    const/16 p3, 0x11

    .line 37
    iput p3, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointRaddius:I

    const/high16 p3, 0x447a0000    # 1000.0f

    .line 40
    iput p3, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->VALUE_UNIT:F

    .line 54
    invoke-direct {p0, p1, p2}, Lcn/powervision/flightlog/customViews/RockerAmountView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0}, Lcn/powervision/flightlog/customViews/RockerAmountView;->initPaint()V

    return-void
.end method

.method private executeDrawView(Landroid/graphics/Canvas;)V
    .locals 4

    .line 123
    iget v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mRadius:I

    iget v1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointRaddius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->VALUE_UNIT:F

    div-float/2addr v0, v1

    .line 124
    iget v1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mRockerMode:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 125
    iget v1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mRockerCurrentValue:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 126
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v1, v1, v0

    iget v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->centerX:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointX:F

    goto :goto_0

    .line 128
    :cond_0
    iget v2, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->centerX:I

    int-to-float v2, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v1, v1, v0

    sub-float/2addr v2, v1

    iput v2, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointX:F

    .line 130
    :goto_0
    iget v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointY:F

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 132
    iget v1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mRockerCurrentValue:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    .line 133
    iget v2, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->centerX:I

    int-to-float v2, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v1, v1, v0

    sub-float/2addr v2, v1

    iput v2, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointY:F

    goto :goto_1

    .line 135
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v1, v1, v0

    iget v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->centerX:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointY:F

    .line 137
    :goto_1
    iget v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointX:F

    .line 139
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/customViews/RockerAmountView;->getOffsetBg(Landroid/graphics/Canvas;)V

    .line 140
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/customViews/RockerAmountView;->getPoint(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getOffsetBg(Landroid/graphics/Canvas;)V
    .locals 7

    .line 151
    iget v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mRockerMode:I

    if-nez v0, :cond_0

    .line 152
    iget v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->centerX:I

    int-to-float v2, v0

    iget v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->centerY:I

    int-to-float v3, v0

    iget v4, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointX:F

    int-to-float v5, v0

    iget-object v6, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mOffsetBgPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 154
    iget v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->centerX:I

    int-to-float v2, v0

    iget v1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->centerY:I

    int-to-float v3, v1

    int-to-float v4, v0

    iget v5, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointY:F

    iget-object v6, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mOffsetBgPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getPoint(Landroid/graphics/Canvas;)V
    .locals 4

    .line 145
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mCenterPointBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 146
    iget v1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointX:F

    iget v2, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointRaddius:I

    int-to-float v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointY:F

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget-object v2, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 72
    sget-object v0, Lcn/powervision/flightlog/R$styleable;->FlightLogRockerAmountView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 74
    sget v0, Lcn/powervision/flightlog/R$styleable;->FlightLogRockerAmountView_flightlog_view_rocker_center_bitmap:I

    .line 75
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 78
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x11

    .line 79
    invoke-static {p1, v1}, Lcom/powervision/base/utils/ScreenUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointRaddius:I

    .line 81
    invoke-static {p1, v1}, Lcom/powervision/base/utils/ScreenUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1, v1}, Lcom/powervision/base/utils/ScreenUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    const/4 v1, 0x1

    .line 80
    invoke-static {v0, v2, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mCenterPointBitmap:Landroid/graphics/Bitmap;

    .line 85
    :cond_0
    sget p1, Lcn/powervision/flightlog/R$styleable;->FlightLogRockerAmountView_flightlog_view_rocker_offset_bg:I

    .line 86
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/RockerAmountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/powervision/flightlog/R$color;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 85
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mOffsetBgColor:I

    .line 87
    sget p1, Lcn/powervision/flightlog/R$styleable;->FlightLogRockerAmountView_flightlog_view_rocker_mode:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mRockerMode:I

    .line 89
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPaint()V
    .locals 3

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    .line 60
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mOffsetBgPaint:Landroid/graphics/Paint;

    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 65
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mOffsetBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mPointRaddius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mOffsetBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 67
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mOffsetBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mOffsetBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mOffsetBgPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/customViews/RockerAmountView;->executeDrawView(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 94
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 102
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 103
    invoke-virtual {p0, p1, p2}, Lcn/powervision/flightlog/customViews/RockerAmountView;->setMeasuredDimension(II)V

    .line 104
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/RockerAmountView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mViewWidth:I

    .line 105
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/RockerAmountView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mViewHeight:I

    .line 106
    iget p2, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mViewWidth:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mRadius:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 112
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->centerX:I

    .line 113
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->centerY:I

    return-void
.end method

.method public setValue(F)V
    .locals 0

    .line 159
    iput p1, p0, Lcn/powervision/flightlog/customViews/RockerAmountView;->mRockerCurrentValue:F

    .line 160
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/RockerAmountView;->postInvalidate()V

    return-void
.end method
