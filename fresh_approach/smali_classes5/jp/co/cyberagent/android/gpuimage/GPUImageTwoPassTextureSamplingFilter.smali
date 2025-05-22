.class public Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassTextureSamplingFilter;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassFilter;
.source "GPUImageTwoPassTextureSamplingFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHorizontalTexelOffsetRatio()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getVerticalTexelOffsetRatio()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected initTexelOffsets()V
    .locals 7

    .line 35
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassTextureSamplingFilter;->getHorizontalTexelOffsetRatio()F

    move-result v0

    .line 36
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassTextureSamplingFilter;->mFilters:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 37
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->getProgram()I

    move-result v2

    const-string v3, "texelWidthOffset"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 38
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->getProgram()I

    move-result v4

    const-string v5, "texelHeightOffset"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    .line 39
    iget v6, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassTextureSamplingFilter;->mOutputWidth:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    invoke-virtual {v1, v2, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->setFloat(IF)V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {v1, v4, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->setFloat(IF)V

    .line 42
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassTextureSamplingFilter;->getVerticalTexelOffsetRatio()F

    move-result v1

    .line 43
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassTextureSamplingFilter;->mFilters:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 44
    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->getProgram()I

    move-result v4

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 45
    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->getProgram()I

    move-result v4

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    .line 46
    invoke-virtual {v2, v3, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->setFloat(IF)V

    .line 47
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassTextureSamplingFilter;->mOutputHeight:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {v2, v4, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->setFloat(IF)V

    return-void
.end method

.method public onInit()V
    .locals 0

    .line 30
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassFilter;->onInit()V

    .line 31
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassTextureSamplingFilter;->initTexelOffsets()V

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassFilter;->onOutputSizeChanged(II)V

    .line 53
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassTextureSamplingFilter;->initTexelOffsets()V

    return-void
.end method
