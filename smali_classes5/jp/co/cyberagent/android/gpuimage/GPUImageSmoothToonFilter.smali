.class public Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;
.source "GPUImageSmoothToonFilter.java"


# instance fields
.field blurFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageGaussianBlurFilter;

.field toonFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;-><init>()V

    .line 34
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageGaussianBlurFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageGaussianBlurFilter;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->blurFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageGaussianBlurFilter;

    .line 35
    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 38
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;

    .line 39
    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 41
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->blurFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageGaussianBlurFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x3f000000    # 0.5f

    .line 43
    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->setBlurSize(F)V

    const v0, 0x3e4ccccd    # 0.2f

    .line 44
    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->setThreshold(F)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 45
    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->setQuantizationLevels(F)V

    return-void
.end method


# virtual methods
.method public setBlurSize(F)V
    .locals 1

    .line 60
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->blurFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageGaussianBlurFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageGaussianBlurFilter;->setBlurSize(F)V

    return-void
.end method

.method public setQuantizationLevels(F)V
    .locals 1

    .line 68
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;->setQuantizationLevels(F)V

    return-void
.end method

.method public setTexelHeight(F)V
    .locals 1

    .line 56
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;->setTexelHeight(F)V

    return-void
.end method

.method public setTexelWidth(F)V
    .locals 1

    .line 52
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;->setTexelWidth(F)V

    return-void
.end method

.method public setThreshold(F)V
    .locals 1

    .line 64
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;->setThreshold(F)V

    return-void
.end method
