.class public Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;
.super Ljava/lang/Object;
.source "BGAQRCodeUtil.java"


# static fields
.field private static debug:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p1

    .line 103
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 v1, 0x5a

    if-ne p1, v1, :cond_1

    .line 106
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 114
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x2

    .line 115
    aget v3, v2, v3

    const/4 v4, 0x5

    .line 116
    aget v2, v2, v4

    sub-float/2addr p1, v3

    sub-float/2addr v1, v2

    .line 117
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 118
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 119
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 120
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    invoke-virtual {v2, p0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method static calculateFingerSpacing(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 177
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method static calculateFocusMeteringArea(FFFIIII)Landroid/graphics/Rect;
    .locals 2

    int-to-float p3, p3

    mul-float p3, p3, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    float-to-int p3, p3

    int-to-float p4, p4

    mul-float p4, p4, p0

    div-float/2addr p4, v0

    float-to-int p0, p4

    int-to-float p4, p5

    div-float/2addr p1, p4

    const/high16 p4, 0x44fa0000    # 2000.0f

    mul-float p1, p1, p4

    const/high16 p5, 0x447a0000    # 1000.0f

    sub-float/2addr p1, p5

    float-to-int p1, p1

    int-to-float p6, p6

    div-float/2addr p2, p6

    mul-float p2, p2, p4

    sub-float/2addr p2, p5

    float-to-int p2, p2

    .line 160
    new-instance p4, Landroid/graphics/RectF;

    sub-int p5, p1, p3

    const/16 p6, -0x3e8

    const/16 v0, 0x3e8

    invoke-static {p5, p6, v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->clamp(III)I

    move-result p5

    int-to-float p5, p5

    sub-int v1, p2, p0

    .line 161
    invoke-static {v1, p6, v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->clamp(III)I

    move-result v1

    int-to-float v1, v1

    add-int/2addr p1, p3

    .line 162
    invoke-static {p1, p6, v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->clamp(III)I

    move-result p1

    int-to-float p1, p1

    add-int/2addr p2, p0

    .line 163
    invoke-static {p2, p6, v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->clamp(III)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p4, p5, v1, p1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 164
    new-instance p0, Landroid/graphics/Rect;

    iget p1, p4, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p4, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p3, p4, Landroid/graphics/RectF;->right:F

    .line 165
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method static clamp(III)I
    .locals 0

    .line 169
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BGAQRCode"

    .line 33
    invoke-static {v0, p0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    sget-boolean v0, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->debug:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 49
    sget-boolean v0, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "BGAQRCode"

    .line 50
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getDecodeAbleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 188
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 189
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 190
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 191
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit16 v2, v2, 0x190

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 195
    :goto_0
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 198
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    const-string v0, "window"

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 64
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 65
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 5

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101020d

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    return v3

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v4, "android"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_1
    return v3
.end method

.method public static isDebug()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->debug:Z

    return v0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 1

    .line 58
    invoke-static {p0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    .line 59
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->x:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static makeTintBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 133
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 134
    invoke-virtual {v1, p0, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static printRect(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " centerX\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " centerY\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " width\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " height\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " rectHalfWidth\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " rectHalfHeight\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " left\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " top\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " right\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bottom\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BGAQRCodeFocusArea"

    .line 37
    invoke-static {p1, p0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 25
    sput-boolean p0, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->debug:Z

    return-void
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
