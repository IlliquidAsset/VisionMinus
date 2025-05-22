.class final Lcom/lewis/edit/utils/GPUImageFilterTools$1;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/utils/GPUImageFilterTools;->showDialog(Landroid/content/Context;Lcom/lewis/edit/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

.field final synthetic val$listener:Lcom/lewis/edit/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;


# direct methods
.method constructor <init>(Lcom/lewis/edit/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;Landroid/content/Context;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$1;->val$listener:Lcom/lewis/edit/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;

    iput-object p2, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$1;->val$filters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 135
    iget-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$1;->val$listener:Lcom/lewis/edit/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;

    iget-object v0, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$1;->val$filters:Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;

    iget-object v1, v1, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->filters:Ljava/util/List;

    .line 136
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;

    invoke-static {v0, p2}, Lcom/lewis/edit/utils/GPUImageFilterTools;->createFilterForType(Landroid/content/Context;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p2

    .line 135
    invoke-interface {p1, p2}, Lcom/lewis/edit/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;->onGpuImageFilterChosenListener(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    return-void
.end method
