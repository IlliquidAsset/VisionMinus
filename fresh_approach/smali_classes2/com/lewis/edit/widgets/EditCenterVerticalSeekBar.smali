.class public Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;
.super Landroid/view/View;
.source "EditCenterVerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;
    }
.end annotation


# static fields
.field private static final MAX_PROGRESS_VALUE:I = 0x64

.field private static final MIN_PROGRESS_VALUE:I


# instance fields
.field private mIsCenterFlag:Z

.field private mListener:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressRect:Landroid/graphics/RectF;

.field private mSlideColor:I

.field private mSlideWidth:I

.field private mStillColor:I

.field private mStillWidth:I

.field private mTextColor:I

.field private mTextSize:I

.field private mThumbColor:I

.field private mThumbRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, -0xffff01

    .line 26
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbColor:I

    const v0, -0x777778

    .line 31
    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mSlideColor:I

    const/high16 v0, -0x1000000

    .line 36
    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mStillColor:I

    .line 41
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextColor:I

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mIsCenterFlag:Z

    .line 52
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0, p1}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0xffff01

    .line 26
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbColor:I

    const v0, -0x777778

    .line 31
    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mSlideColor:I

    const/high16 v0, -0x1000000

    .line 36
    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mStillColor:I

    .line 41
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextColor:I

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mIsCenterFlag:Z

    .line 52
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    .line 65
    invoke-direct {p0, p2, p1}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, -0xffff01

    .line 26
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbColor:I

    const v0, -0x777778

    .line 31
    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mSlideColor:I

    const/high16 v0, -0x1000000

    .line 36
    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mStillColor:I

    .line 41
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextColor:I

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mIsCenterFlag:Z

    .line 52
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 93
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgressRect:Landroid/graphics/RectF;

    .line 98
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x40c00000    # 6.0f

    .line 99
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbRadius:I

    const/high16 v2, 0x40800000    # 4.0f

    .line 100
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mSlideWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 101
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mStillWidth:I

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    .line 102
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextSize:I

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/lewis/edit/R$styleable;->EditCenterVerticalSeekBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 108
    sget p2, Lcom/lewis/edit/R$styleable;->EditCenterVerticalSeekBar_edit_thumb_color:I

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbColor:I

    .line 109
    sget p2, Lcom/lewis/edit/R$styleable;->EditCenterVerticalSeekBar_edit_thumb_radius:I

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbRadius:I

    .line 111
    sget p2, Lcom/lewis/edit/R$styleable;->EditCenterVerticalSeekBar_edit_progress_slide_color:I

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mSlideColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mSlideColor:I

    .line 112
    sget p2, Lcom/lewis/edit/R$styleable;->EditCenterVerticalSeekBar_edit_progress_slide_width:I

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mSlideWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mSlideWidth:I

    .line 114
    sget p2, Lcom/lewis/edit/R$styleable;->EditCenterVerticalSeekBar_edit_progress_still_color:I

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mStillColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mStillColor:I

    .line 115
    sget p2, Lcom/lewis/edit/R$styleable;->EditCenterVerticalSeekBar_edit_progress_still_width:I

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mStillWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mStillWidth:I

    .line 117
    sget p2, Lcom/lewis/edit/R$styleable;->EditCenterVerticalSeekBar_edit_center_flag:I

    iget-boolean v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mIsCenterFlag:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mIsCenterFlag:Z

    .line 119
    sget p2, Lcom/lewis/edit/R$styleable;->EditCenterVerticalSeekBar_edit_text_color:I

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextColor:I

    .line 120
    sget p2, Lcom/lewis/edit/R$styleable;->EditCenterVerticalSeekBar_edit_text_size:I

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextSize:I

    .line 122
    sget p2, Lcom/lewis/edit/R$styleable;->EditCenterVerticalSeekBar_edit_progress:I

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    .line 123
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private updateProgressValue(II)V
    .locals 4

    .line 222
    iget-boolean v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mIsCenterFlag:Z

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eqz v0, :cond_4

    .line 224
    div-int/lit8 v0, p2, 0x2

    sub-int v3, v0, p1

    mul-int/lit8 v3, v3, 0x64

    .line 225
    div-int/2addr v3, v0

    if-ge p1, v0, :cond_1

    if-gtz p1, :cond_0

    .line 228
    iput v2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    goto :goto_0

    .line 230
    :cond_0
    iput v3, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_3

    if-lt p1, p2, :cond_2

    const/16 p1, -0x64

    .line 234
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    goto :goto_0

    .line 236
    :cond_2
    iput v3, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    goto :goto_0

    .line 239
    :cond_3
    iput v1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    goto :goto_0

    :cond_4
    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x64

    .line 243
    div-int/2addr v0, p2

    if-gtz p1, :cond_5

    .line 245
    iput v2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    goto :goto_0

    :cond_5
    if-ge p1, p2, :cond_6

    .line 247
    iput v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    goto :goto_0

    .line 249
    :cond_6
    iput v1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    .line 253
    :goto_0
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->invalidate()V

    .line 254
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mListener:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;

    if-eqz p1, :cond_7

    .line 255
    iget p2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    invoke-interface {p1, p2}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;->onProgress(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 158
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 162
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextSize:I

    sub-int/2addr v1, v2

    .line 164
    div-int/lit8 v2, v1, 0x2

    .line 166
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 168
    iget-boolean v4, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mIsCenterFlag:Z

    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingTop()I

    move-result v1

    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextSize:I

    add-int/2addr v1, v3

    add-int v3, v1, v2

    .line 170
    iget v1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v2, v1

    goto :goto_0

    .line 172
    :cond_0
    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    mul-int v2, v2, v1

    div-int/lit8 v2, v2, 0x64

    sub-int v2, v1, v2

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mStillColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingLeft()I

    move-result v1

    iget v4, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mStillWidth:I

    sub-int v5, v0, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    .line 179
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextSize:I

    add-int/2addr v5, v6

    .line 180
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 181
    iget v7, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mStillWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v7, v7, v8

    .line 182
    iget-object v9, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgressRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v5, v5

    int-to-float v4, v4

    int-to-float v6, v6

    invoke-virtual {v9, v1, v5, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 183
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 186
    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mSlideColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mSlideWidth:I

    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/2addr v5, v4

    .line 190
    iget v6, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    if-ltz v6, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextSize:I

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    move v10, v6

    move v6, v3

    move v3, v10

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextSize:I

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    .line 197
    :goto_1
    iget v7, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mSlideWidth:I

    int-to-float v7, v7

    mul-float v7, v7, v8

    .line 198
    iget-object v8, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgressRect:Landroid/graphics/RectF;

    int-to-float v4, v4

    int-to-float v3, v3

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v8, v4, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 199
    iget-object v3, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 202
    iget-object v3, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 204
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbRadius:I

    add-int/2addr v3, v0

    .line 205
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingTop()I

    move-result v0

    iget v4, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextSize:I

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    int-to-float v2, v3

    int-to-float v0, v0

    .line 206
    iget v3, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 209
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 210
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 212
    iget v0, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getDefaultSize(II)I

    move-result p2

    .line 131
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mThumbRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getSuggestedMinimumWidth()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 137
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 149
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mTextSize:I

    sub-int/2addr v0, v1

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->updateProgressValue(II)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setOnProgressChangeListener(Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mListener:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->mProgress:I

    .line 84
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->invalidate()V

    return-void
.end method
