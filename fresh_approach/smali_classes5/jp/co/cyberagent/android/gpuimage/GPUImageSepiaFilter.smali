.class public Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageColorMatrixFilter;
.source "GPUImageSepiaFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 29
    fill-array-data v0, :array_0

    invoke-direct {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageColorMatrixFilter;-><init>(F[F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3eb7b4a2    # 0.3588f
        0x3f34538f    # 0.7044f
        0x3e0c154d    # 0.1368f
        0x0
        0x3e991687    # 0.299f
        0x3f1645a2    # 0.587f
        0x3de978d5    # 0.114f
        0x0
        0x3e74f0d8    # 0.2392f
        0x3ef06f69    # 0.4696f
        0x3dbac711    # 0.0912f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
