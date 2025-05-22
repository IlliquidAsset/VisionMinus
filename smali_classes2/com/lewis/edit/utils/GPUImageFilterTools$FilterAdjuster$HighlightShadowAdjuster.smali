.class Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;
.super Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightShadowAdjuster"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster<",
        "Ljp/co/cyberagent/android/gpuimage/GPUImageHighlightShadowFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;


# direct methods
.method private constructor <init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;)V
    .locals 1

    .line 514
    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;->this$0:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;Lcom/lewis/edit/utils/GPUImageFilterTools$1;)V
    .locals 0

    .line 514
    invoke-direct {p0, p1}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;-><init>(Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster;)V

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 4

    .line 517
    invoke-virtual {p0}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;->getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageHighlightShadowFilter;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v2}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;->range(IFF)F

    move-result v3

    invoke-virtual {v0, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageHighlightShadowFilter;->setShadows(F)V

    .line 518
    invoke-virtual {p0}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;->getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageHighlightShadowFilter;

    invoke-virtual {p0, p1, v1, v2}, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;->range(IFF)F

    move-result p1

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageHighlightShadowFilter;->setHighlights(F)V

    return-void
.end method
