.class public Lcom/powervision/base/views/StringScrollPicker;
.super Lcom/powervision/base/views/ScrollPickerView;
.source "StringScrollPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/views/ScrollPickerView<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private callBack:Z

.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mEndColor:I

.field private mMaxLineWidth:I

.field private mMaxTextSize:I

.field private mMeasureHeight:I

.field private mMeasureWidth:I

.field private mMinTextSize:I

.field private mPaint:Landroid/text/TextPaint;

.field private mStartColor:I

.field private mTrianglePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/base/views/StringScrollPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/base/views/ScrollPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x18

    .line 32
    iput p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMinTextSize:I

    const/16 p1, 0x20

    .line 33
    iput p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxTextSize:I

    const/high16 p1, -0x1000000

    .line 35
    iput p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mStartColor:I

    const p1, -0x777778

    .line 36
    iput p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mEndColor:I

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxLineWidth:I

    .line 39
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 p1, 0x0

    .line 275
    iput-boolean p1, p0, Lcom/powervision/base/views/StringScrollPicker;->callBack:Z

    .line 51
    invoke-direct {p0, p2}, Lcom/powervision/base/views/StringScrollPicker;->init(Landroid/util/AttributeSet;)V

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    const-string v0, "one"

    const-string v1, "two"

    const-string v2, "three"

    const-string v3, "four"

    const-string v4, "five"

    const-string v5, "six"

    const-string v6, "seven"

    const-string v7, "eight"

    const-string v8, "nine"

    const-string v9, "ten"

    const-string v10, "eleven"

    const-string v11, "twelve"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/StringScrollPicker;->setData(Ljava/util/List;)V

    return-void
.end method

.method private computeColor(IIF)V
    .locals 0

    .line 249
    iget p2, p0, Lcom/powervision/base/views/StringScrollPicker;->mEndColor:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 265
    iget-boolean p1, p0, Lcom/powervision/base/views/StringScrollPicker;->callBack:Z

    if-eqz p1, :cond_2

    .line 266
    iget p2, p0, Lcom/powervision/base/views/StringScrollPicker;->mStartColor:I

    goto :goto_1

    .line 261
    :cond_1
    :goto_0
    iget p2, p0, Lcom/powervision/base/views/StringScrollPicker;->mEndColor:I

    .line 272
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private dp2px(F)I
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/powervision/base/views/StringScrollPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private drawTriangle(Landroid/graphics/Canvas;)V
    .locals 5

    .line 223
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 224
    iget v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMeasureWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/base/views/StringScrollPicker;->mMeasureHeight:I

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v3}, Lcom/powervision/base/views/StringScrollPicker;->dp2px(F)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    iget v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMeasureWidth:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v3}, Lcom/powervision/base/views/StringScrollPicker;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/base/views/StringScrollPicker;->mMeasureHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    iget v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMeasureWidth:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v3}, Lcom/powervision/base/views/StringScrollPicker;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/base/views/StringScrollPicker;->mMeasureHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 228
    iget-object v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mTrianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/powervision/base/views/StringScrollPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/powervision/base/R$styleable;->StringScrollPicker:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    sget v1, Lcom/powervision/base/R$styleable;->StringScrollPicker_spv_min_text_size:I

    iget v2, p0, Lcom/powervision/base/views/StringScrollPicker;->mMinTextSize:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMinTextSize:I

    .line 67
    sget v1, Lcom/powervision/base/R$styleable;->StringScrollPicker_spv_max_text_size:I

    iget v2, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxTextSize:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxTextSize:I

    .line 69
    sget v1, Lcom/powervision/base/R$styleable;->StringScrollPicker_spv_start_color:I

    iget v2, p0, Lcom/powervision/base/views/StringScrollPicker;->mStartColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mStartColor:I

    .line 71
    sget v1, Lcom/powervision/base/R$styleable;->StringScrollPicker_spv_end_color:I

    iget v2, p0, Lcom/powervision/base/views/StringScrollPicker;->mEndColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mEndColor:I

    .line 73
    sget v1, Lcom/powervision/base/R$styleable;->StringScrollPicker_spv_max_line_width:I

    iget v2, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxLineWidth:I

    .line 74
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxLineWidth:I

    .line 75
    sget v1, Lcom/powervision/base/R$styleable;->StringScrollPicker_spv_alignment:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 77
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 79
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 81
    :cond_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v1, p0, Lcom/powervision/base/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    :cond_2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mTrianglePaint:Landroid/graphics/Paint;

    .line 86
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mTrianglePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    .line 90
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/powervision/base/views/StringScrollPicker;->mStartColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private sp2px(F)I
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/powervision/base/views/StringScrollPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v0, v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method


# virtual methods
.method public drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;IIFF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    .line 172
    invoke-direct/range {p0 .. p1}, Lcom/powervision/base/views/StringScrollPicker;->drawTriangle(Landroid/graphics/Canvas;)V

    .line 173
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/base/views/StringScrollPicker;->getItemSize()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, -0x1

    if-ne v2, v7, :cond_1

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    .line 179
    iget-object v5, v0, Lcom/powervision/base/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcom/powervision/base/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v5, v0, Lcom/powervision/base/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcom/powervision/base/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v8, v7

    iget v9, v0, Lcom/powervision/base/views/StringScrollPicker;->mMaxTextSize:I

    sub-int/2addr v9, v7

    int-to-float v7, v9

    mul-float v7, v7, v3

    int-to-float v9, v4

    div-float/2addr v7, v9

    add-float/2addr v8, v7

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 185
    iget-object v5, v0, Lcom/powervision/base/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcom/powervision/base/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v8, v7

    iget v9, v0, Lcom/powervision/base/views/StringScrollPicker;->mMaxTextSize:I

    sub-int/2addr v9, v7

    int-to-float v7, v9

    int-to-float v9, v4

    .line 186
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v10, v9, v10

    mul-float v7, v7, v10

    div-float/2addr v7, v9

    add-float/2addr v8, v7

    .line 185
    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    .line 189
    iget-object v5, v0, Lcom/powervision/base/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcom/powervision/base/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v5, v0, Lcom/powervision/base/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcom/powervision/base/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v8, v7

    iget v9, v0, Lcom/powervision/base/views/StringScrollPicker;->mMaxTextSize:I

    sub-int/2addr v9, v7

    int-to-float v7, v9

    neg-float v9, v3

    mul-float v7, v7, v9

    int-to-float v9, v4

    div-float/2addr v7, v9

    add-float/2addr v8, v7

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 195
    :cond_4
    iget-object v5, v0, Lcom/powervision/base/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcom/powervision/base/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 198
    :goto_0
    new-instance v15, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iget-object v9, v0, Lcom/powervision/base/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v10, v0, Lcom/powervision/base/views/StringScrollPicker;->mMaxLineWidth:I

    iget-object v11, v0, Lcom/powervision/base/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v15

    move-object/from16 p2, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v5 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/base/views/StringScrollPicker;->isHorizontal()Z

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_5

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/base/views/StringScrollPicker;->getItemWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    div-float/2addr v6, v7

    add-float v5, p6, v6

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/base/views/StringScrollPicker;->getItemHeight()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    goto :goto_1

    .line 208
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/base/views/StringScrollPicker;->getItemWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    div-float v5, v6, v7

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/base/views/StringScrollPicker;->getItemHeight()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float v6, p6, v6

    .line 212
    :goto_1
    invoke-direct {v0, v2, v4, v3}, Lcom/powervision/base/views/StringScrollPicker;->computeColor(IIF)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 216
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v2, p2

    .line 217
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/powervision/base/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getEndColor()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/powervision/base/views/StringScrollPicker;->mEndColor:I

    return v0
.end method

.method public getMaxLineWidth()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxLineWidth:I

    return v0
.end method

.method public getMaxTextSize()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxTextSize:I

    return v0
.end method

.method public getMinTextSize()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/powervision/base/views/StringScrollPicker;->mMinTextSize:I

    return v0
.end method

.method public getStartColor()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/powervision/base/views/StringScrollPicker;->mStartColor:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Lcom/powervision/base/views/ScrollPickerView;->onSizeChanged(IIII)V

    .line 162
    invoke-virtual {p0}, Lcom/powervision/base/views/StringScrollPicker;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMeasureWidth:I

    .line 163
    invoke-virtual {p0}, Lcom/powervision/base/views/StringScrollPicker;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMeasureHeight:I

    .line 164
    iget p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxLineWidth:I

    if-gez p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/powervision/base/views/StringScrollPicker;->getItemWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxLineWidth:I

    :cond_0
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    return-void
.end method

.method public setColor(II)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mStartColor:I

    .line 100
    iput p2, p0, Lcom/powervision/base/views/StringScrollPicker;->mEndColor:I

    .line 101
    invoke-virtual {p0}, Lcom/powervision/base/views/StringScrollPicker;->invalidate()V

    return-void
.end method

.method public setMaxLineWidth(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxLineWidth:I

    return-void
.end method

.method public setResultCallBack(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/powervision/base/views/StringScrollPicker;->callBack:Z

    return-void
.end method

.method public setTextSize(II)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/powervision/base/views/StringScrollPicker;->mMinTextSize:I

    .line 112
    iput p2, p0, Lcom/powervision/base/views/StringScrollPicker;->mMaxTextSize:I

    .line 113
    invoke-virtual {p0}, Lcom/powervision/base/views/StringScrollPicker;->invalidate()V

    return-void
.end method
