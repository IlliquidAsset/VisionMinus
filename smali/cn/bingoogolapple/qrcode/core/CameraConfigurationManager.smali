.class final Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field private static final TEN_DESIRED_ZOOM:I = 0x1b


# instance fields
.field private mCameraResolution:Landroid/graphics/Point;

.field private final mContext:Landroid/content/Context;

.field private mPreviewResolution:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static autoFocusAble(Landroid/hardware/Camera;)Z
    .locals 1

    .line 46
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p0

    const-string v0, "auto"

    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private doSetTorch(Landroid/hardware/Camera;Z)V
    .locals 3

    .line 114
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p2

    const-string v1, "torch"

    const-string v2, "on"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p2

    const-string v1, "off"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 123
    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 125
    :cond_1
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private static findBestMotZoomValue(Ljava/lang/CharSequence;I)I
    .locals 9

    .line 216
    sget-object v0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 217
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 220
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v5, v5, v3

    double-to-int v5, v5

    int-to-double v6, p1

    sub-double/2addr v6, v3

    .line 225
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-int v6, p1, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v8, v3, v6

    if-gez v8, :cond_0

    move v2, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return p1

    :cond_1
    return v2
.end method

.method private static findBestPreviewSizeValue(Ljava/util/List;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/graphics/Point;",
            ")",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .line 190
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v1, 0x0

    const v2, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 192
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    .line 193
    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    .line 195
    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    if-nez v5, :cond_1

    move v1, v3

    move v0, v4

    goto :goto_1

    :cond_1
    if-ge v5, v2, :cond_0

    move v1, v3

    move v0, v4

    move v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    .line 209
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 132
    invoke-interface {p0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private getDisplayOrientation()I
    .locals 5

    .line 142
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    .line 143
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 144
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-nez v2, :cond_0

    return v1

    .line 148
    :cond_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x10e

    goto :goto_0

    :cond_2
    const/16 v1, 0xb4

    goto :goto_0

    :cond_3
    const/16 v1, 0x5a

    .line 168
    :cond_4
    :goto_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v3, :cond_5

    .line 169
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    .line 170
    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 172
    :cond_5
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_1
    return v0
.end method

.method private static getPreviewResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    .line 179
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->findBestPreviewSizeValue(Ljava/util/List;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    if-nez p0, :cond_0

    .line 181
    new-instance p0, Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    iget p1, p1, Landroid/graphics/Point;->y:I

    shr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    invoke-direct {p0, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    :cond_0
    return-object p0
.end method

.method private selectPreviewFpsRange(Landroid/hardware/Camera;F)[I
    .locals 5

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 92
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    .line 94
    aget v3, v2, v3

    sub-int v3, p2, v3

    const/4 v4, 0x1

    .line 95
    aget v4, v2, v4

    sub-int v4, p2, v4

    .line 96
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_0

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private setZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 8

    const-string v0, "zoom-supported"

    .line 235
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1b

    const-string v1, "max-zoom"

    .line 242
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    if-eqz v1, :cond_1

    .line 245
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-double v4, v4, v2

    double-to-int v4, v4

    if-le v0, v4, :cond_1

    move v0, v4

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    const-string v4, "taking-picture-zoom-max"

    .line 253
    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 256
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-le v0, v5, :cond_2

    move v0, v5

    goto :goto_1

    :catch_1
    nop

    :cond_2
    :goto_1
    const-string v5, "mot-zoom-values"

    .line 264
    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 266
    invoke-static {v5, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->findBestMotZoomValue(Ljava/lang/CharSequence;I)I

    move-result v0

    :cond_3
    const-string v6, "mot-zoom-step"

    .line 269
    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 272
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v6, v6, v2

    double-to-int v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    .line 275
    rem-int v6, v0, v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v0, v6

    goto :goto_2

    :catch_2
    nop

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    int-to-double v5, v0

    div-double/2addr v5, v2

    .line 282
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zoom"

    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v4, :cond_7

    const-string v1, "taking-picture-zoom"

    .line 285
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method


# virtual methods
.method closeFlashlight(Landroid/hardware/Camera;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mCameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 28
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 29
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 31
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 33
    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-static {p1, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->getPreviewResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    .line 38
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    new-instance p1, Landroid/graphics/Point;

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mCameraResolution:Landroid/graphics/Point;

    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mCameraResolution:Landroid/graphics/Point;

    :goto_0
    return-void
.end method

.method openFlashlight(Landroid/hardware/Camera;)V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-direct {p0, p1, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;)V
    .locals 4

    .line 56
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->mPreviewResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 58
    invoke-direct {p0, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->setZoom(Landroid/hardware/Camera$Parameters;)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 61
    invoke-direct {p0, p1, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->selectPreviewFpsRange(Landroid/hardware/Camera;F)[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 63
    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 68
    :cond_0
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->getDisplayOrientation()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 69
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
