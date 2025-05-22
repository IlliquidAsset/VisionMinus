.class public Lcom/lewis/edit/utils/GPUImageFilterTools;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageTwoInputFilter;",
            ">;)",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;"
        }
    .end annotation

    .line 307
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoInputFilter;

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/lewis/edit/R$mipmap;->ic_launcher:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoInputFilter;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFilterForType(Landroid/content/Context;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 3

    .line 143
    sget-object v0, Lcom/lewis/edit/utils/GPUImageFilterTools$2;->$SwitchMap$com$lewis$edit$utils$GPUImageFilterTools$FilterType:[I

    invoke-virtual {p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    .line 300
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No filter of that type!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :pswitch_0
    new-instance p1, Lcom/lewis/edit/utils/filter/IFXprollFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFXprollFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 295
    :pswitch_1
    new-instance p1, Lcom/lewis/edit/utils/filter/IFWaldenFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFWaldenFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 293
    :pswitch_2
    new-instance p1, Lcom/lewis/edit/utils/filter/IFValenciaFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFValenciaFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 291
    :pswitch_3
    new-instance p1, Lcom/lewis/edit/utils/filter/IFToasterFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFToasterFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 289
    :pswitch_4
    new-instance p1, Lcom/lewis/edit/utils/filter/IFSutroFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFSutroFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 287
    :pswitch_5
    new-instance p1, Lcom/lewis/edit/utils/filter/IFSierraFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFSierraFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 285
    :pswitch_6
    new-instance p1, Lcom/lewis/edit/utils/filter/IFRiseFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFRiseFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 283
    :pswitch_7
    new-instance p1, Lcom/lewis/edit/utils/filter/IFNashvilleFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFNashvilleFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 281
    :pswitch_8
    new-instance p1, Lcom/lewis/edit/utils/filter/IFLordKelvinFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFLordKelvinFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 279
    :pswitch_9
    new-instance p1, Lcom/lewis/edit/utils/filter/IFLomoFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFLomoFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 277
    :pswitch_a
    new-instance p1, Lcom/lewis/edit/utils/filter/IFInkwellFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFInkwellFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 275
    :pswitch_b
    new-instance p1, Lcom/lewis/edit/utils/filter/IFHudsonFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFHudsonFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 273
    :pswitch_c
    new-instance p1, Lcom/lewis/edit/utils/filter/IFHefeFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFHefeFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 271
    :pswitch_d
    new-instance p1, Lcom/lewis/edit/utils/filter/IFEarlybirdFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFEarlybirdFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 269
    :pswitch_e
    new-instance p1, Lcom/lewis/edit/utils/filter/IFBrannanFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFBrannanFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 267
    :pswitch_f
    new-instance p1, Lcom/lewis/edit/utils/filter/IFAmaroFilter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IFAmaroFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 265
    :pswitch_10
    new-instance p1, Lcom/lewis/edit/utils/filter/IF1977Filter;

    invoke-direct {p1, p0}, Lcom/lewis/edit/utils/filter/IF1977Filter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 260
    :pswitch_11
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageLookupFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageLookupFilter;-><init>()V

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/lewis/edit/R$drawable;->lookup_amatorka:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageLookupFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p1

    .line 257
    :pswitch_12
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageNormalBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 255
    :pswitch_13
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageChromaKeyBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 253
    :pswitch_14
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSubtractBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 251
    :pswitch_15
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSoftLightBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 249
    :pswitch_16
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageLinearBurnBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 247
    :pswitch_17
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageLuminosityBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 245
    :pswitch_18
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 243
    :pswitch_19
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageHueBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 241
    :pswitch_1a
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageColorBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 239
    :pswitch_1b
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageAlphaBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 237
    :pswitch_1c
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageScreenBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 235
    :pswitch_1d
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageOverlayBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 233
    :pswitch_1e
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageMultiplyBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 231
    :pswitch_1f
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDivideBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 229
    :pswitch_20
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageAddBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 227
    :pswitch_21
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageLightenBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 225
    :pswitch_22
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageHardLightBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 221
    :pswitch_23
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageExclusionBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 219
    :pswitch_24
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDissolveBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 217
    :pswitch_25
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDarkenBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 215
    :pswitch_26
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageColorDodgeBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 213
    :pswitch_27
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageColorBurnBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 211
    :pswitch_28
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSourceOverBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 209
    :pswitch_29
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDifferenceBlendFilter;

    invoke-static {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 204
    :pswitch_2a
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;-><init>()V

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/lewis/edit/R$raw;->tone_cuver_sample:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 205
    invoke-virtual {p1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object p1

    .line 199
    :pswitch_2b
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 200
    iput p1, p0, Landroid/graphics/PointF;->x:F

    .line 201
    iput p1, p0, Landroid/graphics/PointF;->y:F

    .line 202
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p1, p0, v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;-><init>(Landroid/graphics/PointF;[FFF)V

    return-object p1

    .line 197
    :pswitch_2c
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageWhiteBalanceFilter;

    const p1, 0x459c4000    # 5000.0f

    invoke-direct {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageWhiteBalanceFilter;-><init>(FF)V

    return-object p0

    .line 195
    :pswitch_2d
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;

    invoke-direct {p0, v2, v2, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;-><init>(FFF)V

    return-object p0

    .line 193
    :pswitch_2e
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageOpacityFilter;

    invoke-direct {p0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageOpacityFilter;-><init>(F)V

    return-object p0

    .line 191
    :pswitch_2f
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageMonochromeFilter;

    const/4 p1, 0x4

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-direct {p0, v2, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageMonochromeFilter;-><init>(F[F)V

    return-object p0

    .line 189
    :pswitch_30
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHighlightShadowFilter;

    invoke-direct {p0, v0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageHighlightShadowFilter;-><init>(FF)V

    return-object p0

    .line 187
    :pswitch_31
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageExposureFilter;

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageExposureFilter;-><init>(F)V

    return-object p0

    .line 185
    :pswitch_32
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;

    invoke-direct {p0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;-><init>(F)V

    return-object p0

    .line 179
    :pswitch_33
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 180
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDirectionalSobelEdgeDetectionFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageDirectionalSobelEdgeDetectionFilter;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageGrayscaleFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageGrayscaleFilter;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;

    invoke-direct {p1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;-><init>(Ljava/util/List;)V

    return-object p1

    .line 177
    :pswitch_34
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImagePosterizeFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImagePosterizeFilter;-><init>()V

    return-object p0

    .line 175
    :pswitch_35
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageEmbossFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageEmbossFilter;-><init>()V

    return-object p0

    .line 167
    :pswitch_36
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3ConvolutionFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3ConvolutionFilter;-><init>()V

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 168
    fill-array-data p1, :array_2

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3ConvolutionFilter;->setConvolutionKernel([F)V

    return-object p0

    .line 165
    :pswitch_37
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSobelEdgeDetection;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSobelEdgeDetection;-><init>()V

    return-object p0

    .line 161
    :pswitch_38
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSharpenFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSharpenFilter;-><init>()V

    .line 162
    invoke-virtual {p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageSharpenFilter;->setSharpness(F)V

    return-object p0

    .line 159
    :pswitch_39
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;-><init>()V

    return-object p0

    .line 157
    :pswitch_3a
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageGrayscaleFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageGrayscaleFilter;-><init>()V

    return-object p0

    .line 155
    :pswitch_3b
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageBrightnessFilter;

    const/high16 p1, 0x3fc00000    # 1.5f

    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageBrightnessFilter;-><init>(F)V

    return-object p0

    .line 153
    :pswitch_3c
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHueFilter;

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageHueFilter;-><init>(F)V

    return-object p0

    .line 151
    :pswitch_3d
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;-><init>()V

    return-object p0

    .line 149
    :pswitch_3e
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageColorInvertFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageColorInvertFilter;-><init>()V

    return-object p0

    .line 147
    :pswitch_3f
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageGammaFilter;

    invoke-direct {p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageGammaFilter;-><init>(F)V

    return-object p0

    .line 145
    :pswitch_40
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;

    invoke-direct {p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;-><init>(F)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3ee66666    # 0.45f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static showDialog(Landroid/content/Context;Lcom/lewis/edit/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;)V
    .locals 4

    .line 103
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    invoke-direct {v0}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;-><init>()V

    .line 105
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_1977:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "1977"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 106
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_AMARO:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Amaro"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 107
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_BRANNAN:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Brannan"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 108
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_EARLYBIRD:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Earlybird"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 109
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_HEFE:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Hefe"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 110
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_HUDSON:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Hudson"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 111
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_INKWELL:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Inkwell"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 112
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_LOMO:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Lomo"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 113
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_LORDKELVIN:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "LordKelvin"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 114
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_NASHVILLE:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Nashville"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 115
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_NASHVILLE:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Rise"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 116
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_SIERRA:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Sierra"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 117
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_SUTRO:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "sutro"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 118
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_TOASTER:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Toaster"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 119
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_VALENCIA:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Valencia"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 120
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_WALDEN:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Walden"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 121
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->I_XPROII:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Xproll"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 122
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->CONTRAST:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Contrast"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 123
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->BRIGHTNESS:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Brightness"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 124
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->SEPIA:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Sepia"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 125
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->VIGNETTE:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Vignette"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 126
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->TONE_CURVE:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "ToneCurve"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 127
    sget-object v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;->LOOKUP_AMATORKA:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    const-string v2, "Lookup (Amatorka)"

    invoke-virtual {v0, v2, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V

    .line 129
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Choose a filter"

    .line 130
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    iget-object v2, v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->names:Ljava/util/List;

    iget-object v3, v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/lewis/edit/utils/GPUImageFilterTools$1;

    invoke-direct {v3, p1, p0, v0}, Lcom/lewis/edit/utils/GPUImageFilterTools$1;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;Landroid/content/Context;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
