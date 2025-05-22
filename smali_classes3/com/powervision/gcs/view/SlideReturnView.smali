.class public Lcom/powervision/gcs/view/SlideReturnView;
.super Landroid/view/View;
.source "SlideReturnView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/SlideReturnView$SlideListener;
    }
.end annotation


# static fields
.field private static final CHANGE:I = 0x2

.field private static final DEFAULT_TIME:I = 0xa

.field private static final IDEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlideReturnView"


# instance fields
.field private context:Landroid/content/Context;

.field private mBackPaint:Landroid/graphics/Paint;

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mDistance_210:I

.field private mDistance_35:I

.field private mDistance_65:I

.field private mDrawStatus:I

.field private mGrayText:Ljava/lang/String;

.field private mGrayTextPaint:Landroid/graphics/Paint;

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

.field private mListener:Lcom/powervision/gcs/view/SlideReturnView$SlideListener;

.field private mMaxDistance:I

.field private mRightArrowBitmap:Landroid/graphics/Bitmap;

.field private mRightArrowPaint:Landroid/graphics/Paint;

.field private mRightOKBitmap:Landroid/graphics/Bitmap;

.field private mRightOKPaint:Landroid/graphics/Paint;

.field private mRightResetRunnable:Ljava/lang/Runnable;

.field private mSlideDistance:I

.field private mStartX:I

.field private mTitleTextColor:Ljava/lang/String;

.field private mYellowText:Ljava/lang/String;

.field private mYellowTextPaint:Landroid/graphics/Paint;

.field private mYellowTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mSlideDistance:I

    const/4 p1, 0x1

    .line 69
    iput p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDrawStatus:I

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mHandler:Landroid/os/Handler;

    .line 379
    new-instance p1, Lcom/powervision/gcs/view/SlideReturnView$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/SlideReturnView$1;-><init>(Lcom/powervision/gcs/view/SlideReturnView;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftResetRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance p1, Lcom/powervision/gcs/view/SlideReturnView$2;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/SlideReturnView$2;-><init>(Lcom/powervision/gcs/view/SlideReturnView;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mRightResetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mSlideDistance:I

    const/4 v1, 0x1

    .line 69
    iput v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDrawStatus:I

    .line 71
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mHandler:Landroid/os/Handler;

    .line 379
    new-instance v1, Lcom/powervision/gcs/view/SlideReturnView$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SlideReturnView$1;-><init>(Lcom/powervision/gcs/view/SlideReturnView;)V

    iput-object v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftResetRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance v1, Lcom/powervision/gcs/view/SlideReturnView$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SlideReturnView$2;-><init>(Lcom/powervision/gcs/view/SlideReturnView;)V

    iput-object v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mRightResetRunnable:Ljava/lang/Runnable;

    .line 81
    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->context:Landroid/content/Context;

    .line 82
    new-instance v1, Lcom/powervision/gcs/utils/ScreenUtils;

    invoke-direct {v1, p1}, Lcom/powervision/gcs/utils/ScreenUtils;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v1}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x4094d80000000000L    # 1334.0

    div-double/2addr v2, v4

    const-wide v6, 0x406a400000000000L    # 210.0

    mul-double v2, v2, v6

    double-to-int v2, v2

    iput v2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDistance_210:I

    .line 84
    invoke-virtual {v1}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    const-wide v6, 0x4050400000000000L    # 65.0

    mul-double v2, v2, v6

    double-to-int v2, v2

    iput v2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDistance_65:I

    .line 85
    invoke-virtual {v1}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    mul-double v2, v2, v6

    double-to-int v2, v2

    iput v2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDistance_35:I

    .line 86
    invoke-virtual {v1}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    const-wide/high16 v6, 0x403c000000000000L    # 28.0

    mul-double v2, v2, v6

    double-to-int v2, v2

    iput v2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextSize:I

    .line 87
    invoke-virtual {v1}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenWidth()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v4

    const-wide/high16 v3, 0x403a000000000000L    # 26.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextSize:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->auto_return_yellow_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowText:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->auto_return_gray_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayText:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/powervision/gcs/view/SlideReturnView;->initPaint()V

    .line 93
    sget-object v1, Lcom/powervision/gcs/R$styleable;->SlideReturnView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    sget p2, Lcom/powervision/gcs/R$styleable;->SlideReturnView_re_icon:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 95
    sget v1, Lcom/powervision/gcs/R$styleable;->SlideReturnView_re_bg:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 96
    sget v2, Lcom/powervision/gcs/R$styleable;->SlideReturnView_re_right_arrow_icon:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 97
    sget v3, Lcom/powervision/gcs/R$styleable;->SlideReturnView_re_left_arrow_icon:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 98
    sget v4, Lcom/powervision/gcs/R$styleable;->SlideReturnView_re_right_ok_icon:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 99
    sget v5, Lcom/powervision/gcs/R$styleable;->SlideReturnView_re_left_cancel_icon:I

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 100
    sget v5, Lcom/powervision/gcs/R$styleable;->SlideReturnView_re_title:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowText:Ljava/lang/String;

    .line 101
    sget v5, Lcom/powervision/gcs/R$styleable;->SlideReturnView_re_desc:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayText:Ljava/lang/String;

    .line 102
    sget v5, Lcom/powervision/gcs/R$styleable;->SlideReturnView_re_title_color:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/powervision/gcs/view/SlideReturnView;->mTitleTextColor:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_0
    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mBgBitmap:Landroid/graphics/Bitmap;

    :cond_1
    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mRightArrowBitmap:Landroid/graphics/Bitmap;

    :cond_2
    if-eqz v3, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftArrowBitmap:Landroid/graphics/Bitmap;

    :cond_3
    if-eqz v4, :cond_4

    .line 119
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mRightOKBitmap:Landroid/graphics/Bitmap;

    :cond_4
    if-eqz v0, :cond_5

    .line 122
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SlideReturnView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftCancelBitmap:Landroid/graphics/Bitmap;

    .line 126
    :cond_5
    invoke-virtual {p0, p0}, Lcom/powervision/gcs/view/SlideReturnView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/SlideReturnView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mSlideDistance:I

    return p0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/view/SlideReturnView;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mSlideDistance:I

    return p1
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/SlideReturnView;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDrawStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/SlideReturnView;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initPaint()V
    .locals 3

    .line 258
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    .line 259
    iget v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 260
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextPaint:Landroid/graphics/Paint;

    .line 264
    iget v2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 265
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 268
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mBackPaint:Landroid/graphics/Paint;

    .line 269
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 270
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mBackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mIconPaint:Landroid/graphics/Paint;

    .line 273
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mIconPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 276
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mRightArrowPaint:Landroid/graphics/Paint;

    .line 277
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 278
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mRightArrowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 280
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftArrowPaint:Landroid/graphics/Paint;

    .line 281
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftArrowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mRightOKPaint:Landroid/graphics/Paint;

    .line 285
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 286
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mRightOKPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 288
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftCancelPaint:Landroid/graphics/Paint;

    .line 289
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 290
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftCancelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private resetDistance()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mSlideDistance:I

    return-void
.end method


# virtual methods
.method public measureDimension(II)I
    .locals 2

    .line 143
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 144
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 150
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 295
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/SlideReturnView;->getWidth()I

    move-result v2

    .line 299
    iget-object v3, v0, Lcom/powervision/gcs/view/SlideReturnView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 300
    iget-object v4, v0, Lcom/powervision/gcs/view/SlideReturnView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 302
    iget-object v5, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 304
    iget-object v6, v0, Lcom/powervision/gcs/view/SlideReturnView;->mRightArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 306
    iget-object v7, v0, Lcom/powervision/gcs/view/SlideReturnView;->mRightOKBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 308
    iget-object v8, v0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 309
    iget-object v9, v0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 311
    iget-object v10, v0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftCancelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 314
    div-int/lit8 v11, v3, 0x2

    div-int/lit8 v12, v5, 0x2

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/powervision/gcs/view/SlideReturnView;->mMaxDistance:I

    .line 317
    new-instance v11, Landroid/graphics/RectF;

    iget v12, v0, Lcom/powervision/gcs/view/SlideReturnView;->mDistance_210:I

    int-to-float v13, v12

    int-to-float v14, v2

    iget v15, v0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextSize:I

    add-int/2addr v12, v15

    int-to-float v12, v12

    const/4 v15, 0x0

    invoke-direct {v11, v15, v13, v14, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 318
    iget-object v12, v0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    const-string v13, "#00000000"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget-object v12, v0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 320
    iget-object v12, v0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    iget-object v15, v0, Lcom/powervision/gcs/view/SlideReturnView;->mTitleTextColor:Ljava/lang/String;

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object v12, v0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    .line 322
    iget v15, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v10

    iget v10, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v15, v10

    iget v10, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v15, v10

    iget v10, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v10, v10

    sub-float/2addr v15, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v15, v10

    float-to-int v12, v15

    .line 324
    iget-object v15, v0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 325
    iget-object v10, v0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowText:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    int-to-float v12, v12

    iget-object v15, v0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v11, v12, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 327
    iget v10, v0, Lcom/powervision/gcs/view/SlideReturnView;->mDistance_210:I

    iget v11, v0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowTextSize:I

    add-int v12, v10, v11

    iget v15, v0, Lcom/powervision/gcs/view/SlideReturnView;->mDistance_35:I

    add-int/2addr v12, v15

    add-int/2addr v10, v11

    add-int/2addr v10, v15

    .line 328
    iget v11, v0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextSize:I

    add-int/2addr v10, v11

    .line 329
    new-instance v11, Landroid/graphics/RectF;

    int-to-float v12, v12

    int-to-float v15, v10

    move/from16 v17, v9

    const/4 v9, 0x0

    invoke-direct {v11, v9, v12, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 330
    iget-object v9, v0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget-object v9, v0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 332
    iget-object v9, v0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextPaint:Landroid/graphics/Paint;

    const-string v12, "#c2c2c2"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    iget-object v9, v0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    .line 334
    iget v12, v11, Landroid/graphics/RectF;->bottom:F

    iget v13, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v13

    iget v13, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v9, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v9, v9

    sub-float/2addr v12, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v12, v9

    float-to-int v9, v12

    .line 336
    iget-object v12, v0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 337
    iget-object v12, v0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayText:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    int-to-float v9, v9

    iget-object v13, v0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v11, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 343
    iget v9, v0, Lcom/powervision/gcs/view/SlideReturnView;->mDistance_65:I

    add-int/2addr v10, v9

    .line 344
    iget-object v9, v0, Lcom/powervision/gcs/view/SlideReturnView;->mBgBitmap:Landroid/graphics/Bitmap;

    sub-int v11, v2, v3

    const/4 v12, 0x2

    div-int/2addr v11, v12

    int-to-float v13, v11

    int-to-float v14, v10

    iget-object v15, v0, Lcom/powervision/gcs/view/SlideReturnView;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int v9, v2, v5

    .line 346
    div-int/2addr v9, v12

    iget v13, v0, Lcom/powervision/gcs/view/SlideReturnView;->mDistance_35:I

    add-int/2addr v9, v13

    sub-int v6, v4, v6

    .line 347
    div-int/2addr v6, v12

    add-int/2addr v6, v10

    .line 348
    iget-object v13, v0, Lcom/powervision/gcs/view/SlideReturnView;->mRightArrowBitmap:Landroid/graphics/Bitmap;

    int-to-float v9, v9

    int-to-float v6, v6

    iget-object v14, v0, Lcom/powervision/gcs/view/SlideReturnView;->mRightArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v9, v6, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v3, v2

    .line 350
    div-int/2addr v3, v12

    sub-int/2addr v3, v7

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v9

    sub-int/2addr v3, v9

    sub-int v7, v4, v7

    .line 351
    div-int/2addr v7, v12

    add-int/2addr v7, v10

    .line 352
    iget-object v9, v0, Lcom/powervision/gcs/view/SlideReturnView;->mRightOKBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v3

    int-to-float v7, v7

    iget-object v13, v0, Lcom/powervision/gcs/view/SlideReturnView;->mRightOKPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v3, v7, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 354
    iget v3, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconLeft:I

    sub-int/2addr v3, v8

    iget v7, v0, Lcom/powervision/gcs/view/SlideReturnView;->mDistance_35:I

    sub-int/2addr v3, v7

    sub-int v7, v4, v17

    .line 355
    div-int/2addr v7, v12

    add-int/2addr v7, v10

    .line 356
    iget-object v8, v0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftArrowBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v3

    int-to-float v7, v7

    iget-object v9, v0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v3, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 358
    invoke-static {v6}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v3

    add-int/2addr v11, v3

    sub-int v3, v4, v16

    .line 359
    div-int/2addr v3, v12

    add-int/2addr v3, v10

    .line 360
    iget-object v6, v0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftCancelBitmap:Landroid/graphics/Bitmap;

    int-to-float v7, v11

    int-to-float v3, v3

    iget-object v8, v0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftCancelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 361
    iget v3, v0, Lcom/powervision/gcs/view/SlideReturnView;->mDrawStatus:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1

    if-eq v3, v12, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    iget-object v2, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconBitmap:Landroid/graphics/Bitmap;

    iget v3, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconLeft:I

    iget v4, v0, Lcom/powervision/gcs/view/SlideReturnView;->mSlideDistance:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconTop:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v5

    .line 364
    div-int/2addr v2, v12

    iput v2, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconLeft:I

    sub-int/2addr v4, v5

    .line 365
    div-int/2addr v4, v12

    add-int/2addr v10, v4

    iput v10, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconTop:I

    add-int v3, v2, v5

    .line 366
    iput v3, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconRight:I

    add-int/2addr v5, v10

    .line 367
    iput v5, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconBottom:I

    .line 368
    iget-object v3, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    int-to-float v4, v10

    iget-object v5, v0, Lcom/powervision/gcs/view/SlideReturnView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 135
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/16 v0, 0x258

    .line 136
    invoke-virtual {p0, v0, p1}, Lcom/powervision/gcs/view/SlideReturnView;->measureDimension(II)I

    move-result p1

    const/16 v0, 0x8c

    .line 137
    invoke-virtual {p0, v0, p2}, Lcom/powervision/gcs/view/SlideReturnView;->measureDimension(II)I

    move-result p2

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/SlideReturnView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 158
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

    .line 216
    :cond_0
    iput v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDrawStatus:I

    goto/16 :goto_2

    .line 173
    :cond_1
    iget p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDrawStatus:I

    if-ne p1, v0, :cond_c

    .line 174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mStartX:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mSlideDistance:I

    .line 175
    iget p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mMaxDistance:I

    if-le p1, p2, :cond_2

    .line 176
    iput p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mSlideDistance:I

    return v1

    :cond_2
    neg-int v0, p2

    if-ge p1, v0, :cond_3

    neg-int p1, p2

    .line 180
    iput p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mSlideDistance:I

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SlideReturnView;->invalidate()V

    goto/16 :goto_2

    .line 186
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTouch: mSlideDistance = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mSlideDistance:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  mMaxDistance = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mMaxDistance:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SlideReturnView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mSlideDistance:I

    if-gez p1, :cond_7

    .line 188
    iget p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mMaxDistance:I

    neg-int p2, p2

    if-le p1, p2, :cond_5

    .line 189
    iget-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 192
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mListener:Lcom/powervision/gcs/view/SlideReturnView$SlideListener;

    if-eqz p1, :cond_6

    .line 193
    invoke-interface {p1}, Lcom/powervision/gcs/view/SlideReturnView$SlideListener;->cancelReturnSlide()V

    .line 194
    invoke-direct {p0}, Lcom/powervision/gcs/view/SlideReturnView;->resetDistance()V

    .line 196
    :cond_6
    iput v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDrawStatus:I

    :goto_0
    return v1

    :cond_7
    if-lez p1, :cond_a

    .line 201
    iget p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mMaxDistance:I

    if-ge p1, p2, :cond_8

    .line 202
    iget-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mRightResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 204
    :cond_8
    iput v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDrawStatus:I

    .line 205
    iget-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mListener:Lcom/powervision/gcs/view/SlideReturnView$SlideListener;

    if-eqz p1, :cond_9

    .line 206
    invoke-interface {p1}, Lcom/powervision/gcs/view/SlideReturnView$SlideListener;->returnSlide()V

    .line 207
    invoke-direct {p0}, Lcom/powervision/gcs/view/SlideReturnView;->resetDistance()V

    :cond_9
    :goto_1
    return v1

    .line 213
    :cond_a
    iput v1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDrawStatus:I

    goto :goto_2

    .line 161
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mStartX:I

    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 164
    iget p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mStartX:I

    iget v2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mIconLeft:I

    if-le p2, v2, :cond_c

    iget v2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mIconRight:I

    if-ge p2, v2, :cond_c

    iget p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mIconTop:I

    if-le p1, p2, :cond_c

    iget p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mIconBottom:I

    if-ge p1, p2, :cond_c

    .line 165
    iget-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mLeftResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/powervision/gcs/view/SlideReturnView;->mRightResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iput v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->mDrawStatus:I

    :cond_c
    :goto_2
    return v1
.end method

.method public setOkBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mRightOKBitmap:Landroid/graphics/Bitmap;

    .line 245
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SlideReturnView;->invalidate()V

    return-void
.end method

.method public setOkDrawable(I)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 250
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/SlideReturnView;->setOkBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setReDesc(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mGrayText:Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SlideReturnView;->invalidate()V

    return-void
.end method

.method public setReTitle(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mYellowText:Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SlideReturnView;->invalidate()V

    return-void
.end method

.method public setSlideListener(Lcom/powervision/gcs/view/SlideReturnView$SlideListener;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView;->mListener:Lcom/powervision/gcs/view/SlideReturnView$SlideListener;

    return-void
.end method
