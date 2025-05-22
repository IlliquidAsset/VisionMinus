.class public Lcn/bingoogolapple/qrcode/core/ScanBoxView;
.super Landroid/view/View;
.source "ScanBoxView.java"


# instance fields
.field private mAnimDelayTime:I

.field private mAnimTime:I

.field private mBarCodeTipText:Ljava/lang/String;

.field private mBarcodeRectHeight:I

.field private mBorderColor:I

.field private mBorderSize:I

.field private mCornerColor:I

.field private mCornerDisplayType:I

.field private mCornerLength:I

.field private mCornerSize:I

.field private mCustomGridScanLineDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustomScanLineDrawable:Landroid/graphics/drawable/Drawable;

.field private mFramingRect:Landroid/graphics/Rect;

.field private mGridScanLineBitmap:Landroid/graphics/Bitmap;

.field private mGridScanLineBottom:F

.field private mGridScanLineRight:F

.field private mHalfCornerSize:F

.field private mIsAutoZoom:Z

.field private mIsBarcode:Z

.field private mIsOnlyDecodeScanBoxArea:Z

.field private mIsScanLineReverse:Z

.field private mIsShowDefaultGridScanLineDrawable:Z

.field private mIsShowDefaultScanLineDrawable:Z

.field private mIsShowLocationPoint:Z

.field private mIsShowTipBackground:Z

.field private mIsShowTipTextAsSingleLine:Z

.field private mIsTipTextBelowRect:Z

.field private mLeftOffset:I

.field private mLightBitmap:Landroid/graphics/Bitmap;

.field private mLightDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaskColor:I

.field private mMoveStepDistance:I

.field private mOriginBarCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

.field private mOriginBarCodeScanLineBitmap:Landroid/graphics/Bitmap;

.field private mOriginBarQRLightBitmap:Landroid/graphics/Bitmap;

.field private mOriginQRCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

.field private mOriginQRCodeScanLineBitmap:Landroid/graphics/Bitmap;

.field private mOriginQRLightBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mQRCodeTipText:Ljava/lang/String;

.field private mQRCodeView:Lcn/bingoogolapple/qrcode/core/QRCodeView;

.field private mRectHeight:I

.field private mRectWidth:I

.field private mScanLineBitmap:Landroid/graphics/Bitmap;

.field private mScanLineColor:I

.field private mScanLineLeft:F

.field private mScanLineMargin:I

.field private mScanLineSize:I

.field private mScanLineTop:F

.field private mTipBackgroundColor:I

.field private mTipBackgroundRadius:I

.field private mTipPaint:Landroid/text/TextPaint;

.field private mTipText:Ljava/lang/String;

.field private mTipTextColor:I

.field private mTipTextMargin:I

.field private mTipTextSize:I

.field private mTipTextSl:Landroid/text/StaticLayout;

.field private mToolbarHeight:I

.field private mTopOffset:I

.field private mVerticalBias:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 91
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v0, "#33FFFFFF"

    .line 94
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMaskColor:I

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerColor:I

    const/high16 v2, 0x41a00000    # 20.0f

    .line 96
    invoke-static {p1, v2}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    const/high16 v3, 0x40400000    # 3.0f

    .line 97
    invoke-static {p1, v3}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerSize:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 98
    invoke-static {p1, v3}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineSize:I

    .line 99
    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineColor:I

    const/high16 v4, 0x42b40000    # 90.0f

    .line 100
    invoke-static {p1, v4}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTopOffset:I

    const/4 v4, 0x0

    .line 101
    invoke-static {p1, v4}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mLeftOffset:I

    const/high16 v4, 0x43480000    # 200.0f

    .line 102
    invoke-static {p1, v4}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectWidth:I

    const/high16 v4, 0x430c0000    # 140.0f

    .line 103
    invoke-static {p1, v4}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBarcodeRectHeight:I

    const/4 v4, 0x0

    .line 104
    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    .line 105
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultScanLineDrawable:Z

    const/4 v5, 0x0

    .line 106
    iput-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCustomScanLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    iput-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    iput-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    .line 109
    invoke-static {p1, v3}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderSize:I

    .line 110
    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderColor:I

    const/16 v3, 0x3e8

    .line 111
    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mAnimTime:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 112
    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mVerticalBias:F

    .line 113
    iput v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerDisplayType:I

    .line 114
    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mToolbarHeight:I

    .line 115
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    const/high16 v3, 0x40000000    # 2.0f

    .line 116
    invoke-static {p1, v3}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMoveStepDistance:I

    .line 117
    iput-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipText:Ljava/lang/String;

    const/high16 v3, 0x41600000    # 14.0f

    .line 118
    invoke-static {p1, v3}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->sp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSize:I

    .line 119
    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextColor:I

    .line 120
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsTipTextBelowRect:Z

    .line 121
    invoke-static {p1, v2}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    .line 122
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipTextAsSingleLine:Z

    const-string v0, "#00000000"

    .line 123
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundColor:I

    .line 124
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipBackground:Z

    .line 125
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsScanLineReverse:Z

    .line 126
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultGridScanLineDrawable:Z

    .line 128
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipPaint:Landroid/text/TextPaint;

    .line 129
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 131
    invoke-static {p1, v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    .line 133
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsOnlyDecodeScanBoxArea:Z

    .line 134
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowLocationPoint:Z

    .line 135
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsAutoZoom:Z

    return-void
.end method

.method private afterInitCustomAttrs()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCustomGridScanLineDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 229
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

    .line 231
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/bingoogolapple/qrcode/core/R$mipmap;->qrcode_default_grid_scan_line:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

    .line 233
    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineColor:I

    invoke-static {v0, v1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->makeTintBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

    .line 235
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginBarCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

    .line 236
    invoke-static {v0, v1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginBarCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

    .line 237
    invoke-static {v0, v1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginBarCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

    .line 240
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCustomScanLineDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 241
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeScanLineBitmap:Landroid/graphics/Bitmap;

    .line 243
    :cond_2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeScanLineBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 244
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/bingoogolapple/qrcode/core/R$mipmap;->qrcode_default_scan_line:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeScanLineBitmap:Landroid/graphics/Bitmap;

    .line 245
    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineColor:I

    invoke-static {v0, v2}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->makeTintBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeScanLineBitmap:Landroid/graphics/Bitmap;

    .line 247
    :cond_3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeScanLineBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginBarCodeScanLineBitmap:Landroid/graphics/Bitmap;

    .line 249
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 250
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRLightBitmap:Landroid/graphics/Bitmap;

    .line 252
    :cond_4
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRLightBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 253
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/bingoogolapple/qrcode/core/R$mipmap;->icon_light_off:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRLightBitmap:Landroid/graphics/Bitmap;

    .line 254
    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineColor:I

    invoke-static {v0, v2}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->makeTintBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRLightBitmap:Landroid/graphics/Bitmap;

    .line 256
    :cond_5
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRLightBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginBarQRLightBitmap:Landroid/graphics/Bitmap;

    .line 257
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTopOffset:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mToolbarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTopOffset:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 258
    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerSize:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    .line 260
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 261
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 263
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->setIsBarcode(Z)V

    return-void
.end method

.method private calFramingRect()V
    .locals 5

    .line 564
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 565
    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mLeftOffset:I

    if-eqz v1, :cond_0

    move v0, v1

    .line 568
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTopOffset:I

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectHeight:I

    add-int/2addr v4, v2

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    .line 570
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    .line 571
    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineLeft:F

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineRight:F

    goto :goto_0

    .line 573
    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineTop:F

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBottom:F

    .line 576
    :goto_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mQRCodeView:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->isOnlyDecodeScanBoxArea()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mQRCodeView:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->onScanBoxRectChanged(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private drawBorderLine(Landroid/graphics/Canvas;)V
    .locals 2

    .line 314
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderSize:I

    if-lez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 316
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 318
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawCornerLine(Landroid/graphics/Canvas;)V
    .locals 8

    .line 326
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 330
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerDisplayType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 333
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 335
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 337
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 340
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 342
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 344
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 346
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 349
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v5, v0, v1

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 351
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v5, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 353
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v5, v0, v1

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v5, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 358
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v5, v0, v1

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float v5, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    sub-int/2addr v0, v1

    int-to-float v6, v0

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 362
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v5, v0, v1

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 364
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v3, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float v5, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    sub-int/2addr v0, v1

    int-to-float v6, v0

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawLight(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 300
    iget v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMaskColor:I

    if-eqz v3, :cond_0

    .line 301
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMaskColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v1, v1

    .line 303
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v9, v3

    iget-object v10, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v8, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v12, 0x0

    .line 304
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v13, v3

    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v14, v3

    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v15, v3

    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 305
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v9, v3

    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v10, v3

    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v12, v3

    iget-object v13, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v11, v1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    .line 306
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v10, v3

    int-to-float v12, v2

    iget-object v13, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawScanLine(Landroid/graphics/Canvas;)V
    .locals 8

    .line 374
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 376
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v1, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v2, v4

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineRight:F

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 379
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    .line 380
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 382
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_0

    .line 383
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 384
    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 387
    :cond_0
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 389
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineLeft:F

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v3, v4

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineLeft:F

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 391
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 394
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineLeft:F

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v1, v1

    add-float v4, v0, v1

    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineLeft:F

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineSize:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v1, v1

    sub-float v6, v0, v1

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 399
    :cond_3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 400
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v1, v4

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v2, v5

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBottom:F

    invoke-direct {v0, v1, v4, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 403
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    .line 404
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 406
    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_4

    .line 407
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 408
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 411
    :cond_4
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 412
    :cond_5
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 413
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v2, v3

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineTop:F

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineTop:F

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    .line 414
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 415
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 417
    :cond_6
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 418
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v1, v1

    add-float v3, v0, v1

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineTop:F

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineTop:F

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineSize:I

    int-to-float v1, v1

    add-float v6, v0, v1

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawTipText(Landroid/graphics/Canvas;)V
    .locals 7

    .line 429
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 433
    :cond_0
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsTipTextBelowRect:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 434
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipBackground:Z

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 437
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipTextAsSingleLine:Z

    if-eqz v0, :cond_1

    .line 438
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 439
    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 441
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 442
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v0, v5

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    .line 443
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v3, v1, v4, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    .line 441
    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 446
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    .line 447
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    int-to-float v3, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    .line 446
    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 453
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 454
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipTextAsSingleLine:Z

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 457
    :cond_3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 459
    :goto_1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    .line 462
    :cond_4
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipBackground:Z

    if-eqz v0, :cond_6

    .line 463
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 466
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipTextAsSingleLine:Z

    if-eqz v0, :cond_5

    .line 467
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 468
    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 469
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 470
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 471
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v0, v5

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v3, v1, v4, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    .line 470
    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 475
    :cond_5
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    .line 476
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    int-to-float v3, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mPaint:Landroid/graphics/Paint;

    .line 475
    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 481
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 482
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipTextAsSingleLine:Z

    if-eqz v0, :cond_7

    .line 483
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    .line 485
    :cond_7
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 487
    :goto_3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 488
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_4
    return-void
.end method

.method private initCustomAttr(ILandroid/content/res/TypedArray;)V
    .locals 1

    .line 152
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_topOffset:I

    if-ne p1, v0, :cond_0

    .line 153
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTopOffset:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTopOffset:I

    goto/16 :goto_0

    .line 154
    :cond_0
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_cornerSize:I

    if-ne p1, v0, :cond_1

    .line 155
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerSize:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerSize:I

    goto/16 :goto_0

    .line 156
    :cond_1
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_cornerLength:I

    if-ne p1, v0, :cond_2

    .line 157
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    goto/16 :goto_0

    .line 158
    :cond_2
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_scanLineSize:I

    if-ne p1, v0, :cond_3

    .line 159
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineSize:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineSize:I

    goto/16 :goto_0

    .line 160
    :cond_3
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_rectWidth:I

    if-ne p1, v0, :cond_4

    .line 161
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectWidth:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectWidth:I

    goto/16 :goto_0

    .line 162
    :cond_4
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_maskColor:I

    if-ne p1, v0, :cond_5

    .line 163
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMaskColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMaskColor:I

    goto/16 :goto_0

    .line 164
    :cond_5
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_cornerColor:I

    if-ne p1, v0, :cond_6

    .line 165
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerColor:I

    goto/16 :goto_0

    .line 166
    :cond_6
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_scanLineColor:I

    if-ne p1, v0, :cond_7

    .line 167
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineColor:I

    goto/16 :goto_0

    .line 168
    :cond_7
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_scanLineMargin:I

    if-ne p1, v0, :cond_8

    .line 169
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    goto/16 :goto_0

    .line 170
    :cond_8
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isShowDefaultScanLineDrawable:I

    if-ne p1, v0, :cond_9

    .line 171
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultScanLineDrawable:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultScanLineDrawable:Z

    goto/16 :goto_0

    .line 172
    :cond_9
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_customScanLineDrawable:I

    if-ne p1, v0, :cond_a

    .line 173
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCustomScanLineDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 174
    :cond_a
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_borderSize:I

    if-ne p1, v0, :cond_b

    .line 175
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderSize:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderSize:I

    goto/16 :goto_0

    .line 176
    :cond_b
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_borderColor:I

    if-ne p1, v0, :cond_c

    .line 177
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderColor:I

    goto/16 :goto_0

    .line 178
    :cond_c
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_animTime:I

    if-ne p1, v0, :cond_d

    .line 179
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mAnimTime:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mAnimTime:I

    goto/16 :goto_0

    .line 180
    :cond_d
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_verticalBias:I

    if-ne p1, v0, :cond_e

    .line 181
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mVerticalBias:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mVerticalBias:F

    goto/16 :goto_0

    .line 182
    :cond_e
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_cornerDisplayType:I

    if-ne p1, v0, :cond_f

    .line 183
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerDisplayType:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerDisplayType:I

    goto/16 :goto_0

    .line 184
    :cond_f
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_toolbarHeight:I

    if-ne p1, v0, :cond_10

    .line 185
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mToolbarHeight:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mToolbarHeight:I

    goto/16 :goto_0

    .line 186
    :cond_10
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_barcodeRectHeight:I

    if-ne p1, v0, :cond_11

    .line 187
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBarcodeRectHeight:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBarcodeRectHeight:I

    goto/16 :goto_0

    .line 188
    :cond_11
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isBarcode:I

    if-ne p1, v0, :cond_12

    .line 189
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    goto/16 :goto_0

    .line 190
    :cond_12
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_barCodeTipText:I

    if-ne p1, v0, :cond_13

    .line 191
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBarCodeTipText:Ljava/lang/String;

    goto/16 :goto_0

    .line 192
    :cond_13
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_qrCodeTipText:I

    if-ne p1, v0, :cond_14

    .line 193
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mQRCodeTipText:Ljava/lang/String;

    goto/16 :goto_0

    .line 194
    :cond_14
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_tipTextSize:I

    if-ne p1, v0, :cond_15

    .line 195
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSize:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSize:I

    goto/16 :goto_0

    .line 196
    :cond_15
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_tipTextColor:I

    if-ne p1, v0, :cond_16

    .line 197
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextColor:I

    goto/16 :goto_0

    .line 198
    :cond_16
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isTipTextBelowRect:I

    if-ne p1, v0, :cond_17

    .line 199
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsTipTextBelowRect:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsTipTextBelowRect:Z

    goto/16 :goto_0

    .line 200
    :cond_17
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_tipTextMargin:I

    if-ne p1, v0, :cond_18

    .line 201
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    goto/16 :goto_0

    .line 202
    :cond_18
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isShowTipTextAsSingleLine:I

    if-ne p1, v0, :cond_19

    .line 203
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipTextAsSingleLine:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipTextAsSingleLine:Z

    goto/16 :goto_0

    .line 204
    :cond_19
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isShowTipBackground:I

    if-ne p1, v0, :cond_1a

    .line 205
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipBackground:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipBackground:Z

    goto/16 :goto_0

    .line 206
    :cond_1a
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_tipBackgroundColor:I

    if-ne p1, v0, :cond_1b

    .line 207
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundColor:I

    goto :goto_0

    .line 208
    :cond_1b
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isScanLineReverse:I

    if-ne p1, v0, :cond_1c

    .line 209
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsScanLineReverse:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsScanLineReverse:Z

    goto :goto_0

    .line 210
    :cond_1c
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isShowDefaultGridScanLineDrawable:I

    if-ne p1, v0, :cond_1d

    .line 211
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultGridScanLineDrawable:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultGridScanLineDrawable:Z

    goto :goto_0

    .line 212
    :cond_1d
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_customGridScanLineDrawable:I

    if-ne p1, v0, :cond_1e

    .line 213
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCustomGridScanLineDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 214
    :cond_1e
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isOnlyDecodeScanBoxArea:I

    if-ne p1, v0, :cond_1f

    .line 215
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsOnlyDecodeScanBoxArea:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsOnlyDecodeScanBoxArea:Z

    goto :goto_0

    .line 216
    :cond_1f
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isShowLocationPoint:I

    if-ne p1, v0, :cond_20

    .line 217
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowLocationPoint:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowLocationPoint:Z

    goto :goto_0

    .line 218
    :cond_20
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isAutoZoom:I

    if-ne p1, v0, :cond_21

    .line 219
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsAutoZoom:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsAutoZoom:Z

    goto :goto_0

    .line 220
    :cond_21
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_left_offset:I

    if-ne p1, v0, :cond_22

    .line 221
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mLeftOffset:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mLeftOffset:I

    goto :goto_0

    .line 222
    :cond_22
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_customLightDrawable:I

    if-ne p1, v0, :cond_23

    .line 223
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    :cond_23
    :goto_0
    return-void
.end method

.method private moveScanLine()V
    .locals 8

    .line 502
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_4

    .line 503
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 505
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineLeft:F

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMoveStepDistance:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineLeft:F

    .line 506
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineSize:I

    .line 507
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 511
    :cond_0
    iget-boolean v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsScanLineReverse:Z

    if-eqz v2, :cond_2

    .line 512
    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineLeft:F

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_1

    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineLeft:F

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 513
    :cond_1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMoveStepDistance:I

    neg-int v0, v0

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMoveStepDistance:I

    goto/16 :goto_0

    .line 516
    :cond_2
    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineLeft:F

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v0, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_9

    .line 517
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineLeft:F

    goto/16 :goto_0

    .line 522
    :cond_3
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineRight:F

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMoveStepDistance:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineRight:F

    .line 523
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    .line 524
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineRight:F

    goto/16 :goto_0

    .line 528
    :cond_4
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 530
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineTop:F

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMoveStepDistance:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineTop:F

    .line 531
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineSize:I

    .line 532
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 533
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 536
    :cond_5
    iget-boolean v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsScanLineReverse:Z

    if-eqz v2, :cond_7

    .line 537
    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineTop:F

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_6

    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineTop:F

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 538
    :cond_6
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMoveStepDistance:I

    neg-int v0, v0

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMoveStepDistance:I

    goto :goto_0

    .line 541
    :cond_7
    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineTop:F

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v0, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_9

    .line 542
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineTop:F

    goto :goto_0

    .line 547
    :cond_8
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBottom:F

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMoveStepDistance:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBottom:F

    .line 548
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    sub-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    .line 549
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBottom:F

    .line 554
    :cond_9
    :goto_0
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mAnimDelayTime:I

    int-to-long v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method private refreshScanBox()V
    .locals 18

    move-object/from16 v0, p0

    .line 610
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCustomGridScanLineDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultGridScanLineDrawable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCustomScanLineDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultScanLineDrawable:Z

    if-eqz v1, :cond_5

    .line 617
    :cond_1
    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    if-eqz v1, :cond_2

    .line 618
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginBarCodeScanLineBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 620
    :cond_2
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeScanLineBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 611
    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    if-eqz v1, :cond_4

    .line 612
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginBarCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 614
    :cond_4
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRCodeGridScanLineBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mGridScanLineBitmap:Landroid/graphics/Bitmap;

    .line 623
    :cond_5
    :goto_1
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 624
    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    if-eqz v1, :cond_6

    .line 625
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginBarQRLightBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mLightBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 627
    :cond_6
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mOriginQRLightBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mLightBitmap:Landroid/graphics/Bitmap;

    .line 631
    :cond_7
    :goto_2
    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_8

    .line 632
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBarCodeTipText:Ljava/lang/String;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipText:Ljava/lang/String;

    .line 633
    iget v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBarcodeRectHeight:I

    iput v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectHeight:I

    .line 634
    iget v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mAnimTime:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMoveStepDistance:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mAnimDelayTime:I

    goto :goto_3

    .line 636
    :cond_8
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mQRCodeTipText:Ljava/lang/String;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipText:Ljava/lang/String;

    .line 637
    iget v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectWidth:I

    iput v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectHeight:I

    .line 638
    iget v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mAnimTime:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMoveStepDistance:I

    int-to-float v2, v2

    mul-float v3, v3, v2

    int-to-float v1, v1

    div-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mAnimDelayTime:I

    .line 641
    :goto_3
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 642
    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipTextAsSingleLine:Z

    if-eqz v1, :cond_9

    .line 643
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipText:Ljava/lang/String;

    iget-object v4, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Point;->x:I

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    goto :goto_4

    .line 646
    :cond_9
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v11, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipText:Ljava/lang/String;

    iget-object v12, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipPaint:Landroid/text/TextPaint;

    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectWidth:I

    iget v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v13, v2, v3

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    .line 650
    :cond_a
    :goto_4
    iget v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mVerticalBias:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_c

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->getScreenResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 652
    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mToolbarHeight:I

    if-nez v2, :cond_b

    int-to-float v1, v1

    .line 653
    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mVerticalBias:F

    mul-float v1, v1, v2

    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTopOffset:I

    goto :goto_5

    :cond_b
    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 655
    iget v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mVerticalBias:F

    mul-float v1, v1, v3

    iget v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v2, v1

    iput v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTopOffset:I

    .line 659
    :cond_c
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->calFramingRect()V

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public getAnimTime()I
    .locals 1

    .line 813
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mAnimTime:I

    return v0
.end method

.method public getBarCodeTipText()Ljava/lang/String;
    .locals 1

    .line 849
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBarCodeTipText:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcodeRectHeight()I
    .locals 1

    .line 723
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBarcodeRectHeight:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 804
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderColor:I

    return v0
.end method

.method public getBorderSize()I
    .locals 1

    .line 795
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderSize:I

    return v0
.end method

.method public getCornerColor()I
    .locals 1

    .line 678
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerColor:I

    return v0
.end method

.method public getCornerLength()I
    .locals 1

    .line 687
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    return v0
.end method

.method public getCornerSize()I
    .locals 1

    .line 696
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerSize:I

    return v0
.end method

.method public getCustomScanLineDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 777
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCustomScanLineDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHalfCornerSize()F
    .locals 1

    .line 954
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    return v0
.end method

.method public getIsBarcode()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    return v0
.end method

.method public getMaskColor()I
    .locals 1

    .line 669
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMaskColor:I

    return v0
.end method

.method public getQRCodeTipText()Ljava/lang/String;
    .locals 1

    .line 840
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mQRCodeTipText:Ljava/lang/String;

    return-object v0
.end method

.method public getRectHeight()I
    .locals 1

    .line 714
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectHeight:I

    return v0
.end method

.method public getRectWidth()I
    .locals 1

    .line 705
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectWidth:I

    return v0
.end method

.method public getScanBoxAreaRect(I)Landroid/graphics/Rect;
    .locals 6

    .line 582
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsOnlyDecodeScanBoxArea:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float p1, p1, v1

    .line 584
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 586
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    .line 587
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 589
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 590
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v3, v3, p1

    mul-float v5, v5, p1

    sub-float p1, v1, v3

    float-to-int p1, p1

    .line 594
    iput p1, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr v1, v3

    float-to-int p1, v1

    .line 595
    iput p1, v0, Landroid/graphics/Rect;->right:I

    sub-float p1, v2, v5

    float-to-int p1, p1

    .line 596
    iput p1, v0, Landroid/graphics/Rect;->top:I

    add-float/2addr v2, v5

    float-to-int p1, v2

    .line 597
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getScanLineBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 786
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getScanLineColor()I
    .locals 1

    .line 750
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineColor:I

    return v0
.end method

.method public getScanLineMargin()I
    .locals 1

    .line 759
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    return v0
.end method

.method public getScanLineSize()I
    .locals 1

    .line 741
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineSize:I

    return v0
.end method

.method public getTipBackgroundColor()I
    .locals 1

    .line 927
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundColor:I

    return v0
.end method

.method public getTipBackgroundRadius()I
    .locals 1

    .line 972
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    return v0
.end method

.method public getTipText()Ljava/lang/String;
    .locals 1

    .line 858
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipText:Ljava/lang/String;

    return-object v0
.end method

.method public getTipTextColor()I
    .locals 1

    .line 871
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextColor:I

    return v0
.end method

.method public getTipTextMargin()I
    .locals 1

    .line 900
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    return v0
.end method

.method public getTipTextSize()I
    .locals 1

    .line 881
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSize:I

    return v0
.end method

.method public getTipTextSl()Landroid/text/StaticLayout;
    .locals 1

    .line 963
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public getToolbarHeight()I
    .locals 1

    .line 831
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mToolbarHeight:I

    return v0
.end method

.method public getTopOffset()I
    .locals 1

    .line 732
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTopOffset:I

    return v0
.end method

.method public getVerticalBias()F
    .locals 1

    .line 822
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mVerticalBias:F

    return v0
.end method

.method init(Lcn/bingoogolapple/qrcode/core/QRCodeView;Landroid/util/AttributeSet;)V
    .locals 2

    .line 139
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mQRCodeView:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    .line 141
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->initCustomAttr(ILandroid/content/res/TypedArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->afterInitCustomAttrs()V

    return-void
.end method

.method public isAutoZoom()Z
    .locals 1

    .line 998
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsAutoZoom:Z

    return v0
.end method

.method public isOnlyDecodeScanBoxArea()Z
    .locals 1

    .line 981
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsOnlyDecodeScanBoxArea:Z

    return v0
.end method

.method public isScanLineReverse()Z
    .locals 1

    .line 936
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsScanLineReverse:Z

    return v0
.end method

.method public isShowDefaultGridScanLineDrawable()Z
    .locals 1

    .line 945
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultGridScanLineDrawable:Z

    return v0
.end method

.method public isShowDefaultScanLineDrawable()Z
    .locals 1

    .line 768
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultScanLineDrawable:Z

    return v0
.end method

.method public isShowLocationPoint()Z
    .locals 1

    .line 990
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowLocationPoint:Z

    return v0
.end method

.method public isShowTipBackground()Z
    .locals 1

    .line 918
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipBackground:Z

    return v0
.end method

.method public isShowTipTextAsSingleLine()Z
    .locals 1

    .line 909
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipTextAsSingleLine:Z

    return v0
.end method

.method public isTipTextBelowRect()Z
    .locals 1

    .line 891
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsTipTextBelowRect:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mFramingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->drawMask(Landroid/graphics/Canvas;)V

    .line 276
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->drawBorderLine(Landroid/graphics/Canvas;)V

    .line 279
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->drawCornerLine(Landroid/graphics/Canvas;)V

    .line 282
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->drawScanLine(Landroid/graphics/Canvas;)V

    .line 285
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->drawTipText(Landroid/graphics/Canvas;)V

    .line 288
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->moveScanLine()V

    .line 290
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->drawLight(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 559
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 560
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->calFramingRect()V

    return-void
.end method

.method public setAnimTime(I)V
    .locals 0

    .line 817
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mAnimTime:I

    .line 818
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setAutoZoom(Z)V
    .locals 0

    .line 1002
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsAutoZoom:Z

    return-void
.end method

.method public setBarCodeTipText(Ljava/lang/String;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBarCodeTipText:Ljava/lang/String;

    .line 854
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setBarcodeRectHeight(I)V
    .locals 0

    .line 727
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBarcodeRectHeight:I

    .line 728
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 808
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderColor:I

    .line 809
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setBorderSize(I)V
    .locals 0

    .line 799
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBorderSize:I

    .line 800
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setCornerColor(I)V
    .locals 0

    .line 682
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerColor:I

    .line 683
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setCornerLength(I)V
    .locals 0

    .line 691
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerLength:I

    .line 692
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setCornerSize(I)V
    .locals 0

    .line 700
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCornerSize:I

    .line 701
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setCustomScanLineDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mCustomScanLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 782
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setHalfCornerSize(F)V
    .locals 0

    .line 958
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mHalfCornerSize:F

    .line 959
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setIsBarcode(Z)V
    .locals 0

    .line 605
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    .line 606
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 0

    .line 673
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mMaskColor:I

    .line 674
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setOnlyDecodeScanBoxArea(Z)V
    .locals 0

    .line 985
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsOnlyDecodeScanBoxArea:Z

    .line 986
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->calFramingRect()V

    return-void
.end method

.method public setQRCodeTipText(Ljava/lang/String;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mQRCodeTipText:Ljava/lang/String;

    .line 845
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setRectHeight(I)V
    .locals 0

    .line 718
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectHeight:I

    .line 719
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setRectWidth(I)V
    .locals 0

    .line 709
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mRectWidth:I

    .line 710
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setScanLineBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineBitmap:Landroid/graphics/Bitmap;

    .line 791
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setScanLineColor(I)V
    .locals 0

    .line 754
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineColor:I

    .line 755
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setScanLineMargin(I)V
    .locals 0

    .line 763
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineMargin:I

    .line 764
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setScanLineReverse(Z)V
    .locals 0

    .line 940
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsScanLineReverse:Z

    .line 941
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setScanLineSize(I)V
    .locals 0

    .line 745
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mScanLineSize:I

    .line 746
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setShowDefaultGridScanLineDrawable(Z)V
    .locals 0

    .line 949
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultGridScanLineDrawable:Z

    .line 950
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setShowDefaultScanLineDrawable(Z)V
    .locals 0

    .line 772
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowDefaultScanLineDrawable:Z

    .line 773
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setShowLocationPoint(Z)V
    .locals 0

    .line 994
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowLocationPoint:Z

    return-void
.end method

.method public setShowTipBackground(Z)V
    .locals 0

    .line 922
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipBackground:Z

    .line 923
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setShowTipTextAsSingleLine(Z)V
    .locals 0

    .line 913
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsShowTipTextAsSingleLine:Z

    .line 914
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setTipBackgroundColor(I)V
    .locals 0

    .line 931
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundColor:I

    .line 932
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setTipBackgroundRadius(I)V
    .locals 0

    .line 976
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipBackgroundRadius:I

    .line 977
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setTipText(Ljava/lang/String;)V
    .locals 1

    .line 862
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsBarcode:Z

    if-eqz v0, :cond_0

    .line 863
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mBarCodeTipText:Ljava/lang/String;

    goto :goto_0

    .line 865
    :cond_0
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mQRCodeTipText:Ljava/lang/String;

    .line 867
    :goto_0
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setTipTextBelowRect(Z)V
    .locals 0

    .line 895
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mIsTipTextBelowRect:Z

    .line 896
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setTipTextColor(I)V
    .locals 1

    .line 875
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextColor:I

    .line 876
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 877
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setTipTextMargin(I)V
    .locals 0

    .line 904
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextMargin:I

    .line 905
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setTipTextSize(I)V
    .locals 1

    .line 885
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSize:I

    .line 886
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 887
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setTipTextSl(Landroid/text/StaticLayout;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTipTextSl:Landroid/text/StaticLayout;

    .line 968
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setToolbarHeight(I)V
    .locals 0

    .line 835
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mToolbarHeight:I

    .line 836
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    .line 736
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mTopOffset:I

    .line 737
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 0

    .line 826
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->mVerticalBias:F

    .line 827
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->refreshScanBox()V

    return-void
.end method
