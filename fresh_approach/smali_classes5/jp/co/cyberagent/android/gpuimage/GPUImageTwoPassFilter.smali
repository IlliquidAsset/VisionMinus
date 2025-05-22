.class public Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassFilter;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;
.source "GPUImageTwoPassFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;-><init>(Ljava/util/List;)V

    .line 23
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {v0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 24
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {p1, p3, p4}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoPassFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    return-void
.end method
