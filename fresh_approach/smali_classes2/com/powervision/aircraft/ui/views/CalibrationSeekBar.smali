.class public Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;
.super Landroid/view/View;
.source "CalibrationSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$SeekBarGestureListener;,
        Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$OnSeekChangeListener;
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

.field private mGestureListener:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$SeekBarGestureListener;

.field private mHighLightLinePaint:Landroid/graphics/Paint;

.field private mLineColor:Ljava/lang/String;

.field private mLinePaint1:Landroid/graphics/Paint;

.field private mLinePaint2:Landroid/graphics/Paint;

.field private mLineWidth:F

.field private mListener:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$OnSeekChangeListener;

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
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbRadius:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 31
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailRadius:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 32
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailStrokeWidth:F

    .line 33
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mLineWidth:F

    sub-float v0, p2, v0

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    .line 34
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mDefaultAreaRadius:F

    const/16 p2, 0x64

    .line 42
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mMaxValue:I

    const/16 p2, 0x32

    .line 43
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    .line 44
    iput p2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mDefaultValue:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$dimen;->aircraft_seekbar_thumb_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbRadius:F

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$dimen;->aircraft_seekbar_nail_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailRadius:F

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$dimen;->aircraft_seekbar_nail_stroke_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailStrokeWidth:F

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/aircraft/R$dimen;->aircraft_wheel_seekbar_line_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mLineWidth:F

    .line 60
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    return p0
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mDefaultAreaRadius:F

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    return p1
.end method

.method static synthetic access$1100(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailOffset:F

    return p0
.end method

.method static synthetic access$1200(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->setValueInternal(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    return p0
.end method

.method static synthetic access$1400(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$OnSeekChangeListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mListener:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$OnSeekChangeListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStartValue:I

    return p0
.end method

.method static synthetic access$1600(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStep:F

    return p0
.end method

.method static synthetic access$1700(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;F)F
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getThumbOffset(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->updateThumbOffset()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)Landroid/widget/Scroller;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineStart:F

    return p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbRadius:F

    return p0
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineEnd:F

    return p0
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mDefaultValue:I

    return p0
.end method

.method static synthetic access$800(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mMaxValue:I

    return p0
.end method

.method static synthetic access$900(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLength:F

    return p0
.end method

.method private getThumbOffset(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 222
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLength:F

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

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mScroller:Landroid/widget/Scroller;

    .line 65
    new-instance v0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$SeekBarGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$SeekBarGestureListener;-><init>(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$1;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mGestureListener:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$SeekBarGestureListener;

    .line 66
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mGestureListener:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$SeekBarGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailPaint:Landroid/graphics/Paint;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailStrokeWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private setValueInternal(I)V
    .locals 2

    .line 274
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 277
    :cond_0
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    .line 278
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mListener:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$OnSeekChangeListener;

    if-eqz v0, :cond_1

    .line 279
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStartValue:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStep:F

    mul-float p1, p1, v1

    invoke-interface {v0, p1, v1, p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$OnSeekChangeListener;->onSeekChanged(FFLcom/powervision/aircraft/ui/views/CalibrationSeekBar;)V

    :cond_1
    return-void
.end method

.method private updateThumbOffset()V
    .locals 5

    .line 285
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mDefaultValue:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mMaxValue:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iget v3, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mDefaultAreaRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    .line 298
    iget v4, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    if-nez v4, :cond_1

    .line 299
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_1
    if-ne v4, v2, :cond_2

    .line 301
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineEnd:F

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_2
    if-ge v4, v0, :cond_3

    .line 303
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLength:F

    sub-float/2addr v0, v3

    int-to-float v1, v4

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_3
    if-le v4, v0, :cond_4

    .line 305
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLength:F

    sub-float/2addr v0, v3

    int-to-float v1, v4

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 307
    :cond_4
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailOffset:F

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 287
    :cond_5
    :goto_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    if-nez v0, :cond_6

    .line 288
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 289
    :cond_6
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mMaxValue:I

    if-ne v0, v1, :cond_7

    .line 290
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineEnd:F

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 291
    :cond_7
    iget v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mDefaultValue:I

    if-ne v0, v2, :cond_8

    .line 292
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailOffset:F

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_8
    int-to-float v0, v0

    .line 294
    iget v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLength:F

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    :goto_1
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 2

    .line 246
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStartValue:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStep:F

    mul-float v0, v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 119
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLength:F

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    .line 120
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getWidth()I

    move-result v0

    .line 121
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbRadius:F

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLength:F

    .line 122
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbRadius:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineStart:F

    .line 123
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbRadius:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineEnd:F

    .line 125
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLength:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mDefaultValue:I

    int-to-float v3, v2

    mul-float v3, v3, v0

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mMaxValue:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailOffset:F

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget v5, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mDefaultAreaRadius:F

    mul-float v6, v5, v1

    .line 131
    iget v7, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    if-ge v7, v2, :cond_1

    sub-float/2addr v0, v6

    int-to-float v2, v7

    mul-float v0, v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    .line 132
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

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

    .line 134
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 136
    :cond_2
    iput v3, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 128
    :cond_3
    :goto_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLength:F

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mMaxValue:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    .line 141
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mLineWidth:F

    div-float v3, v2, v1

    sub-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 143
    iget v5, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineStart:F

    iget v3, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailOffset:F

    add-float/2addr v3, v5

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailStrokeWidth:F

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailRadius:F

    sub-float/2addr v3, v4

    cmpl-float v4, v3, v5

    if-lez v4, :cond_5

    .line 146
    iget-object v9, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v7, v3

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 148
    :cond_5
    iget v4, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailRadius:F

    mul-float v4, v4, v1

    add-float v5, v3, v4

    .line 149
    iget v7, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineEnd:F

    cmpl-float v1, v7, v5

    if-lez v1, :cond_6

    .line 150
    iget-object v9, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 154
    :cond_6
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mBackRectF:Landroid/graphics/RectF;

    .line 155
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const-string v3, "#3A75F2"

    .line 156
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mBackRectF:Landroid/graphics/RectF;

    const/high16 v4, 0x3fc00000    # 1.5f

    sub-float v5, v0, v4

    iput v5, v1, Landroid/graphics/RectF;->top:F

    .line 161
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineStart:F

    iput v5, v1, Landroid/graphics/RectF;->left:F

    .line 162
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineEnd:F

    iput v5, v1, Landroid/graphics/RectF;->right:F

    .line 163
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mBackRectF:Landroid/graphics/RectF;

    add-float/2addr v4, v2

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 164
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {p1, v1, v5, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 168
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineStart:F

    iget v4, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailOffset:F

    add-float/2addr v1, v4

    .line 169
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 170
    iget v5, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailRadius:F

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 172
    iget v4, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineStart:F

    iget v5, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    add-float v10, v4, v5

    .line 173
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v11, v4

    .line 175
    iget v4, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbRadius:F

    add-float v5, v10, v4

    .line 176
    iget v6, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailRadius:F

    sub-float v7, v1, v6

    cmpl-float v8, v10, v1

    if-lez v8, :cond_7

    add-float/2addr v1, v6

    sub-float v4, v10, v4

    move v5, v1

    move v7, v4

    .line 182
    :cond_7
    iget-object v9, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbRadius:F

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 186
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->isDrag:Z

    const/high16 v1, 0x41b00000    # 22.0f

    if-eqz v0, :cond_8

    .line 187
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 190
    :cond_8
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbInPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 194
    :goto_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    .line 196
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->invalidate()V

    .line 199
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 106
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 108
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 109
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 110
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->setMeasuredDimension(II)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLength:F

    .line 314
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineStart:F

    .line 315
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mSeekLineEnd:F

    .line 316
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailOffset:F

    .line 317
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbOffset:F

    const/4 v1, 0x0

    .line 318
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mMaxValue:I

    const v2, 0x7fffffff

    .line 319
    iput v2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    .line 320
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mDefaultValue:I

    .line 321
    iput v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStartValue:I

    .line 322
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStep:F

    .line 323
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mNailPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOnSeekChangeListener(Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$OnSeekChangeListener;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mListener:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$OnSeekChangeListener;

    return-void
.end method

.method public setSeekLength(IIIF)V
    .locals 0

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 239
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mDefaultValue:I

    sub-int/2addr p2, p1

    int-to-float p2, p2

    div-float/2addr p2, p4

    .line 240
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mMaxValue:I

    int-to-float p1, p1

    div-float/2addr p1, p4

    .line 241
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStartValue:I

    .line 242
    iput p4, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStep:F

    return-void
.end method

.method public setThumbSize(F)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mThumbRadius:F

    return-void
.end method

.method public setValue(FZ)V
    .locals 2

    .line 256
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStep:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStartValue:I

    sub-int/2addr v0, v1

    .line 257
    iget v1, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    if-ne v0, v1, :cond_0

    return-void

    .line 260
    :cond_0
    iput v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mCurrentValue:I

    .line 261
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mListener:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$OnSeekChangeListener;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 262
    iget p2, p0, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->mStep:F

    mul-float p1, p1, p2

    invoke-interface {v0, p1, p2, p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar$OnSeekChangeListener;->onSeekChanged(FFLcom/powervision/aircraft/ui/views/CalibrationSeekBar;)V

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->updateThumbOffset()V

    .line 266
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->invalidate()V

    return-void
.end method
