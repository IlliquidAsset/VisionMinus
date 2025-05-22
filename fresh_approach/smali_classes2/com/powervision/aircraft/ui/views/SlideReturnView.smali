.class public Lcom/powervision/aircraft/ui/views/SlideReturnView;
.super Landroid/view/View;
.source "SlideReturnView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;
    }
.end annotation


# static fields
.field private static final CHANGE:I = 0x2

.field private static final DEFAULT_TIME:I = 0xa

.field private static final IDEL:I = 0x1


# instance fields
.field private grayRect:Landroid/graphics/Rect;

.field private mBackPaint:Landroid/graphics/Paint;

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mContentText:Ljava/lang/String;

.field private mContentTextSize:I

.field private mDistance_150:I

.field private mDistance_30:I

.field private mDistance_35:I

.field private mDistance_65:I

.field private mDrawStatus:I

.field private mGrayText:Ljava/lang/String;

.field private mGrayTextPaint:Landroid/text/TextPaint;

.field private mGrayTextSize:I

.field private mHandler:Landroid/os/Handler;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconBottom:I

.field private mIconLeft:I

.field private mIconPaint:Landroid/graphics/Paint;

.field private mIconRight:I

.field private mIconTop:I

.field private mLeftArrowBitmap:Landroid/graphics/Bitmap;

.field private mLeftArrowPaint:Landroid/graphics/Paint;

.field private mLeftCancelBitmap:Landroid/graphics/Bitmap;

.field private mLeftCancelPaint:Landroid/graphics/Paint;

.field private mLeftResetRunnable:Ljava/lang/Runnable;

.field private mListener:Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;

.field private mMaxDistance:I

.field private mRightArrowBitmap:Landroid/graphics/Bitmap;

.field private mRightArrowPaint:Landroid/graphics/Paint;

.field private mRightOKBitmap:Landroid/graphics/Bitmap;

.field private mRightOKPaint:Landroid/graphics/Paint;

.field private mRightResetRunnable:Ljava/lang/Runnable;

.field private mSlideDistance:I

.field private mStartX:I

.field private mTitleTextColor:Ljava/lang/String;

.field private mWarnTextPaint:Landroid/text/TextPaint;

.field private mYellowText:Ljava/lang/String;

.field private mYellowTextPaint:Landroid/graphics/Paint;

.field private mYellowTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 77
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDrawStatus:I

    .line 79
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mHandler:Landroid/os/Handler;

    .line 479
    new-instance p1, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;-><init>(Lcom/powervision/aircraft/ui/views/SlideReturnView;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftResetRunnable:Ljava/lang/Runnable;

    .line 498
    new-instance p1, Lcom/powervision/aircraft/ui/views/SlideReturnView$2;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView$2;-><init>(Lcom/powervision/aircraft/ui/views/SlideReturnView;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightResetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 77
    iput v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDrawStatus:I

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mHandler:Landroid/os/Handler;

    .line 479
    new-instance v0, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;-><init>(Lcom/powervision/aircraft/ui/views/SlideReturnView;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftResetRunnable:Ljava/lang/Runnable;

    .line 498
    new-instance v0, Lcom/powervision/aircraft/ui/views/SlideReturnView$2;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView$2;-><init>(Lcom/powervision/aircraft/ui/views/SlideReturnView;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightResetRunnable:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Lcom/powervision/base/utils/ScreenUtils;

    invoke-direct {v0, p1}, Lcom/powervision/base/utils/ScreenUtils;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x4094d80000000000L    # 1334.0

    div-double/2addr v1, v3

    const-wide v5, 0x4062c00000000000L    # 150.0

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_150:I

    .line 90
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v3

    const-wide v5, 0x4050400000000000L    # 65.0

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_65:I

    .line 91
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v3

    const-wide v5, 0x4041800000000000L    # 35.0

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_35:I

    .line 92
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v3

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_30:I

    .line 93
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v3

    const-wide/high16 v5, 0x403c000000000000L    # 28.0

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextSize:I

    .line 94
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v3

    const-wide/high16 v5, 0x403a000000000000L    # 26.0

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mContentTextSize:I

    .line 95
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v3

    mul-double v0, v0, v5

    double-to-int v0, v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayTextSize:I

    .line 97
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->initPaint()V

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    .line 101
    sget-object v0, Lcom/powervision/aircraft/R$styleable;->AircraftSlideReturnView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 102
    sget p2, Lcom/powervision/aircraft/R$styleable;->AircraftSlideReturnView_aircraft_re_icon:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 103
    sget v1, Lcom/powervision/aircraft/R$styleable;->AircraftSlideReturnView_aircraft_re_bg:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 104
    sget v2, Lcom/powervision/aircraft/R$styleable;->AircraftSlideReturnView_aircraft_re_right_arrow_icon:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 105
    sget v3, Lcom/powervision/aircraft/R$styleable;->AircraftSlideReturnView_aircraft_re_left_arrow_icon:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 106
    sget v4, Lcom/powervision/aircraft/R$styleable;->AircraftSlideReturnView_aircraft_re_right_ok_icon:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 107
    sget v5, Lcom/powervision/aircraft/R$styleable;->AircraftSlideReturnView_aircraft_re_left_cancel_icon:I

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 108
    sget v5, Lcom/powervision/aircraft/R$styleable;->AircraftSlideReturnView_aircraft_re_title:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowText:Ljava/lang/String;

    .line 109
    sget v5, Lcom/powervision/aircraft/R$styleable;->AircraftSlideReturnView_aircraft_re_warn:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mContentText:Ljava/lang/String;

    .line 110
    sget v5, Lcom/powervision/aircraft/R$styleable;->AircraftSlideReturnView_aircraft_re_desc:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayText:Ljava/lang/String;

    .line 111
    sget v5, Lcom/powervision/aircraft/R$styleable;->AircraftSlideReturnView_aircraft_re_title_color:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mTitleTextColor:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_0
    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mBgBitmap:Landroid/graphics/Bitmap;

    :cond_1
    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightArrowBitmap:Landroid/graphics/Bitmap;

    :cond_2
    if-eqz v3, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftArrowBitmap:Landroid/graphics/Bitmap;

    :cond_3
    if-eqz v4, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightOKBitmap:Landroid/graphics/Bitmap;

    :cond_4
    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftCancelBitmap:Landroid/graphics/Bitmap;

    .line 135
    :cond_5
    invoke-virtual {p0, p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/views/SlideReturnView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mSlideDistance:I

    return p0
.end method

.method static synthetic access$002(Lcom/powervision/aircraft/ui/views/SlideReturnView;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mSlideDistance:I

    return p1
.end method

.method static synthetic access$102(Lcom/powervision/aircraft/ui/views/SlideReturnView;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDrawStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/views/SlideReturnView;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initPaint()V
    .locals 3

    .line 296
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    .line 297
    iget v1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 298
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mWarnTextPaint:Landroid/text/TextPaint;

    .line 302
    iget v2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mContentTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 303
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mWarnTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 304
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mWarnTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayTextPaint:Landroid/text/TextPaint;

    .line 307
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 308
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 309
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 310
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayTextPaint:Landroid/text/TextPaint;

    const-string v2, "#c2c2c2"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 312
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mBackPaint:Landroid/graphics/Paint;

    .line 313
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 314
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mBackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 316
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconPaint:Landroid/graphics/Paint;

    .line 317
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 318
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 320
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightArrowPaint:Landroid/graphics/Paint;

    .line 321
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 322
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightArrowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftArrowPaint:Landroid/graphics/Paint;

    .line 325
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 326
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftArrowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightOKPaint:Landroid/graphics/Paint;

    .line 329
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 330
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightOKPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 332
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftCancelPaint:Landroid/graphics/Paint;

    .line 333
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftCancelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public measureDimension(II)I
    .locals 2

    .line 148
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 149
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 155
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public modifyState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowText:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mContentText:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayText:Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 239
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightOKBitmap:Landroid/graphics/Bitmap;

    .line 240
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftCancelBitmap:Landroid/graphics/Bitmap;

    .line 241
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 339
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->getWidth()I

    move-result v2

    .line 343
    iget-object v3, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 344
    iget-object v4, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 346
    iget-object v5, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 348
    div-int/lit8 v6, v3, 0x2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mMaxDistance:I

    .line 350
    iget-object v6, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 352
    iget-object v7, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightOKBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 354
    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 355
    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 357
    iget-object v10, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftCancelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 359
    new-instance v11, Landroid/graphics/RectF;

    iget v12, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_150:I

    int-to-float v13, v12

    int-to-float v14, v2

    iget v15, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextSize:I

    add-int/2addr v12, v15

    int-to-float v12, v12

    const/4 v15, 0x0

    invoke-direct {v11, v15, v13, v14, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 360
    iget-object v12, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    const-string v13, "#00000000"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget-object v12, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 362
    iget-object v12, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    iget-object v13, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mTitleTextColor:Ljava/lang/String;

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    iget-object v12, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    .line 364
    iget v13, v11, Landroid/graphics/RectF;->bottom:F

    iget v14, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v13, v14

    iget v14, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iget v12, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v12, v12

    sub-float/2addr v13, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v13, v12

    float-to-int v13, v13

    .line 366
    iget-object v14, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 367
    iget-object v14, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowText:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    int-to-float v13, v13

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v11, v13, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 369
    iget-object v11, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mWarnTextPaint:Landroid/text/TextPaint;

    iget-object v13, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mTitleTextColor:Ljava/lang/String;

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 370
    new-instance v11, Landroid/text/StaticLayout;

    iget-object v15, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mContentText:Ljava/lang/String;

    iget-object v13, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mWarnTextPaint:Landroid/text/TextPaint;

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v17, 0x2bc

    const v19, 0x3f99999a    # 1.2f

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v14, v11

    move-object/from16 v16, v13

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int/lit16 v13, v2, -0x2bc

    int-to-float v13, v13

    div-float/2addr v13, v12

    .line 372
    iget v14, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_150:I

    iget v15, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextSize:I

    add-int/2addr v14, v15

    iget v15, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_30:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 373
    invoke-virtual {v11, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 377
    iget v13, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_150:I

    iget v14, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowTextSize:I

    add-int/2addr v13, v14

    iget v14, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_30:I

    add-int/2addr v13, v14

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    add-int/2addr v13, v11

    iget v11, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_30:I

    add-int/2addr v13, v11

    .line 378
    iget v11, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayTextSize:I

    add-int/2addr v11, v13

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    const/4 v15, 0x2

    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v15, v12, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .line 398
    iget-object v14, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayText:Ljava/lang/String;

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    move/from16 v18, v9

    const-string v9, "haha"

    if-eqz v14, :cond_0

    const-string v14, "onDraw: contains"

    .line 399
    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    iput v13, v9, Landroid/graphics/Rect;->top:I

    .line 401
    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 402
    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    iget v13, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayTextSize:I

    add-int/2addr v13, v11

    add-int/2addr v13, v12

    iput v13, v9, Landroid/graphics/Rect;->bottom:I

    .line 403
    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    const/4 v14, 0x0

    iput v14, v9, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const-string v14, "onDraw: not"

    .line 406
    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    iput v13, v9, Landroid/graphics/Rect;->top:I

    .line 408
    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 409
    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 410
    iget-object v9, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    iput v13, v9, Landroid/graphics/Rect;->left:I

    .line 420
    :goto_0
    new-instance v9, Landroid/text/StaticLayout;

    iget-object v13, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayText:Ljava/lang/String;

    iget-object v14, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayTextPaint:Landroid/text/TextPaint;

    move/from16 v27, v8

    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v22

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v24, 0x3f99999a    # 1.2f

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v19, v9

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 422
    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayTextPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v13}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 424
    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v13, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v13

    int-to-float v8, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v8, v13

    iget-object v13, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->grayRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v1, v8, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 425
    invoke-virtual {v9, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 426
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 433
    iget v8, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_30:I

    add-int/2addr v11, v8

    .line 434
    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayText:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 435
    iget v8, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayTextSize:I

    add-int/2addr v8, v12

    add-int/2addr v11, v8

    .line 438
    :cond_1
    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mBgBitmap:Landroid/graphics/Bitmap;

    sub-int v9, v2, v3

    int-to-float v12, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    int-to-float v13, v11

    iget-object v14, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int v8, v2, v5

    const/4 v12, 0x2

    .line 440
    div-int/2addr v8, v12

    iget v13, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_35:I

    add-int/2addr v8, v13

    sub-int v6, v4, v6

    .line 441
    div-int/2addr v6, v12

    add-int/2addr v6, v11

    .line 442
    iget-object v13, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightArrowBitmap:Landroid/graphics/Bitmap;

    int-to-float v8, v8

    int-to-float v6, v6

    iget-object v14, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v8, v6, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v3, v2

    .line 444
    div-int/2addr v3, v12

    sub-int/2addr v3, v7

    sub-int v6, v4, v7

    .line 445
    div-int/2addr v6, v12

    add-int/2addr v6, v11

    .line 446
    iget-object v7, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightOKBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v3

    int-to-float v6, v6

    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightOKPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 453
    div-int/2addr v9, v12

    sub-int v3, v4, v10

    .line 454
    div-int/2addr v3, v12

    add-int/2addr v3, v11

    .line 455
    iget-object v6, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftCancelBitmap:Landroid/graphics/Bitmap;

    int-to-float v7, v9

    int-to-float v3, v3

    iget-object v8, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftCancelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 456
    iget v3, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDrawStatus:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3

    if-eq v3, v12, :cond_2

    goto :goto_1

    .line 466
    :cond_2
    iget-object v2, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconBitmap:Landroid/graphics/Bitmap;

    iget v3, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconLeft:I

    iget v5, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mSlideDistance:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconTop:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v5

    const/4 v3, 0x2

    .line 459
    div-int/2addr v2, v3

    iput v2, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconLeft:I

    sub-int v6, v4, v5

    .line 460
    div-int/2addr v6, v3

    add-int/2addr v6, v11

    iput v6, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconTop:I

    add-int v3, v2, v5

    .line 461
    iput v3, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconRight:I

    add-int/2addr v5, v6

    .line 462
    iput v5, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconBottom:I

    .line 463
    iget-object v3, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    int-to-float v5, v6

    iget-object v6, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 471
    :goto_1
    iget v2, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconLeft:I

    sub-int v2, v2, v27

    iget v3, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDistance_35:I

    sub-int/2addr v2, v3

    sub-int v4, v4, v18

    const/4 v3, 0x2

    .line 472
    div-int/2addr v4, v3

    add-int/2addr v11, v4

    .line 473
    iget-object v3, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftArrowBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    int-to-float v4, v11

    iget-object v5, v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 140
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/16 v0, 0x258

    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->measureDimension(II)I

    move-result p1

    const/16 v0, 0x8c

    .line 142
    invoke-virtual {p0, v0, p2}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->measureDimension(II)I

    move-result p2

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    .line 221
    :cond_0
    iput v1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDrawStatus:I

    goto/16 :goto_2

    .line 178
    :cond_1
    iget p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDrawStatus:I

    if-ne p1, v0, :cond_c

    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mStartX:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mSlideDistance:I

    .line 180
    iget p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mMaxDistance:I

    if-le p1, p2, :cond_2

    .line 181
    iput p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mSlideDistance:I

    return v1

    :cond_2
    neg-int v0, p2

    if-ge p1, v0, :cond_3

    neg-int p1, p2

    .line 185
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mSlideDistance:I

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->invalidate()V

    goto :goto_2

    .line 191
    :cond_4
    iget p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mSlideDistance:I

    const/4 p2, 0x0

    if-gez p1, :cond_7

    .line 192
    iget v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mMaxDistance:I

    neg-int v0, v0

    if-le p1, v0, :cond_5

    .line 193
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 196
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mListener:Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;

    if-eqz p1, :cond_6

    .line 197
    invoke-interface {p1}, Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;->cancelReturnSlide()V

    .line 198
    iput p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mSlideDistance:I

    .line 200
    :cond_6
    iput v1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDrawStatus:I

    :goto_0
    return v1

    :cond_7
    if-lez p1, :cond_a

    .line 205
    iget v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mMaxDistance:I

    if-ge p1, v0, :cond_8

    .line 206
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 208
    :cond_8
    iput v1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDrawStatus:I

    .line 209
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mListener:Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;

    if-eqz p1, :cond_9

    .line 210
    invoke-interface {p1}, Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;->returnSlide()V

    .line 211
    iput p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mSlideDistance:I

    :cond_9
    :goto_1
    return v1

    .line 218
    :cond_a
    iput v1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDrawStatus:I

    goto :goto_2

    .line 166
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mStartX:I

    .line 167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 169
    iget p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mStartX:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconLeft:I

    if-le p2, v2, :cond_c

    iget v2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconRight:I

    if-ge p2, v2, :cond_c

    iget p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconTop:I

    if-le p1, p2, :cond_c

    iget p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mIconBottom:I

    if-ge p1, p2, :cond_c

    .line 170
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mLeftResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iput v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mDrawStatus:I

    :cond_c
    :goto_2
    return v1
.end method

.method public setOkBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightOKBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setReDesc(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mGrayText:Ljava/lang/String;

    return-void
.end method

.method public setReTitle(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowText:Ljava/lang/String;

    return-void
.end method

.method public setReTitleAndColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mYellowText:Ljava/lang/String;

    .line 256
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mTitleTextColor:Ljava/lang/String;

    return-void
.end method

.method public setRightArrowBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mRightArrowBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSlideListener(Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mListener:Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;

    return-void
.end method

.method public setWarnContent(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView;->mContentText:Ljava/lang/String;

    return-void
.end method
