.class public Lcn/bingoogolapple/qrcode/core/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

.field private mIsTouchFocusing:Z

.field private mOldDist:F

.field private mPreviewing:Z

.field private mSurfaceCreated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    .line 18
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mIsTouchFocusing:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mOldDist:F

    return-void
.end method

.method static synthetic access$000(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Landroid/hardware/Camera;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$102(Lcn/bingoogolapple/qrcode/core/CameraPreview;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$200(Lcn/bingoogolapple/qrcode/core/CameraPreview;)Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->startContinuousAutoFocus()V

    return-void
.end method

.method private flashLightAvailable()Z
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private handleFocusMetering(FFII)V
    .locals 14

    move-object v1, p0

    .line 213
    :try_start_0
    iget-object v0, v1, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 215
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v3

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_0

    const-string v3, "\u652f\u6301\u8bbe\u7f6e\u5bf9\u7126\u533a\u57df"

    .line 216
    invoke-static {v3}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 218
    iget v12, v2, Landroid/hardware/Camera$Size;->width:I

    iget v13, v2, Landroid/hardware/Camera$Size;->height:I

    move v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {v7 .. v13}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->calculateFocusMeteringArea(FFFIIII)Landroid/graphics/Rect;

    move-result-object v3

    const-string v7, "\u5bf9\u7126\u533a\u57df"

    .line 222
    invoke-static {v7, v3}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->printRect(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 223
    new-instance v7, Landroid/hardware/Camera$Area;

    invoke-direct {v7, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    const-string v3, "macro"

    .line 224
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "\u4e0d\u652f\u6301\u8bbe\u7f6e\u5bf9\u7126\u533a\u57df"

    .line 226
    invoke-static {v3}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 229
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v7

    if-lez v7, :cond_1

    const-string v3, "\u652f\u6301\u8bbe\u7f6e\u6d4b\u5149\u533a\u57df"

    .line 230
    invoke-static {v3}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    const/high16 v7, 0x3fc00000    # 1.5f

    .line 232
    iget v12, v2, Landroid/hardware/Camera$Size;->width:I

    iget v13, v2, Landroid/hardware/Camera$Size;->height:I

    move v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {v7 .. v13}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->calculateFocusMeteringArea(FFFIIII)Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "\u6d4b\u5149\u533a\u57df"

    .line 236
    invoke-static {v3, v2}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->printRect(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 237
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-direct {v3, v2, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const-string v2, "\u4e0d\u652f\u6301\u8bbe\u7f6e\u6d4b\u5149\u533a\u57df"

    .line 239
    invoke-static {v2}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    move v5, v3

    :goto_1
    if-eqz v5, :cond_2

    .line 243
    iget-object v2, v1, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 244
    iget-object v2, v1, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 245
    iget-object v0, v1, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcn/bingoogolapple/qrcode/core/CameraPreview$2;

    invoke-direct {v2, p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview$2;-><init>(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_2

    .line 256
    :cond_2
    iput-boolean v6, v1, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mIsTouchFocusing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5bf9\u7126\u6d4b\u5149\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->e(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->startContinuousAutoFocus()V

    :goto_2
    return-void
.end method

.method private static handleZoom(ZLandroid/hardware/Camera;)V
    .locals 3

    .line 190
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string p0, "\u653e\u5927"

    .line 194
    invoke-static {p0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    if-lez v1, :cond_1

    const-string p0, "\u7f29\u5c0f"

    .line 197
    invoke-static {p0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const-string p0, "\u65e2\u4e0d\u653e\u5927\u4e5f\u4e0d\u7f29\u5c0f"

    .line 200
    invoke-static {p0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    .line 202
    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 203
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    :cond_2
    const-string p0, "\u4e0d\u652f\u6301\u7f29\u653e"

    .line 205
    invoke-static {p0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private showCameraPreview()V
    .locals 1

    .line 71
    new-instance v0, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;

    invoke-direct {v0, p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview$1;-><init>(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startContinuousAutoFocus()V
    .locals 2

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mIsTouchFocusing:Z

    .line 270
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "continuous-picture"

    .line 276
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 279
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "\u8fde\u7eed\u5bf9\u7126\u5931\u8d25"

    .line 281
    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method closeFlashlight()V
    .locals 2

    .line 112
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->flashLightAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->closeFlashlight(Landroid/hardware/Camera;)V

    :cond_0
    return-void
.end method

.method isPreviewing()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMeasure(II)V
    .locals 8

    .line 291
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getDefaultSize(II)I

    move-result p1

    .line 292
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getDefaultSize(II)I

    move-result p2

    .line 293
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 296
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 297
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, v2, v3

    int-to-float v5, p2

    div-float/2addr v4, v5

    int-to-float v1, v1

    mul-float v6, v1, v3

    int-to-float v0, v0

    div-float/2addr v6, v0

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_0

    mul-float v0, v0, v3

    div-float/2addr v0, v1

    div-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int p1, v5

    goto :goto_0

    :cond_0
    div-float/2addr v2, v6

    add-float/2addr v2, v7

    float-to-int p2, v2

    :cond_1
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 306
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    return-void
.end method

.method onScanBoxRectChanged(Landroid/graphics/Rect;)V
    .locals 8

    .line 122
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const-string v4, "\u8f6c\u6362\u524d"

    .line 130
    invoke-static {v4, p1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->printRect(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 132
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v6, v1

    move v1, v0

    move v0, v6

    move v7, v3

    move v3, v2

    move v2, v7

    .line 141
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {p1, v4, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "\u8f6c\u6362\u540e"

    .line 142
    invoke-static {v0, p1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->printRect(Ljava/lang/String;Landroid/graphics/Rect;)V

    const-string v0, "\u626b\u7801\u6846\u53d1\u751f\u53d8\u5316\u89e6\u53d1\u5bf9\u7126\u6d4b\u5149"

    .line 144
    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->handleFocusMetering(FFII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 150
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_3

    .line 155
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mIsTouchFocusing:Z

    if-eqz v0, :cond_1

    return v1

    .line 158
    :cond_1
    iput-boolean v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mIsTouchFocusing:Z

    const-string v0, "\u624b\u6307\u89e6\u6478\u89e6\u53d1\u5bf9\u7126\u6d4b\u5149"

    .line 159
    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 162
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v5, v2

    move v2, v0

    move v0, v5

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v3, v4}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    .line 168
    invoke-direct {p0, v0, v2, v3, v3}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->handleFocusMetering(FFII)V

    .line 171
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    goto :goto_0

    .line 174
    :cond_4
    invoke-static {p1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->calculateFingerSpacing(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mOldDist:F

    goto :goto_0

    .line 177
    :cond_5
    invoke-static {p1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->calculateFingerSpacing(Landroid/view/MotionEvent;)F

    move-result p1

    .line 178
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mOldDist:F

    cmpl-float v2, p1, v0

    if-lez v2, :cond_6

    .line 179
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1, p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->handleZoom(ZLandroid/hardware/Camera;)V

    goto :goto_0

    :cond_6
    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    const/4 p1, 0x0

    .line 181
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-static {p1, v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->handleZoom(ZLandroid/hardware/Camera;)V

    :cond_7
    :goto_0
    return v1
.end method

.method openFlashlight()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->flashLightAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->openFlashlight(Landroid/hardware/Camera;)V

    :cond_0
    return-void
.end method

.method public reactNativeShowCameraPreview()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->stopCameraPreview()V

    .line 67
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->showCameraPreview()V

    :cond_1
    :goto_0
    return-void
.end method

.method setCamera(Landroid/hardware/Camera;)V
    .locals 1

    .line 27
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 29
    new-instance p1, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCameraConfigurationManager:Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;

    .line 30
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/qrcode/core/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 32
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 33
    iget-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->requestLayout()V

    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->showCameraPreview()V

    :cond_1
    :goto_0
    return-void
.end method

.method stopCameraPreview()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 95
    :try_start_0
    iput-boolean v1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mPreviewing:Z

    .line 96
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 97
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 98
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 48
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->stopCameraPreview()V

    .line 52
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->showCameraPreview()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview;->mSurfaceCreated:Z

    .line 58
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->stopCameraPreview()V

    return-void
.end method
