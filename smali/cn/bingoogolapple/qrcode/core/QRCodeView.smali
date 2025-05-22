.class public abstract Lcn/bingoogolapple/qrcode/core/QRCodeView;
.super Landroid/widget/RelativeLayout;
.source "QRCodeView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;
    }
.end annotation


# static fields
.field private static final AMBIENT_BRIGHTNESS_DARK:I = 0x3c

.field private static final AMBIENT_BRIGHTNESS_DARK_LIST:[J

.field private static final AMBIENT_BRIGHTNESS_WAIT_SCAN_TIME:I = 0x96

.field private static final NO_CAMERA_ID:I = -0x1

.field private static final SPOT_MIN_DELAY:I = 0x96


# instance fields
.field private mAmbientBrightnessDarkIndex:I

.field private mAutoZoomAnimator:Landroid/animation/ValueAnimator;

.field protected mBarcodeType:Lcn/bingoogolapple/qrcode/core/BarcodeType;

.field protected mCamera:Landroid/hardware/Camera;

.field protected mCameraId:I

.field protected mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

.field protected mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

.field protected mHandler:Landroid/os/Handler;

.field private mLastAmbientBrightnessRecordTime:J

.field private mLastAutoZoomTime:J

.field private mLastPreviewFrameTime:J

.field private mLocationPoints:[Landroid/graphics/PointF;

.field private mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

.field private mPaint:Landroid/graphics/Paint;

.field protected mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

.field protected mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

.field protected mSpotAble:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 46
    fill-array-data v0, :array_0

    sput-object v0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->AMBIENT_BRIGHTNESS_DARK_LIST:[J

    return-void

    nop

    :array_0
    .array-data 8
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 31
    iput-boolean p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    .line 33
    iput p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraId:I

    .line 36
    sget-object v0, Lcn/bingoogolapple/qrcode/core/BarcodeType;->HIGH_FREQUENCY:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mBarcodeType:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLastPreviewFrameTime:J

    .line 39
    iput-wide v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLastAutoZoomTime:J

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLastAmbientBrightnessRecordTime:J

    .line 44
    iput p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mAmbientBrightnessDarkIndex:I

    .line 429
    new-instance p3, Lcn/bingoogolapple/qrcode/core/QRCodeView$2;

    invoke-direct {p3, p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView$2;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;)V

    iput-object p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

    .line 58
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mHandler:Landroid/os/Handler;

    .line 59
    invoke-direct {p0, p1, p2}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->setupReader()V

    return-void
.end method

.method static synthetic access$000(Lcn/bingoogolapple/qrcode/core/QRCodeView;IILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startAutoZoom(IILjava/lang/String;)V

    return-void
.end method

.method private findCameraIdByFacing(I)I
    .locals 3

    .line 148
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    .line 149
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 151
    :try_start_0
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 152
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    return v1

    :catch_0
    move-exception v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private handleAmbientBrightness([BLandroid/hardware/Camera;)V
    .locals 10

    .line 329
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 332
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 333
    iget-wide v2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLastAmbientBrightnessRecordTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x96

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    return-void

    .line 336
    :cond_1
    iput-wide v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLastAmbientBrightnessRecordTime:J

    .line 338
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    .line 339
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    const-wide/16 v1, 0x0

    mul-int v0, v0, p2

    int-to-long v3, v0

    const/16 p2, 0xa

    .line 348
    array-length v0, p1

    int-to-float v0, v0

    long-to-float v5, v3

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float v5, v5, v6

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v5, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_5

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    int-to-long v6, v5

    cmp-long v8, v6, v3

    if-gez v8, :cond_2

    .line 352
    aget-byte v6, p1, v5

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    add-long/2addr v1, v6

    add-int/lit8 v5, v5, 0xa

    goto :goto_0

    :cond_2
    int-to-long p1, p2

    .line 355
    div-long/2addr v3, p1

    div-long/2addr v1, v3

    .line 357
    sget-object p1, Lcn/bingoogolapple/qrcode/core/QRCodeView;->AMBIENT_BRIGHTNESS_DARK_LIST:[J

    array-length p2, p1

    .line 358
    iget v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mAmbientBrightnessDarkIndex:I

    rem-int/2addr v3, p2

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mAmbientBrightnessDarkIndex:I

    aput-wide v1, p1, v3

    const/4 p2, 0x1

    add-int/2addr v3, p2

    .line 359
    iput v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mAmbientBrightnessDarkIndex:I

    .line 362
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-wide v5, p1, v4

    const-wide/16 v7, 0x3c

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 368
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6444\u50cf\u5934\u73af\u5883\u4eae\u5ea6\u4e3a\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    if-eqz p1, :cond_5

    .line 370
    invoke-interface {p1, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;->onCameraAmbientBrightnessChanged(Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method private handleAutoZoom([Landroid/graphics/PointF;Ljava/lang/String;)Z
    .locals 10

    .line 508
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_6

    .line 511
    array-length v0, p1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 514
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mAutoZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 517
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLastAutoZoomTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4b0

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    return v2

    .line 520
    :cond_3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 525
    :cond_4
    aget-object v3, p1, v1

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 526
    aget-object v4, p1, v1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 527
    aget-object v5, p1, v2

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 528
    aget-object p1, p1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    .line 529
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v4, p1

    .line 530
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float v3, v3, v3

    mul-float p1, p1, p1

    add-float/2addr v3, p1

    float-to-double v3, v3

    .line 531
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 533
    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v3}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getRectWidth()I

    move-result v3

    .line 534
    div-int/lit8 v3, v3, 0x4

    if-le p1, v3, :cond_5

    return v1

    .line 538
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v8

    .line 539
    div-int/lit8 v7, v8, 0x4

    .line 540
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v6

    .line 541
    new-instance p1, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;

    move-object v4, p1

    move-object v5, p0

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcn/bingoogolapple/qrcode/core/QRCodeView$3;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;IIILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 64
    new-instance v0, Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-direct {v0, p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    .line 66
    new-instance v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-direct {v0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    .line 67
    invoke-virtual {v0, p0, p2}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->init(Lcn/bingoogolapple/qrcode/core/QRCodeView;Landroid/util/AttributeSet;)V

    .line 68
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    sget v1, Lcn/bingoogolapple/qrcode/core/R$id;->bgaqrcode_camera_preview:I

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->setId(I)V

    .line 69
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->addView(Landroid/view/View;)V

    .line 70
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getId()I

    move-result p1

    const/4 p2, 0x6

    invoke-virtual {v0, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->getId()I

    move-result p1

    const/16 p2, 0x8

    invoke-virtual {v0, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {p0, p1, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPaint:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->getScanBoxView()Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    move-result-object p2

    invoke-virtual {p2}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getCornerColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private startAutoZoom(IILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 551
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mAutoZoomAnimator:Landroid/animation/ValueAnimator;

    .line 552
    new-instance p2, Lcn/bingoogolapple/qrcode/core/QRCodeView$4;

    invoke-direct {p2, p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView$4;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 564
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mAutoZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcn/bingoogolapple/qrcode/core/QRCodeView$5;

    invoke-direct {p2, p0, p3}, Lcn/bingoogolapple/qrcode/core/QRCodeView$5;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 570
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mAutoZoomAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x258

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 571
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mAutoZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 572
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mAutoZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLastAutoZoomTime:J

    return-void
.end method

.method private startCameraById(I)V
    .locals 1

    .line 164
    :try_start_0
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraId:I

    .line 165
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    .line 166
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->setCamera(Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;->onScanQRCodeOpenCameraError()V

    :cond_0
    :goto_0
    return-void
.end method

.method private transform(FFFFZILandroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 4

    .line 586
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->getWidth()I

    move-result v0

    .line 587
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->getHeight()I

    move-result v1

    .line 593
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float p5, v0

    div-float v0, p5, p4

    int-to-float v1, v1

    div-float v2, v1, p3

    .line 596
    new-instance v3, Landroid/graphics/PointF;

    sub-float/2addr p4, p1

    mul-float p4, p4, v0

    sub-float/2addr p3, p2

    mul-float p3, p3, v2

    invoke-direct {v3, p4, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 597
    iget p1, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    iput v1, v3, Landroid/graphics/PointF;->y:F

    .line 598
    iget p1, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p5, p1

    iput p5, v3, Landroid/graphics/PointF;->x:F

    if-nez p7, :cond_1

    .line 601
    iget p1, v3, Landroid/graphics/PointF;->y:F

    int-to-float p2, p6

    add-float/2addr p1, p2

    iput p1, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    int-to-float p6, v0

    div-float p3, p6, p3

    int-to-float v0, v1

    div-float/2addr v0, p4

    .line 606
    new-instance v3, Landroid/graphics/PointF;

    mul-float p1, p1, p3

    mul-float p2, p2, v0

    invoke-direct {v3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz p5, :cond_1

    .line 608
    iget p1, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p6, p1

    iput p6, v3, Landroid/graphics/PointF;->x:F

    :cond_1
    :goto_0
    if-eqz p7, :cond_2

    .line 613
    iget p1, v3, Landroid/graphics/PointF;->y:F

    iget p2, p7, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, v3, Landroid/graphics/PointF;->y:F

    .line 614
    iget p1, v3, Landroid/graphics/PointF;->x:F

    iget p2, p7, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, v3, Landroid/graphics/PointF;->x:F

    :cond_2
    return-object v3
.end method


# virtual methods
.method public changeToScanBarcodeStyle()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getIsBarcode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->setIsBarcode(Z)V

    :cond_0
    return-void
.end method

.method public changeToScanQRCodeStyle()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getIsBarcode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->setIsBarcode(Z)V

    :cond_0
    return-void
.end method

.method public closeFlashlight()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->closeFlashlight()V

    return-void
.end method

.method public decodeQRCode(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 390
    new-instance v0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    invoke-direct {v0, p1, p0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;-><init>(Landroid/graphics/Bitmap;Lcn/bingoogolapple/qrcode/core/QRCodeView;)V

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->perform()Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    return-void
.end method

.method public decodeQRCode(Ljava/lang/String;)V
    .locals 1

    .line 381
    new-instance v0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    invoke-direct {v0, p1, p0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;-><init>(Ljava/lang/String;Lcn/bingoogolapple/qrcode/core/QRCodeView;)V

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->perform()Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 448
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 451
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->isShowLocationPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLocationPoints:[Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 456
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x41200000    # 10.0f

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 458
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLocationPoints:[Landroid/graphics/PointF;

    const-wide/16 v0, 0x7d0

    .line 459
    invoke-virtual {p0, v0, v1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->postInvalidateDelayed(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getCameraPreview()Lcn/bingoogolapple/qrcode/core/CameraPreview;
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    return-object v0
.end method

.method public getIsScanBarcodeStyle()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getIsBarcode()Z

    move-result v0

    return v0
.end method

.method public getScanBoxView()Lcn/bingoogolapple/qrcode/core/ScanBoxView;
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    return-object v0
.end method

.method public hiddenScanRect()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 113
    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected isAutoZoom()Z
    .locals 1

    .line 473
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->isAutoZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isShowLocationPoint()Z
    .locals 1

    .line 466
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->isShowLocationPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->stopCamera()V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mHandler:Landroid/os/Handler;

    .line 280
    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    .line 281
    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 578
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 579
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mAutoZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method onPostParseBitmapOrPicture(Lcn/bingoogolapple/qrcode/core/ScanResult;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 424
    :cond_0
    iget-object p1, p1, Lcn/bingoogolapple/qrcode/core/ScanResult;->result:Ljava/lang/String;

    .line 425
    :goto_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    invoke-interface {v0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;->onScanQRCodeSuccess(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method onPostParseData(Lcn/bingoogolapple/qrcode/core/ScanResult;)V
    .locals 1

    .line 398
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 401
    :cond_1
    iget-object p1, p1, Lcn/bingoogolapple/qrcode/core/ScanResult;->result:Ljava/lang/String;

    .line 402
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    :try_start_0
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_3

    .line 405
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 408
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    .line 413
    :try_start_1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    invoke-interface {v0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;->onScanQRCodeSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 417
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5

    .line 311
    invoke-static {}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e24\u6b21 onPreviewFrame \u65f6\u95f4\u95f4\u9694\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLastPreviewFrameTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLastPreviewFrameTime:J

    .line 316
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-direct {p0, p1, p2}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->handleAmbientBrightness([BLandroid/hardware/Camera;)V

    .line 320
    :cond_1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    .line 321
    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 325
    :cond_2
    new-instance v0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {v0, p2, p1, p0, v1}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;-><init>(Landroid/hardware/Camera;[BLcn/bingoogolapple/qrcode/core/QRCodeView;Z)V

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->perform()Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    :cond_3
    :goto_0
    return-void
.end method

.method onScanBoxRectChanged(Landroid/graphics/Rect;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->onScanBoxRectChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public openFlashlight()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;

    invoke-direct {v1, p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView$1;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;)V

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    .line 264
    invoke-virtual {v2}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->isPreviewing()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1f4

    .line 259
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected abstract processBitmapData(Landroid/graphics/Bitmap;)Lcn/bingoogolapple/qrcode/core/ScanResult;
.end method

.method protected abstract processData([BIIZ)Lcn/bingoogolapple/qrcode/core/ScanResult;
.end method

.method public setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mDelegate:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    return-void
.end method

.method protected abstract setupReader()V
.end method

.method public showScanRect()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startCamera()V
    .locals 1

    .line 121
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraId:I

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startCamera(I)V

    return-void
.end method

.method public startCamera(I)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->findCameraIdByFacing(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 133
    invoke-direct {p0, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startCameraById(I)V

    return-void

    :cond_1
    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 138
    invoke-direct {p0, v2}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->findCameraIdByFacing(I)I

    move-result v0

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    const/4 p1, 0x0

    .line 140
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->findCameraIdByFacing(I)I

    move-result v0

    :cond_3
    :goto_0
    if-eq v0, v1, :cond_4

    .line 143
    invoke-direct {p0, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startCameraById(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public startSpot()V
    .locals 1

    const/16 v0, 0x96

    .line 196
    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startSpotDelay(I)V

    return-void
.end method

.method public startSpotAndShowRect()V
    .locals 0

    .line 251
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startSpot()V

    .line 252
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->showScanRect()V

    return-void
.end method

.method public startSpotDelay(I)V
    .locals 4

    const/16 v0, 0x96

    .line 204
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    .line 207
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->startCamera()V

    .line 209
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public stopCamera()V
    .locals 2

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->stopSpotAndHiddenRect()V

    .line 181
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->stopCameraPreview()V

    .line 183
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraPreview:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->setCamera(Landroid/hardware/Camera;)V

    .line 184
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 185
    iput-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopSpot()V
    .locals 2

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mSpotAble:Z

    .line 221
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->cancelTask()V

    .line 223
    iput-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mProcessDataTask:Lcn/bingoogolapple/qrcode/core/ProcessDataTask;

    .line 226
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 228
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 235
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mOneShotPreviewCallbackTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public stopSpotAndHiddenRect()V
    .locals 0

    .line 243
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->stopSpot()V

    .line 244
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->hiddenScanRect()V

    return-void
.end method

.method protected transformToViewCoordinates([Landroid/graphics/PointF;Landroid/graphics/Rect;ZLjava/lang/String;)Z
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    .line 477
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 483
    :cond_0
    :try_start_0
    iget-object v1, v9, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 484
    iget v1, v9, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mCameraId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 485
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v13

    .line 487
    array-length v1, v0

    new-array v14, v1, [Landroid/graphics/PointF;

    .line 489
    array-length v15, v0

    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v8, v15, :cond_2

    aget-object v1, v0, v8

    .line 490
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v1, v11, Landroid/hardware/Camera$Size;->width:I

    int-to-float v4, v1

    iget v1, v11, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v1

    move-object/from16 v1, p0

    move v6, v12

    move v7, v13

    move/from16 v17, v8

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->transform(FFFFZILandroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v1

    aput-object v1, v14, v16

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v8, v17, 0x1

    goto :goto_1

    .line 493
    :cond_2
    iput-object v14, v9, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLocationPoints:[Landroid/graphics/PointF;

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->postInvalidate()V

    if-eqz p3, :cond_3

    move-object/from16 v0, p4

    .line 497
    invoke-direct {v9, v14, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->handleAutoZoom([Landroid/graphics/PointF;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_3
    return v10

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 501
    iput-object v1, v9, Lcn/bingoogolapple/qrcode/core/QRCodeView;->mLocationPoints:[Landroid/graphics/PointF;

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return v10
.end method
