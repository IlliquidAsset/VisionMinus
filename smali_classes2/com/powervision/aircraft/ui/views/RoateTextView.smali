.class public Lcom/powervision/aircraft/ui/views/RoateTextView;
.super Landroid/widget/RelativeLayout;
.source "RoateTextView.java"


# instance fields
.field MIDDLE:F

.field RightEAGE:F

.field chars:[C

.field halfHeight:I

.field halfWidth:F

.field isFirstDraw:Z

.field mPaint:Landroid/graphics/Paint;

.field startX:F

.field startY:F

.field wholeText:Ljava/lang/String;

.field wholeTextWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->RightEAGE:F

    .line 35
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->MIDDLE:F

    const/4 p2, 0x1

    .line 102
    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->isFirstDraw:Z

    .line 103
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->halfWidth:F

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->halfHeight:I

    .line 18
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/RoateTextView;->initpiant()V

    return-void
.end method

.method private initpiant()V
    .locals 2

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 53
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RoateTextView;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RoateTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->startX:F

    .line 60
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->chars:[C

    array-length v0, v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RoateTextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->chars:[C

    array-length v1, v1

    div-int/2addr v0, v1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RoateTextView;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    .line 66
    iget v1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->halfWidth:F

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->chars:[C

    array-length v2, v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 69
    :goto_1
    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->chars:[C

    array-length v5, v4

    if-ge v2, v5, :cond_5

    .line 70
    aget-char v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 73
    iget v6, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->startX:F

    iget v7, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->MIDDLE:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f400000    # 0.75f

    cmpg-float v10, v6, v7

    if-gtz v10, :cond_1

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float v6, v6, v9

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    goto :goto_2

    :cond_1
    cmpl-float v10, v6, v7

    if-lez v10, :cond_2

    .line 76
    iget v10, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->RightEAGE:F

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_2

    sub-float/2addr v6, v7

    mul-float v6, v6, v9

    div-float/2addr v6, v7

    sub-float v5, v8, v6

    .line 80
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->mPaint:Landroid/graphics/Paint;

    const v7, 0x3d4ccccd    # 0.05f

    sub-float v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 82
    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->chars:[C

    array-length v7, v6

    if-lez v7, :cond_4

    sub-float/2addr v8, v5

    mul-float v7, v0, v8

    .line 83
    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    mul-float v7, v7, v6

    div-float/2addr v7, v3

    add-float/2addr v7, v1

    int-to-float v6, v2

    mul-float v6, v6, v0

    add-float/2addr v7, v6

    mul-float v6, v6, v8

    sub-float/2addr v7, v6

    .line 86
    iget v6, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->halfHeight:I

    int-to-float v6, v6

    mul-float v8, v5, v5

    mul-float v8, v8, v5

    mul-float v8, v8, v5

    const/high16 v9, 0x43820000    # 260.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    mul-float v9, v9, v5

    mul-float v9, v9, v5

    float-to-int v5, v9

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x28

    const/16 v5, 0xff

    if-le v8, v5, :cond_3

    const/16 v8, 0xff

    .line 91
    :cond_3
    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    div-float v5, v0, v3

    add-float/2addr v6, v5

    .line 92
    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v6, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 94
    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    const v5, -0xffff01

    if-ne v4, v5, :cond_4

    .line 95
    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 107
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 108
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->isFirstDraw:Z

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RoateTextView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->halfWidth:F

    .line 110
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RoateTextView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->halfHeight:I

    .line 111
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->halfWidth:F

    const/high16 p3, 0x40200000    # 2.5f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setDrawText(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->wholeText:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RoateTextView;->invalidate()V

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->chars:[C

    return-void
.end method

.method public setLength(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 129
    iput v0, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->RightEAGE:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 130
    iput p1, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->MIDDLE:F

    return-void
.end method

.method public setPaintBlue()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/RoateTextView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/RoateTextView;->invalidate()V

    return-void
.end method
