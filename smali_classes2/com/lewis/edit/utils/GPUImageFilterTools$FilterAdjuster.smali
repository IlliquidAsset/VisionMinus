.class public Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/utils/GPUImageFilterTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterAdjuster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$DissolveBlendAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$WhiteBalanceAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$RGBAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$OpacityAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$MonochromeAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$ExposureAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SaturationAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$PosterizeAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$EmbossAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SobelAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SepiaAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$BrightnessAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$GammaAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$ContrastAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$PixelationAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SharpnessAdjuster;,
        Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
    }
.end annotation


# instance fields
.field private final adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster<",
            "+",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 2

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSharpenFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SharpnessAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SharpnessAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SharpnessAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 349
    :cond_0
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;

    if-eqz v0, :cond_1

    .line 350
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SepiaAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SepiaAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SepiaAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 351
    :cond_1
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;

    if-eqz v0, :cond_2

    .line 352
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$ContrastAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$ContrastAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$ContrastAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 353
    :cond_2
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageGammaFilter;

    if-eqz v0, :cond_3

    .line 354
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$GammaAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$GammaAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$GammaAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 355
    :cond_3
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageBrightnessFilter;

    if-eqz v0, :cond_4

    .line 356
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$BrightnessAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$BrightnessAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$BrightnessAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 357
    :cond_4
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSobelEdgeDetection;

    if-eqz v0, :cond_5

    .line 358
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SobelAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SobelAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SobelAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 359
    :cond_5
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3TextureSamplingFilter;

    if-eqz v0, :cond_6

    .line 360
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 361
    :cond_6
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageEmbossFilter;

    if-eqz v0, :cond_7

    .line 362
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$EmbossAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$EmbossAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$EmbossAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 363
    :cond_7
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageHueFilter;

    if-eqz v0, :cond_8

    .line 364
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 365
    :cond_8
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImagePosterizeFilter;

    if-eqz v0, :cond_9

    .line 366
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$PosterizeAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$PosterizeAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$PosterizeAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 367
    :cond_9
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;

    if-eqz v0, :cond_a

    .line 368
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$PixelationAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$PixelationAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$PixelationAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 369
    :cond_a
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;

    if-eqz v0, :cond_b

    .line 370
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SaturationAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SaturationAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$SaturationAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 371
    :cond_b
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageExposureFilter;

    if-eqz v0, :cond_c

    .line 372
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$ExposureAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$ExposureAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$ExposureAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 373
    :cond_c
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageHighlightShadowFilter;

    if-eqz v0, :cond_d

    .line 374
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 375
    :cond_d
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageMonochromeFilter;

    if-eqz v0, :cond_e

    .line 376
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$MonochromeAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$MonochromeAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$MonochromeAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 377
    :cond_e
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageOpacityFilter;

    if-eqz v0, :cond_f

    .line 378
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$OpacityAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$OpacityAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$OpacityAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 379
    :cond_f
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;

    if-eqz v0, :cond_10

    .line 380
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$RGBAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$RGBAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$RGBAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 381
    :cond_10
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageWhiteBalanceFilter;

    if-eqz v0, :cond_11

    .line 382
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$WhiteBalanceAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$WhiteBalanceAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$WhiteBalanceAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 383
    :cond_11
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;

    if-eqz v0, :cond_12

    .line 384
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 385
    :cond_12
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDissolveBlendFilter;

    if-eqz v0, :cond_13

    .line 386
    new-instance v0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$DissolveBlendAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$DissolveBlendAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$DissolveBlendAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 388
    :cond_13
    iput-object v1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    :goto_0
    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;->adjust(I)V

    :cond_0
    return-void
.end method
