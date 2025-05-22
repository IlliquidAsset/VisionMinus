.class public Lcom/powervision/aircraft/ui/views/MiddleSeekBar;
.super Landroid/view/View;
.source "MiddleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;,
        Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;
    }
.end annotation


# instance fields
.field private isDrag:Z

.field private mBackGroundPaint:Landroid/graphics/Paint;

.field private mBackRectF:Landroid/graphics/RectF;

.field private mCurrentValue:I

.field private mDefaultAreaRadius:F

.field private mDefaultValue:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;

.field private mHighLightLinePaint:Landroid/graphics/Paint;

.field private mLineColor:Ljava/lang/String;

.field private mLinePaint1:Landroid/graphics/Paint;

.field private mLinePaint2:Landroid/graphics/Paint;

.field private mLineWidth:F

.field private mListener:Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;

.field private mMaxValue:I

.field private mNailOffset:F

.field private mNailPaint:Landroid/graphics/Paint;

.field private mNailRadius:F

.field private mNailStrokeWidth:F

.field private mScroller:Landroid/widget/Scroller;

.field private mSeekLength:F

.field private mSeekLineEnd:F

.field private mSeekLineStart:F

.field private mStartValue:I

.field private mStep:F

.field private mThumbInPaint:Landroid/graphics/Paint;

.field private mThumbOffset:F

.field private mThumbPaint:Landroid/graphics/Paint;

.field private mThumbRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41c00000    # 24.0f

    .line 30
    iput p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbRadius:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 31
    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailRadius:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 32
    iput v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailStrokeWidth:F

    .line 33
    iput v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mLineWidth:F

    sub-float v0, p2, v0

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    .line 34
    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mDefaultAreaRadius:F

    const/16 p2, 0x64

    .line 42
    iput p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mMaxValue:I

    const/16 p2, 0x32

    .line 43
    iput p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    .line 44
    iput p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mDefaultValue:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$dimen;->aircraft_seekbar_thumb_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbRadius:F

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$dimen;->aircraft_seekbar_nail_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailRadius:F

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$dimen;->aircraft_seekbar_nail_stroke_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailStrokeWidth:F

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/aircraft/R$dimen;->aircraft_seekbar_line_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mLineWidth:F

    .line 60
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    return p0
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLength:F

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    return p1
.end method

.method static synthetic access$1100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mDefaultAreaRadius:F

    return p0
.end method

.method static synthetic access$1200(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailOffset:F

    return p0
.end method

.method static synthetic access$1300(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setValueInternal(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    return p0
.end method

.method static synthetic access$1500(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mListener:Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStartValue:I

    return p0
.end method

.method static synthetic access$1700(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStep:F

    return p0
.end method

.method static synthetic access$1800(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;F)F
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getThumbOffset(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->updateThumbOffset()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)Landroid/widget/Scroller;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->isDrag:Z

    return p0
.end method

.method static synthetic access$402(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->isDrag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineStart:F

    return p0
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbRadius:F

    return p0
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineEnd:F

    return p0
.end method

.method static synthetic access$800(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mDefaultValue:I

    return p0
.end method

.method static synthetic access$900(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mMaxValue:I

    return p0
.end method

.method private getThumbOffset(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 217
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLength:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private init()V
    .locals 5

    .line 64
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    .line 65
    new-instance v0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;-><init>(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;Lcom/powervision/aircraft/ui/views/MiddleSeekBar$1;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mGestureListener:Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;

    .line 66
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mGestureListener:Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailStrokeWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    .line 81
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    .line 86
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    .line 91
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private setValueInternal(I)V
    .locals 2

    .line 270
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 273
    :cond_0
    iput p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    .line 274
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mListener:Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;

    if-eqz v0, :cond_1

    .line 275
    iget v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStartValue:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStep:F

    mul-float p1, p1, v1

    invoke-interface {v0, p1, v1, p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;->onSeekChanged(FFLcom/powervision/aircraft/ui/views/MiddleSeekBar;)V

    :cond_1
    return-void
.end method

.method private updateThumbOffset()V
    .locals 5

    .line 281
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mDefaultValue:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mMaxValue:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget v3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mDefaultAreaRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    .line 294
    iget v4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    if-nez v4, :cond_1

    .line 295
    iput v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_1
    if-ne v4, v2, :cond_2

    .line 297
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineEnd:F

    iget v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_2
    if-ge v4, v0, :cond_3

    .line 299
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLength:F

    sub-float/2addr v0, v3

    int-to-float v1, v4

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_3
    if-le v4, v0, :cond_4

    .line 301
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLength:F

    sub-float/2addr v0, v3

    int-to-float v1, v4

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 303
    :cond_4
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailOffset:F

    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 283
    :cond_5
    :goto_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    if-nez v0, :cond_6

    .line 284
    iput v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 285
    :cond_6
    iget v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mMaxValue:I

    if-ne v0, v1, :cond_7

    .line 286
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineEnd:F

    iget v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 287
    :cond_7
    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mDefaultValue:I

    if-ne v0, v2, :cond_8

    .line 288
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailOffset:F

    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_8
    int-to-float v0, v0

    .line 290
    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLength:F

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    :goto_1
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 2

    .line 241
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStartValue:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStep:F

    mul-float v0, v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 118
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLength:F

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    .line 119
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getWidth()I

    move-result v0

    .line 120
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbRadius:F

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLength:F

    .line 121
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbRadius:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineStart:F

    .line 122
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbRadius:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineEnd:F

    .line 124
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLength:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mDefaultValue:I

    int-to-float v3, v2

    mul-float v3, v3, v0

    iget v4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mMaxValue:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailOffset:F

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget v5, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mDefaultAreaRadius:F

    mul-float v6, v5, v1

    .line 130
    iget v7, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    if-ge v7, v2, :cond_1

    sub-float/2addr v0, v6

    int-to-float v2, v7

    mul-float v0, v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    .line 131
    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_1
    if-le v7, v2, :cond_2

    sub-float/2addr v0, v6

    int-to-float v2, v7

    mul-float v0, v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    mul-float v5, v5, v1

    add-float/2addr v0, v5

    .line 133
    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 135
    :cond_2
    iput v3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 127
    :cond_3
    :goto_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLength:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mMaxValue:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    .line 140
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mLineWidth:F

    div-float v3, v2, v1

    sub-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 142
    iget v5, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineStart:F

    iget v3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailOffset:F

    add-float/2addr v3, v5

    iget v4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailStrokeWidth:F

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailRadius:F

    sub-float/2addr v3, v4

    cmpl-float v4, v3, v5

    if-lez v4, :cond_5

    .line 145
    iget-object v9, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v7, v3

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 147
    :cond_5
    iget v4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailRadius:F

    mul-float v4, v4, v1

    add-float v5, v3, v4

    .line 148
    iget v7, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineEnd:F

    cmpl-float v1, v7, v5

    if-lez v1, :cond_6

    .line 149
    iget-object v9, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    :cond_6
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    .line 154
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const-string v3, "#3A75F2"

    .line 155
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    const/high16 v4, 0x3fc00000    # 1.5f

    sub-float v5, v0, v4

    iput v5, v1, Landroid/graphics/RectF;->top:F

    .line 160
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineStart:F

    iput v5, v1, Landroid/graphics/RectF;->left:F

    .line 161
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineEnd:F

    iput v5, v1, Landroid/graphics/RectF;->right:F

    .line 162
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    add-float/2addr v4, v2

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 163
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {p1, v1, v5, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 167
    iget v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineStart:F

    iget v4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailOffset:F

    add-float/2addr v1, v4

    .line 168
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 169
    iget v5, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailRadius:F

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    iget v4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineStart:F

    iget v5, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    add-float v10, v4, v5

    .line 172
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v11, v4

    .line 174
    iget v4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbRadius:F

    add-float v5, v10, v4

    .line 175
    iget v6, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailRadius:F

    sub-float v7, v1, v6

    cmpl-float v8, v10, v1

    if-lez v8, :cond_7

    add-float/2addr v1, v6

    sub-float v4, v10, v4

    move v5, v1

    move v7, v4

    .line 181
    :cond_7
    iget-object v9, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 182
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbRadius:F

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 183
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->isDrag:Z

    const/high16 v1, 0x41b00000    # 22.0f

    if-eqz v0, :cond_8

    .line 184
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 187
    :cond_8
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    :goto_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 191
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    .line 192
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->invalidate()V

    .line 194
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 105
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 107
    iget p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 108
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 109
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setMeasuredDimension(II)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mGestureListener:Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    .line 205
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mListener:Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;

    if-eqz p1, :cond_1

    .line 206
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStartValue:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStep:F

    mul-float v0, v0, v2

    invoke-interface {p1, v0, v2, p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;->onSeekStopped(FFLcom/powervision/aircraft/ui/views/MiddleSeekBar;)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 309
    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLength:F

    .line 310
    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineStart:F

    .line 311
    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mSeekLineEnd:F

    .line 312
    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailOffset:F

    .line 313
    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbOffset:F

    const/4 v1, 0x0

    .line 314
    iput v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mMaxValue:I

    const v2, 0x7fffffff

    .line 315
    iput v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    .line 316
    iput v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mDefaultValue:I

    .line 317
    iput v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStartValue:I

    .line 318
    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStep:F

    .line 319
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOnSeekChangeListener(Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mListener:Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;

    return-void
.end method

.method public setSeekLength(IIIF)V
    .locals 0

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 234
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mDefaultValue:I

    sub-int/2addr p2, p1

    int-to-float p2, p2

    div-float/2addr p2, p4

    .line 235
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mMaxValue:I

    int-to-float p1, p1

    div-float/2addr p1, p4

    .line 236
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStartValue:I

    .line 237
    iput p4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStep:F

    return-void
.end method

.method public setThumbSize(F)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mThumbRadius:F

    return-void
.end method

.method public setValue(FZ)V
    .locals 3

    .line 250
    iget v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStep:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStartValue:I

    sub-int/2addr v0, v1

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  mCurrentValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStep:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   mStartValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStartValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  newValue= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiddleView"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    if-ne v0, v1, :cond_0

    return-void

    .line 256
    :cond_0
    iput v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mCurrentValue:I

    .line 257
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mListener:Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 258
    iget p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->mStep:F

    mul-float p1, p1, p2

    invoke-interface {v0, p1, p2, p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;->onSeekChanged(FFLcom/powervision/aircraft/ui/views/MiddleSeekBar;)V

    .line 261
    :cond_1
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->updateThumbOffset()V

    .line 262
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->invalidate()V

    return-void
.end method
