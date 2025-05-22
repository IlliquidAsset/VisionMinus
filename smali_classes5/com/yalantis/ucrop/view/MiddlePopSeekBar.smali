.class public Lcom/yalantis/ucrop/view/MiddlePopSeekBar;
.super Landroid/view/View;
.source "MiddlePopSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/MiddlePopSeekBar$SeekBarGestureListener;,
        Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;
    }
.end annotation


# instance fields
.field private isDrag:Z

.field private mBackGroundPaint:Landroid/graphics/Paint;

.field private mBackRectF:Landroid/graphics/RectF;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapWidth:I

.field private mCurrentValue:I

.field private mDefaultAreaRadius:F

.field private mDefaultValue:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/yalantis/ucrop/view/MiddlePopSeekBar$SeekBarGestureListener;

.field private mHighLightLinePaint:Landroid/graphics/Paint;

.field private mLineColor:Ljava/lang/String;

.field private mLinePaint1:Landroid/graphics/Paint;

.field private mLinePaint2:Landroid/graphics/Paint;

.field private mLineWidth:F

.field private mListener:Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;

.field private mMaxValue:I

.field private mNailOffset:F

.field private mNailPaint:Landroid/graphics/Paint;

.field private mNailRadius:F

.field private mNailStrokeWidth:F

.field private mNormalThumb:Landroid/graphics/Bitmap;

.field private mPressedThumb:Landroid/graphics/Bitmap;

.field private mScroller:Landroid/widget/Scroller;

.field private mSeekLength:F

.field private mSeekLineEnd:F

.field private mSeekLineStart:F

.field private mShowCriclePaint:Landroid/graphics/Paint;

.field private mShowTextPaint:Landroid/graphics/Paint;

.field private mShowValue:F

.field private mStartValue:I

.field private mStep:F

.field private mThumbOffset:F

.field private mThumbPaint:Landroid/graphics/Paint;

.field private mThumbRadius:F

.field private mThumbWidth:I

.field private mVerticalLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41f00000    # 30.0f

    .line 35
    iput p2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbRadius:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 36
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailRadius:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 37
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailStrokeWidth:F

    .line 38
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mLineWidth:F

    sub-float v0, p2, v0

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    .line 39
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mDefaultAreaRadius:F

    const/16 p2, 0x64

    .line 46
    iput p2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mMaxValue:I

    const/16 p2, 0x32

    .line 47
    iput p2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    .line 48
    iput p2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mDefaultValue:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/yalantis/ucrop/R$dimen;->ucrop_seekbar_thumb_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbRadius:F

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/yalantis/ucrop/R$dimen;->ucrop_seekbar_nail_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailRadius:F

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/yalantis/ucrop/R$dimen;->ucrop_seekbar_nail_stroke_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailStrokeWidth:F

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yalantis/ucrop/R$dimen;->ucrop_seekbar_line_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mLineWidth:F

    .line 70
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yalantis/ucrop/R$drawable;->ucrop_pop_bg:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBitmap:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yalantis/ucrop/R$mipmap;->icon_thumb_normal:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNormalThumb:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yalantis/ucrop/R$mipmap;->icon_thumb_pressed:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mPressedThumb:Landroid/graphics/Bitmap;

    .line 73
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBitmapWidth:I

    .line 74
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNormalThumb:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbWidth:I

    .line 75
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    return p0
.end method

.method static synthetic access$1000(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLength:F

    return p0
.end method

.method static synthetic access$102(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    return p1
.end method

.method static synthetic access$1100(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mDefaultAreaRadius:F

    return p0
.end method

.method static synthetic access$1200(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailOffset:F

    return p0
.end method

.method static synthetic access$1300(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setValueInternal(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    return p0
.end method

.method static synthetic access$1500(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mListener:Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowValue:F

    return p0
.end method

.method static synthetic access$1602(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowValue:F

    return p1
.end method

.method static synthetic access$1700(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStartValue:I

    return p0
.end method

.method static synthetic access$1800(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStep:F

    return p0
.end method

.method static synthetic access$1900(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;F)F
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getThumbOffset(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->updateThumbOffset()V

    return-void
.end method

.method static synthetic access$300(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)Landroid/widget/Scroller;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->isDrag:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->isDrag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineStart:F

    return p0
.end method

.method static synthetic access$600(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbRadius:F

    return p0
.end method

.method static synthetic access$700(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineEnd:F

    return p0
.end method

.method static synthetic access$800(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mDefaultValue:I

    return p0
.end method

.method static synthetic access$900(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mMaxValue:I

    return p0
.end method

.method private getThumbOffset(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 253
    :cond_0
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLength:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private init()V
    .locals 5

    .line 79
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mScroller:Landroid/widget/Scroller;

    .line 80
    new-instance v0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar$SeekBarGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar$SeekBarGestureListener;-><init>(Lcom/yalantis/ucrop/view/MiddlePopSeekBar;Lcom/yalantis/ucrop/view/MiddlePopSeekBar$1;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mGestureListener:Lcom/yalantis/ucrop/view/MiddlePopSeekBar$SeekBarGestureListener;

    .line 81
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mGestureListener:Lcom/yalantis/ucrop/view/MiddlePopSeekBar$SeekBarGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailPaint:Landroid/graphics/Paint;

    const-string v2, "#ffffff"

    .line 84
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    const-string v2, "#00AAF1"

    .line 98
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    .line 102
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    .line 106
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mVerticalLinePaint:Landroid/graphics/Paint;

    .line 110
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mVerticalLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mVerticalLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 113
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mVerticalLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowCriclePaint:Landroid/graphics/Paint;

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowTextPaint:Landroid/graphics/Paint;

    const-string v1, "#222222"

    .line 120
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 122
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private setValueInternal(I)V
    .locals 2

    .line 307
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 310
    :cond_0
    iput p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    .line 311
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mListener:Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;

    if-eqz v0, :cond_1

    .line 312
    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStartValue:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStep:F

    mul-float p1, p1, v1

    iput p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowValue:F

    .line 313
    invoke-interface {v0, p1, v1, p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;->onSeekChanged(FFLcom/yalantis/ucrop/view/MiddlePopSeekBar;)V

    :cond_1
    return-void
.end method

.method private updateThumbOffset()V
    .locals 5

    .line 319
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mDefaultValue:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mMaxValue:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget v3, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mDefaultAreaRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    .line 331
    iget v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    if-nez v4, :cond_1

    .line 332
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_1
    if-ne v4, v2, :cond_2

    .line 334
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineEnd:F

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_2
    if-ge v4, v0, :cond_3

    .line 336
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLength:F

    sub-float/2addr v0, v3

    int-to-float v1, v4

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_3
    if-le v4, v0, :cond_4

    .line 338
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLength:F

    sub-float/2addr v0, v3

    int-to-float v1, v4

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 340
    :cond_4
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailOffset:F

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 320
    :cond_5
    :goto_0
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    if-nez v0, :cond_6

    .line 321
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 322
    :cond_6
    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mMaxValue:I

    if-ne v0, v1, :cond_7

    .line 323
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineEnd:F

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 324
    :cond_7
    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mDefaultValue:I

    if-ne v0, v2, :cond_8

    .line 325
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailOffset:F

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    goto :goto_1

    :cond_8
    int-to-float v0, v0

    .line 327
    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLength:F

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    :goto_1
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 2

    .line 277
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStartValue:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStep:F

    mul-float v0, v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 140
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLength:F

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    .line 141
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getWidth()I

    move-result v0

    .line 142
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbRadius:F

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLength:F

    .line 143
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbRadius:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineStart:F

    .line 144
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbRadius:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineEnd:F

    .line 146
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLength:F

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mDefaultValue:I

    int-to-float v3, v2

    mul-float v3, v3, v0

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mMaxValue:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailOffset:F

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget v5, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mDefaultAreaRadius:F

    mul-float v6, v5, v1

    .line 151
    iget v7, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    if-ge v7, v2, :cond_1

    sub-float/2addr v0, v6

    int-to-float v2, v7

    mul-float v0, v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    .line 152
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

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

    .line 154
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 157
    :cond_2
    iput v3, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    goto :goto_1

    .line 148
    :cond_3
    :goto_0
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLength:F

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mMaxValue:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    .line 162
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mLineWidth:F

    div-float v3, v2, v1

    sub-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 164
    iget v5, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineStart:F

    iget v3, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailOffset:F

    add-float/2addr v3, v5

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailStrokeWidth:F

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailRadius:F

    sub-float/2addr v3, v4

    cmpl-float v4, v3, v5

    if-lez v4, :cond_5

    .line 167
    iget-object v9, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mLinePaint1:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v7, v3

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    :cond_5
    iget v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailRadius:F

    mul-float v4, v4, v1

    add-float v5, v3, v4

    .line 170
    iget v7, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineEnd:F

    cmpl-float v1, v7, v5

    if-lez v1, :cond_6

    .line 171
    iget-object v9, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mLinePaint2:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 175
    :cond_6
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBackRectF:Landroid/graphics/RectF;

    .line 176
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const-string v3, "#DBDBDB"

    .line 177
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBackRectF:Landroid/graphics/RectF;

    const/high16 v3, 0x3fc00000    # 1.5f

    sub-float v4, v0, v3

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 182
    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineStart:F

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 183
    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineEnd:F

    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 184
    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBackRectF:Landroid/graphics/RectF;

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 185
    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBackRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBackGroundPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {p1, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 189
    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineStart:F

    iget v3, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailOffset:F

    add-float/2addr v1, v3

    .line 190
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 191
    iget v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailRadius:F

    iget-object v5, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v10, 0x41a00000    # 20.0f

    sub-float v6, v3, v10

    add-float v8, v3, v10

    .line 193
    iget-object v9, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mVerticalLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 195
    iget v3, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineStart:F

    iget v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    add-float/2addr v3, v4

    .line 196
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v11, v4

    .line 198
    iget v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbRadius:F

    add-float v5, v3, v4

    .line 199
    iget v6, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailRadius:F

    sub-float v7, v1, v6

    cmpl-float v8, v3, v1

    if-lez v8, :cond_7

    add-float/2addr v1, v6

    sub-float v4, v3, v4

    move v5, v1

    move v7, v4

    .line 205
    :cond_7
    iget-object v9, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 207
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->isDrag:Z

    if-eqz v0, :cond_8

    .line 210
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mPressedThumb:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbWidth:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    sub-float v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v11, v1

    iget-object v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 214
    :cond_8
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNormalThumb:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbWidth:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    sub-float v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v11, v1

    iget-object v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 217
    :goto_2
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->isDrag:Z

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mBitmapWidth:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    sub-float v2, v3, v2

    int-to-float v1, v1

    sub-float v1, v11, v1

    sub-float/2addr v1, v10

    iget-object v4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowCriclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 220
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowValue:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x42f00000    # 120.0f

    sub-float/2addr v11, v1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v11, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 223
    :cond_9
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 224
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    .line 225
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->invalidate()V

    .line 229
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 127
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 129
    iget p2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 130
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setMeasuredDimension(II)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mGestureListener:Lcom/yalantis/ucrop/view/MiddlePopSeekBar$SeekBarGestureListener;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar$SeekBarGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    .line 240
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mListener:Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;

    if-eqz p1, :cond_1

    .line 241
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStartValue:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStep:F

    mul-float v0, v0, v2

    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowValue:F

    .line 242
    invoke-interface {p1, v0, v2, p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;->onSeekStopped(FFLcom/yalantis/ucrop/view/MiddlePopSeekBar;)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 346
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLength:F

    .line 347
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineStart:F

    .line 348
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mSeekLineEnd:F

    .line 349
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailOffset:F

    .line 350
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbOffset:F

    const/4 v1, 0x0

    .line 351
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mMaxValue:I

    const v2, 0x7fffffff

    .line 352
    iput v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    .line 353
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mDefaultValue:I

    .line 354
    iput v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStartValue:I

    .line 355
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStep:F

    .line 356
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mHighLightLinePaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mNailPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOnSeekChangeListener(Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mListener:Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;

    return-void
.end method

.method public setSeekLength(IIIF)V
    .locals 0

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 270
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mDefaultValue:I

    sub-int/2addr p2, p1

    int-to-float p2, p2

    div-float/2addr p2, p4

    .line 271
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mMaxValue:I

    int-to-float p1, p1

    div-float/2addr p1, p4

    .line 272
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStartValue:I

    .line 273
    iput p4, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStep:F

    return-void
.end method

.method public setThumbSize(F)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mThumbRadius:F

    return-void
.end method

.method public setValue(FZ)V
    .locals 3

    .line 286
    iget v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStep:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStartValue:I

    sub-int/2addr v0, v1

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  mCurrentValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStep:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mStartValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStartValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiddleView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget v1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    if-ne v0, v1, :cond_0

    return-void

    .line 292
    :cond_0
    iput v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mCurrentValue:I

    .line 293
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mListener:Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 294
    iget p2, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mStep:F

    mul-float p1, p1, p2

    iput p1, p0, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->mShowValue:F

    .line 295
    invoke-interface {v0, p1, p2, p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;->onSeekChanged(FFLcom/yalantis/ucrop/view/MiddlePopSeekBar;)V

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->updateThumbOffset()V

    .line 299
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->invalidate()V

    return-void
.end method
