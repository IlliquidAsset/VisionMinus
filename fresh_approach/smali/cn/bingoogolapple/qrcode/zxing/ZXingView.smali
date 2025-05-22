.class public Lcn/bingoogolapple/qrcode/zxing/ZXingView;
.super Lcn/bingoogolapple/qrcode/core/QRCodeView;
.source "ZXingView.java"


# instance fields
.field private mHintMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcn/bingoogolapple/qrcode/core/QRCodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private isNeedAutoZoom(Lcom/google/zxing/BarcodeFormat;)Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->isAutoZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected processBitmapData(Landroid/graphics/Bitmap;)Lcn/bingoogolapple/qrcode/core/ScanResult;
    .locals 1

    .line 80
    new-instance v0, Lcn/bingoogolapple/qrcode/core/ScanResult;

    invoke-static {p1}, Lcn/bingoogolapple/qrcode/zxing/QRCodeDecoder;->syncDecodeQRCode(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/bingoogolapple/qrcode/core/ScanResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected processData([BIIZ)Lcn/bingoogolapple/qrcode/core/ScanResult;
    .locals 14

    move-object v1, p0

    const/4 v2, 0x0

    .line 90
    :try_start_0
    iget-object v0, v1, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mScanBoxView:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    move/from16 v10, p3

    invoke-virtual {v0, v10}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getScanBoxAreaRect(I)Landroid/graphics/Rect;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_0

    .line 92
    :try_start_1
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 93
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v11

    const/4 v13, 0x0

    move-object v3, v0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move v10, v11

    move v11, v13

    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 98
    :goto_0
    iget-object v3, v1, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    new-instance v5, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v5, v0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v4, v5}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v3, v4}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 100
    :try_start_2
    iget-object v4, v1, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v5, Lcom/google/zxing/BinaryBitmap;

    new-instance v6, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v6, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v5, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v4, v5}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v0, "GlobalHistogramBinarizer \u6ca1\u8bc6\u522b\u5230\uff0cHybridBinarizer \u80fd\u8bc6\u522b\u5230"

    .line 102
    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v12, v3

    .line 106
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :cond_1
    :goto_2
    iget-object v0, v1, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    if-nez v3, :cond_2

    return-object v2

    .line 115
    :cond_2
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v2

    .line 120
    :cond_3
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u683c\u5f0f\u4e3a\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/zxing/BarcodeFormat;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, v4}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->isNeedAutoZoom(Lcom/google/zxing/BarcodeFormat;)Z

    move-result v4

    .line 125
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->isShowLocationPoint()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_6

    .line 126
    :cond_4
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 127
    array-length v5, v3

    new-array v5, v5, [Landroid/graphics/PointF;

    .line 129
    array-length v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v9, v3, v7

    .line 130
    new-instance v10, Landroid/graphics/PointF;

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-direct {v10, v11, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v10, v5, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 134
    :cond_5
    invoke-virtual {p0, v5, v12, v4, v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->transformToViewCoordinates([Landroid/graphics/PointF;Landroid/graphics/Rect;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-object v2

    .line 138
    :cond_6
    new-instance v2, Lcn/bingoogolapple/qrcode/core/ScanResult;

    invoke-direct {v2, v0}, Lcn/bingoogolapple/qrcode/core/ScanResult;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 108
    :goto_4
    iget-object v2, v1, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v0
.end method

.method public setType(Lcn/bingoogolapple/qrcode/core/BarcodeType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bingoogolapple/qrcode/core/BarcodeType;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mBarcodeType:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    .line 70
    iput-object p2, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mHintMap:Ljava/util/Map;

    .line 72
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mBarcodeType:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    sget-object p2, Lcn/bingoogolapple/qrcode/core/BarcodeType;->CUSTOM:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mHintMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "barcodeType \u4e3a BarcodeType.CUSTOM \u65f6 hintMap \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->setupReader()V

    return-void
.end method

.method protected setupReader()V
    .locals 2

    .line 41
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 43
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mBarcodeType:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    sget-object v1, Lcn/bingoogolapple/qrcode/core/BarcodeType;->ONE_DIMENSION:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    sget-object v1, Lcn/bingoogolapple/qrcode/zxing/QRCodeDecoder;->ONE_DIMENSION_HINT_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mBarcodeType:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    sget-object v1, Lcn/bingoogolapple/qrcode/core/BarcodeType;->TWO_DIMENSION:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    sget-object v1, Lcn/bingoogolapple/qrcode/zxing/QRCodeDecoder;->TWO_DIMENSION_HINT_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mBarcodeType:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    sget-object v1, Lcn/bingoogolapple/qrcode/core/BarcodeType;->ONLY_QR_CODE:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    if-ne v0, v1, :cond_2

    .line 48
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    sget-object v1, Lcn/bingoogolapple/qrcode/zxing/QRCodeDecoder;->QR_CODE_HINT_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mBarcodeType:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    sget-object v1, Lcn/bingoogolapple/qrcode/core/BarcodeType;->ONLY_CODE_128:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    if-ne v0, v1, :cond_3

    .line 50
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    sget-object v1, Lcn/bingoogolapple/qrcode/zxing/QRCodeDecoder;->CODE_128_HINT_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mBarcodeType:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    sget-object v1, Lcn/bingoogolapple/qrcode/core/BarcodeType;->ONLY_EAN_13:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    if-ne v0, v1, :cond_4

    .line 52
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    sget-object v1, Lcn/bingoogolapple/qrcode/zxing/QRCodeDecoder;->EAN_13_HINT_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    goto :goto_0

    .line 53
    :cond_4
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mBarcodeType:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    sget-object v1, Lcn/bingoogolapple/qrcode/core/BarcodeType;->HIGH_FREQUENCY:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    if-ne v0, v1, :cond_5

    .line 54
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    sget-object v1, Lcn/bingoogolapple/qrcode/zxing/QRCodeDecoder;->HIGH_FREQUENCY_HINT_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    goto :goto_0

    .line 55
    :cond_5
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mBarcodeType:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    sget-object v1, Lcn/bingoogolapple/qrcode/core/BarcodeType;->CUSTOM:Lcn/bingoogolapple/qrcode/core/BarcodeType;

    if-ne v0, v1, :cond_6

    .line 56
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mHintMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    goto :goto_0

    .line 58
    :cond_6
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    sget-object v1, Lcn/bingoogolapple/qrcode/zxing/QRCodeDecoder;->ALL_HINT_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    :goto_0
    return-void
.end method
