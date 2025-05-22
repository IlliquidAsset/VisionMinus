.class public Lcom/yalantis/ucrop/view/MiddleSeekBar;
.super Landroid/view/View;
.source "MiddleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;,
        Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;
    }
.end annotation


# instance fields
.field private isDrag:Z

.field private mBackGroundPaint:Landroid/graphics/Paint;

.field private mBackRectF:Landroid/graphics/RectF;

.field private mCurrentValue:F

.field private mDefaultAreaRadius:F

.field private mDefaultValue:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;

.field private mHighLightLinePaint:Landroid/graphics/Paint;

.field private mLineColor:Ljava/lang/String;

.field private mLinePaint1:Landroid/graphics/Paint;

.field private mLinePaint2:Landroid/graphics/Paint;

.field private mLineWidth:F

.field private mListener:Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;

.field private mMaxValue:F

.field private mNailOffset:F

.field private mNailPaint:Landroid/graphics/Paint;

.field private mNailRadius:F

.field private mNailStrokeWidth:F

.field private mScroller:Landroid/widget/Scroller;

.field private mSeekLength:F

.field private mSeekLineEnd:F

.field private mSeekLineStart:F

.field private mShowCriclePaint:Landroid/graphics/Paint;

.field private mShowTextPaint:Landroid/graphics/Paint;

.field private mShowValue:F

.field private mStartValue:F

.field private mStep:F

.field private mThumbInPaint:Landroid/graphics/Paint;

.field private mThumbOffset:F

.field private mThumbPaint:Landroid/graphics/Paint;

.field private mThumbRadius:F

.field private mVerticalLinePaint:Landroid/graphics/Paint;

.field private thumbX:F

.field private thumbY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41f00000    # 30.0f

    .line 33
    iput p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbRadius:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 34
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailRadius:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 35
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailStrokeWidth:F

    .line 36
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mLineWidth:F

    sub-float v0, p2, v0

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    .line 37
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mDefaultAreaRadius:F

    const/high16 p2, 0x42c80000    # 100.0f

    .line 44
    iput p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mMaxValue:F

    const/high16 p2, 0x42480000    # 50.0f

    .line 45
    iput p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    .line 46
    iput p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mDefaultValue:F

    const/4 p2, 0x0

    .line 55
    iput p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mShowValue:F

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/yalantis/ucrop/R$dimen;->ucrop_seekbar_thumb_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbRadius:F

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/yalantis/ucrop/R$dimen;->ucrop_seekbar_nail_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailRadius:F

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/yalantis/ucrop/R$dimen;->ucrop_seekbar_nail_stroke_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailStrokeWidth:F

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yalantis/ucrop/R$dimen;->ucrop_seekbar_line_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mLineWidth:F

    .line 66
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    return p0
.end method

.method static synthetic access$1000(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLength:F

    return p0
.end method

.method static synthetic access$102(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    return p1
.end method

.method static synthetic access$1100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mDefaultAreaRadius:F

    return p0
.end method

.method static synthetic access$1200(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailOffset:F

    return p0
.end method

.method static synthetic access$1300(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->setValueInternal(F)V

    return-void
.end method

.method static synthetic access$1400(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    return p0
.end method

.method static synthetic access$1500(Lcom/yalantis/ucrop/view/MiddleSeekBar;)Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mListener:Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStartValue:F

    return p0
.end method

.method static synthetic access$1700(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStep:F

    return p0
.end method

.method static synthetic access$1800(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)F
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getThumbOffset(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/yalantis/ucrop/view/MiddleSeekBar;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->updateThumbOffset()V

    return-void
.end method

.method static synthetic access$300(Lcom/yalantis/ucrop/view/MiddleSeekBar;)Landroid/widget/Scroller;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yalantis/ucrop/view/MiddleSeekBar;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->isDrag:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yalantis/ucrop/view/MiddleSeekBar;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->isDrag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineStart:F

    return p0
.end method

.method static synthetic access$600(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbRadius:F

    return p0
.end method

.method static synthetic access$700(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineEnd:F

    return p0
.end method

.method static synthetic access$800(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mDefaultValue:F

    return p0
.end method

.method static synthetic access$900(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mMaxValue:F

    return p0
.end method

.method private getThumbOffset(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 236
    :cond_0
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLength:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private init()V
    .locals 6

    .line 70
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    .line 71
    new-instance v0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;-><init>(Lcom/yalantis/ucrop/view/MiddleSeekBar;Lcom/yalantis/ucrop/view/MiddleSeekBar$1;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mGestureListener:Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;

    .line 72
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mGestureListener:Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    const-string v2, "#ffffff"

    .line 75
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41700000    # 15.0f

    .line 80
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    const-string v2, "#63B8FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    .line 85
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    const-string v3, "#000000"

    .line 89
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    .line 93
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    .line 97
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mVerticalLinePaint:Landroid/graphics/Paint;

    .line 101
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mVerticalLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mVerticalLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 104
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mVerticalLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mShowCriclePaint:Landroid/graphics/Paint;

    const-string v2, "#4EEE94"

    .line 107
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mShowCriclePaint:Landroid/graphics/Paint;

    const-string v2, "#858585"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mShowTextPaint:Landroid/graphics/Paint;

    .line 111
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mShowTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 113
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mShowTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private setValueInternal(F)V
    .locals 4

    .line 297
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    iput p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    .line 301
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mListener:Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;

    if-eqz v0, :cond_1

    .line 302
    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStartValue:F

    add-float v2, p1, v1

    iget v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStep:F

    mul-float v2, v2, v3

    iput v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mShowValue:F

    add-float/2addr p1, v1

    mul-float p1, p1, v3

    .line 303
    invoke-interface {v0, p1, v3, p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;->onSeekChanged(FFLcom/yalantis/ucrop/view/MiddleSeekBar;)V

    :cond_1
    return-void
.end method

.method private updateThumbOffset()V
    .locals 6

    .line 309
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mDefaultValue:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mMaxValue:F

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mDefaultAreaRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    .line 322
    iget v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    cmpl-float v5, v4, v1

    if-nez v5, :cond_1

    .line 323
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_1
    cmpl-float v1, v4, v2

    if-nez v1, :cond_2

    .line 325
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineEnd:F

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_2
    cmpg-float v1, v4, v0

    if-gez v1, :cond_3

    .line 327
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLength:F

    sub-float/2addr v0, v3

    mul-float v0, v0, v4

    div-float/2addr v0, v2

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_3
    cmpl-float v0, v4, v0

    if-lez v0, :cond_4

    .line 329
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLength:F

    sub-float/2addr v0, v3

    mul-float v0, v0, v4

    div-float/2addr v0, v2

    add-float/2addr v0, v3

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 331
    :cond_4
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailOffset:F

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 311
    :cond_5
    :goto_0
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_6

    .line 312
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 313
    :cond_6
    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mMaxValue:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_7

    .line 314
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineEnd:F

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 315
    :cond_7
    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mDefaultValue:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_8

    .line 316
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailOffset:F

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 318
    :cond_8
    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLength:F

    mul-float v0, v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    :goto_1
    return-void
.end method


# virtual methods
.method public getThumbX()F
    .locals 1

    .line 285
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbX:F

    return v0
.end method

.method public getThumbY()F
    .locals 1

    .line 289
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbY:F

    return v0
.end method

.method public getValue()F
    .locals 2

    .line 259
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStartValue:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStep:F

    mul-float v0, v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 131
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLength:F

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getWidth()I

    move-result v0

    .line 133
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbRadius:F

    mul-float v4, v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLength:F

    .line 134
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbRadius:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineStart:F

    .line 135
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbRadius:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineEnd:F

    .line 137
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLength:F

    iget v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mDefaultValue:F

    mul-float v4, v0, v3

    iget v5, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mMaxValue:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailOffset:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_3

    cmpl-float v1, v3, v5

    if-nez v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mDefaultAreaRadius:F

    mul-float v6, v1, v2

    .line 142
    iget v7, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    cmpg-float v8, v7, v3

    if-gez v8, :cond_1

    sub-float/2addr v0, v6

    mul-float v0, v0, v7

    div-float/2addr v0, v5

    .line 143
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_1
    cmpl-float v3, v7, v3

    if-lez v3, :cond_2

    sub-float/2addr v0, v6

    mul-float v0, v0, v7

    div-float/2addr v0, v5

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 145
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 148
    :cond_2
    iput v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 139
    :cond_3
    :goto_0
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLength:F

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mMaxValue:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    .line 153
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mLineWidth:F

    div-float v3, v1, v2

    sub-float/2addr v0, v3

    add-float/2addr v1, v0

    .line 155
    iget v5, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineStart:F

    iget v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailOffset:F

    add-float/2addr v3, v5

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailStrokeWidth:F

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailRadius:F

    sub-float/2addr v3, v4

    cmpl-float v4, v3, v5

    if-lez v4, :cond_5

    .line 158
    iget-object v9, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v7, v3

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 160
    :cond_5
    iget v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailRadius:F

    mul-float v4, v4, v2

    add-float v5, v3, v4

    .line 161
    iget v7, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineEnd:F

    cmpl-float v2, v7, v5

    if-lez v2, :cond_6

    .line 162
    iget-object v9, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 166
    :cond_6
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    .line 167
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const-string v3, "#DBDBDB"

    .line 168
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    const/high16 v3, 0x3fc00000    # 1.5f

    sub-float v4, v0, v3

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 173
    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineStart:F

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 174
    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineEnd:F

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 175
    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 176
    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 179
    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineStart:F

    iget v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailOffset:F

    add-float/2addr v2, v3

    .line 180
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 181
    iget v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailRadius:F

    iget-object v5, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x41a00000    # 20.0f

    sub-float v6, v3, v4

    add-float v8, v3, v4

    .line 183
    iget-object v9, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mVerticalLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v2

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 185
    iget v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineStart:F

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbX:F

    .line 186
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbY:F

    .line 188
    iget v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbX:F

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbRadius:F

    add-float v5, v3, v4

    .line 189
    iget v6, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailRadius:F

    sub-float v7, v2, v6

    cmpl-float v8, v3, v2

    if-lez v8, :cond_7

    add-float/2addr v2, v6

    sub-float/2addr v3, v4

    move v5, v2

    move v7, v3

    .line 195
    :cond_7
    iget-object v9, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 196
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbX:F

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbY:F

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbRadius:F

    iget-object v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 197
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->isDrag:Z

    const/high16 v1, 0x41e00000    # 28.0f

    const-string v2, "#FFFFFF"

    if-eqz v0, :cond_8

    .line 198
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbX:F

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbY:F

    iget-object v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 201
    :cond_8
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbX:F

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbY:F

    iget-object v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 205
    :goto_2
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->isDrag:Z

    if-eqz v0, :cond_9

    .line 206
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbX:F

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbY:F

    const/high16 v2, 0x43160000    # 150.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mShowCriclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 207
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mShowValue:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbX:F

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->thumbY:F

    const/high16 v3, 0x42f00000    # 120.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mShowTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 210
    :cond_9
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 211
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    .line 212
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->invalidate()V

    .line 214
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 118
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 120
    iget p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 121
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 122
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->setMeasuredDimension(II)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mGestureListener:Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    .line 225
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mListener:Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;

    if-eqz p1, :cond_1

    .line 226
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStartValue:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStep:F

    mul-float v0, v0, v2

    invoke-interface {p1, v0, v2, p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;->onSeekStopped(FFLcom/yalantis/ucrop/view/MiddleSeekBar;)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLength:F

    .line 338
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineStart:F

    .line 339
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mSeekLineEnd:F

    .line 340
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailOffset:F

    .line 341
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbOffset:F

    .line 342
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mMaxValue:F

    const/high16 v1, 0x4f000000

    .line 343
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    .line 344
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mDefaultValue:F

    .line 345
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStartValue:F

    .line 346
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStep:F

    .line 347
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOnSeekChangeListener(Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mListener:Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;

    return-void
.end method

.method public setSeekLength(FFFF)V
    .locals 0

    sub-float/2addr p3, p1

    div-float/2addr p3, p4

    .line 252
    iput p3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mDefaultValue:F

    sub-float/2addr p2, p1

    div-float/2addr p2, p4

    .line 253
    iput p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mMaxValue:F

    div-float/2addr p1, p4

    .line 254
    iput p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStartValue:F

    .line 255
    iput p4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStep:F

    return-void
.end method

.method public setThumbSize(F)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mThumbRadius:F

    return-void
.end method

.method public setValue(FZ)V
    .locals 3

    .line 268
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStep:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStartValue:F

    sub-float/2addr v0, v1

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  mCurrentValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  mStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStep:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mStartValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStartValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiddleView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-void

    .line 274
    :cond_0
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mCurrentValue:F

    .line 275
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mListener:Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 276
    iget p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mStep:F

    mul-float v1, p1, p2

    iput v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar;->mShowValue:F

    mul-float p1, p1, p2

    .line 277
    invoke-interface {v0, p1, p2, p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;->onSeekChanged(FFLcom/yalantis/ucrop/view/MiddleSeekBar;)V

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->updateThumbOffset()V

    .line 281
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->invalidate()V

    return-void
.end method
