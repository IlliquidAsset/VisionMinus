.class Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;
.super Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HueAdjuster"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster<",
        "Ljp/co/cyberagent/android/gpuimage/GPUImageHueFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;


# direct methods
.method private constructor <init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;)V
    .locals 1

    .line 436
    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;->this$0:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V
    .locals 0

    .line 436
    invoke-direct {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;)V

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 3

    .line 439
    invoke-virtual {p0}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;->getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageHueFilter;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {p0, p1, v1, v2}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;->range(IFF)F

    move-result p1

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageHueFilter;->setHue(F)V

    return-void
.end method
