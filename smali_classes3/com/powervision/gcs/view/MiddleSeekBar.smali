.class public Lcom/powervision/gcs/view/MiddleSeekBar;
.super Landroid/view/View;
.source "MiddleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;,
        Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;
    }
.end annotation


# instance fields
.field private mCurrentValue:I

.field private mDefaultAreaRadius:F

.field private mDefaultValue:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;

.field private mHighLightLinePaint:Landroid/graphics/Paint;

.field private mLineColor:Ljava/lang/String;

.field private mLinePaint1:Landroid/graphics/Paint;

.field private mLinePaint2:Landroid/graphics/Paint;

.field private mLineWidth:F

.field private mListener:Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;

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

.field private mThumbOffset:F

.field private mThumbPaint:Landroid/graphics/Paint;

.field private mThumbRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41c00000    # 24.0f

    .line 28
    iput p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbRadius:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 29
    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailRadius:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 30
    iput v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailStrokeWidth:F

    .line 31
    iput v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mLineWidth:F

    sub-float v0, p2, v0

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    .line 32
    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mDefaultAreaRadius:F

    const/16 p2, 0x64

    .line 40
    iput p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mMaxValue:I

    const/16 p2, 0x32

    .line 41
    iput p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    .line 42
    iput p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mDefaultValue:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$dimen;->seekbar_thumb_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbRadius:F

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$dimen;->seekbar_nail_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailRadius:F

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$dimen;->seekbar_nail_stroke_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailStrokeWidth:F

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$dimen;->seekbar_line_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mLineWidth:F

    .line 55
    invoke-direct {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    return p0
.end method

.method static synthetic access$1000(Lcom/powervision/gcs/view/MiddleSeekBar;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mDefaultAreaRadius:F

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/MiddleSeekBar;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    return p1
.end method

.method static synthetic access$1100(Lcom/powervision/gcs/view/MiddleSeekBar;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailOffset:F

    return p0
.end method

.method static synthetic access$1200(Lcom/powervision/gcs/view/MiddleSeekBar;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->setValueInternal(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/powervision/gcs/view/MiddleSeekBar;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    return p0
.end method

.method static synthetic access$1400(Lcom/powervision/gcs/view/MiddleSeekBar;)Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mListener:Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/powervision/gcs/view/MiddleSeekBar;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStartValue:I

    return p0
.end method

.method static synthetic access$1600(Lcom/powervision/gcs/view/MiddleSeekBar;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStep:F

    return p0
.end method

.method static synthetic access$1700(Lcom/powervision/gcs/view/MiddleSeekBar;F)F
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->getThumbOffset(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/MiddleSeekBar;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->updateThumbOffset()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/MiddleSeekBar;)Landroid/widget/Scroller;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/view/MiddleSeekBar;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineStart:F

    return p0
.end method

.method static synthetic access$500(Lcom/powervision/gcs/view/MiddleSeekBar;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbRadius:F

    return p0
.end method

.method static synthetic access$600(Lcom/powervision/gcs/view/MiddleSeekBar;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineEnd:F

    return p0
.end method

.method static synthetic access$700(Lcom/powervision/gcs/view/MiddleSeekBar;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mDefaultValue:I

    return p0
.end method

.method static synthetic access$800(Lcom/powervision/gcs/view/MiddleSeekBar;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mMaxValue:I

    return p0
.end method

.method static synthetic access$900(Lcom/powervision/gcs/view/MiddleSeekBar;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLength:F

    return p0
.end method

.method private getThumbOffset(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 187
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLength:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private init()V
    .locals 5

    .line 59
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    .line 60
    new-instance v0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;-><init>(Lcom/powervision/gcs/view/MiddleSeekBar;Lcom/powervision/gcs/view/MiddleSeekBar$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mGestureListener:Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;

    .line 61
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mGestureListener:Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    const-string v2, "#ffe049"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailStrokeWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    .line 85
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private setValueInternal(I)V
    .locals 2

    .line 234
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 237
    :cond_0
    iput p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    .line 238
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mListener:Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;

    if-eqz v0, :cond_1

    .line 239
    iget v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStartValue:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStep:F

    mul-float p1, p1, v1

    invoke-interface {v0, p1, v1, p0}, Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;->onSeekChanged(FFLcom/powervision/gcs/view/MiddleSeekBar;)V

    :cond_1
    return-void
.end method

.method private updateThumbOffset()V
    .locals 5

    .line 245
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mDefaultValue:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mMaxValue:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget v3, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mDefaultAreaRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    .line 258
    iget v4, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    if-nez v4, :cond_1

    .line 259
    iput v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_1
    if-ne v4, v2, :cond_2

    .line 261
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineEnd:F

    iget v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_2
    if-ge v4, v0, :cond_3

    .line 263
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLength:F

    sub-float/2addr v0, v3

    int-to-float v1, v4

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_3
    if-le v4, v0, :cond_4

    .line 265
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLength:F

    sub-float/2addr v0, v3

    int-to-float v1, v4

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 267
    :cond_4
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailOffset:F

    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 247
    :cond_5
    :goto_0
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    if-nez v0, :cond_6

    .line 248
    iput v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 249
    :cond_6
    iget v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mMaxValue:I

    if-ne v0, v1, :cond_7

    .line 250
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineEnd:F

    iget v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 251
    :cond_7
    iget v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mDefaultValue:I

    if-ne v0, v2, :cond_8

    .line 252
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailOffset:F

    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_8
    int-to-float v0, v0

    .line 254
    iget v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLength:F

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    :goto_1
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 2

    .line 211
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    iget v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStartValue:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStep:F

    mul-float v0, v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 107
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLength:F

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getWidth()I

    move-result v0

    .line 109
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbRadius:F

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLength:F

    .line 110
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbRadius:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineStart:F

    .line 111
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbRadius:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineEnd:F

    .line 113
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLength:F

    iget v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mDefaultValue:I

    int-to-float v3, v2

    mul-float v3, v3, v0

    iget v4, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mMaxValue:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailOffset:F

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget v5, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mDefaultAreaRadius:F

    mul-float v6, v5, v1

    .line 119
    iget v7, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    if-ge v7, v2, :cond_1

    sub-float/2addr v0, v6

    int-to-float v2, v7

    mul-float v0, v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    .line 120
    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

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

    .line 122
    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 124
    :cond_2
    iput v3, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 116
    :cond_3
    :goto_0
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLength:F

    iget v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    iget v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mMaxValue:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    .line 129
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mLineWidth:F

    div-float v3, v2, v1

    sub-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 131
    iget v5, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineStart:F

    iget v3, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailOffset:F

    add-float/2addr v3, v5

    iget v4, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailStrokeWidth:F

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailRadius:F

    sub-float/2addr v3, v4

    cmpl-float v4, v3, v5

    if-lez v4, :cond_5

    .line 134
    iget-object v9, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v7, v3

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 136
    :cond_5
    iget v4, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailRadius:F

    mul-float v4, v4, v1

    add-float v5, v3, v4

    .line 137
    iget v7, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineEnd:F

    cmpl-float v1, v7, v5

    if-lez v1, :cond_6

    .line 138
    iget-object v9, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    :cond_6
    iget v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineStart:F

    iget v3, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailOffset:F

    add-float/2addr v1, v3

    .line 143
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 144
    iget v4, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailRadius:F

    iget-object v5, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    iget v3, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineStart:F

    iget v4, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    add-float/2addr v3, v4

    .line 147
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v10, v4

    .line 149
    iget v4, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbRadius:F

    add-float v5, v3, v4

    .line 150
    iget v6, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailRadius:F

    sub-float v7, v1, v6

    cmpl-float v8, v3, v1

    if-lez v8, :cond_7

    add-float/2addr v1, v6

    sub-float v4, v3, v4

    move v5, v1

    move v7, v4

    .line 156
    :cond_7
    iget-object v9, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbRadius:F

    iget-object v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v10, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    .line 161
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->invalidate()V

    .line 164
    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 93
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 95
    iget p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 96
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->setMeasuredDimension(II)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mGestureListener:Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    .line 175
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mListener:Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;

    if-eqz p1, :cond_1

    .line 176
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    iget v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStartValue:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStep:F

    mul-float v0, v0, v2

    invoke-interface {p1, v0, v2, p0}, Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;->onSeekStopped(FFLcom/powervision/gcs/view/MiddleSeekBar;)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLength:F

    .line 274
    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineStart:F

    .line 275
    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mSeekLineEnd:F

    .line 276
    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailOffset:F

    .line 277
    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbOffset:F

    const/4 v1, 0x0

    .line 278
    iput v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mMaxValue:I

    const v2, 0x7fffffff

    .line 279
    iput v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    .line 280
    iput v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mDefaultValue:I

    .line 281
    iput v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStartValue:I

    .line 282
    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStep:F

    .line 283
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mNailPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOnSeekChangeListener(Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mListener:Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;

    return-void
.end method

.method public setSeekLength(IIIF)V
    .locals 0

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 204
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mDefaultValue:I

    sub-int/2addr p2, p1

    int-to-float p2, p2

    div-float/2addr p2, p4

    .line 205
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mMaxValue:I

    int-to-float p1, p1

    div-float/2addr p1, p4

    .line 206
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStartValue:I

    .line 207
    iput p4, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStep:F

    return-void
.end method

.method public setThumbSize(F)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mThumbRadius:F

    return-void
.end method

.method public setValue(F)V
    .locals 2

    .line 216
    iget v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStep:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStartValue:I

    sub-int/2addr v0, v1

    .line 217
    iget v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    if-ne v0, v1, :cond_0

    return-void

    .line 220
    :cond_0
    iput v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mCurrentValue:I

    .line 221
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mListener:Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;

    if-eqz v0, :cond_1

    .line 222
    iget v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar;->mStep:F

    mul-float p1, p1, v1

    invoke-interface {v0, p1, v1, p0}, Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;->onSeekChanged(FFLcom/powervision/gcs/view/MiddleSeekBar;)V

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->updateThumbOffset()V

    .line 226
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MiddleSeekBar;->invalidate()V

    return-void
.end method
